#!/usr/bin/env bash

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

SVG_SOURCE="${SCRIPT_DIR}/../logo/logo-jug-2026.svg"
CSV_FILE="${SCRIPT_DIR}/../logo/favicon-formats.csv"
OUTPUT_DIR="${SCRIPT_DIR}/../static/"
PARTIAL_FILE="${SCRIPT_DIR}/../themes/jug/layouts/_partials/favicons.html"

if [[ ! -f "$SVG_SOURCE" ]]; then
    echo "Fehler: SVG-Datei '$SVG_SOURCE' nicht gefunden." >&2
    exit 1
fi

if [[ ! -f "$CSV_FILE" ]]; then
    echo "Fehler: CSV-Datei '$CSV_FILE' nicht gefunden." >&2
    exit 1
fi

# Prüfe, ob die benötigten Tools installiert sind
for cmd in rsvg-convert convert; do
    if ! command -v "$cmd" &>/dev/null; then
        echo "Fehler: '$cmd' ist nicht installiert." >&2
        exit 1
    fi
done

mkdir -p "$OUTPUT_DIR"

# HTML-Partial für <head> initialisieren
html_lines=()

line_nr=0
while IFS=',' read -r format size filename; do
    line_nr=$((line_nr + 1))

    # Kopfzeile überspringen
    [[ "$line_nr" -eq 1 ]] && continue

    # Leerzeilen überspringen
    [[ -z "$format" ]] && continue

    # Whitespace trimmen
    format="$(echo "$format" | xargs)"
    size="$(echo "$size" | xargs)"
    filename="$(echo "$filename" | xargs)"

    output_path="$OUTPUT_DIR/$filename"

    case "$format" in
        svg)
            echo "SVG  → $output_path"
            cp "$SVG_SOURCE" "$output_path"
            html_lines+=("<link rel=\"icon\" href=\"/$filename\" type=\"image/svg+xml\">")
            ;;
        png)
            if [[ -z "$size" ]]; then
                echo "Fehler: Zeile $line_nr – PNG benötigt eine Größe." >&2
                continue
            fi
            echo "PNG  → $output_path (${size}x${size})"
            rsvg-convert -w "$size" -h "$size" "$SVG_SOURCE" -o "$output_path"

            # apple-touch-icon bekommt ein eigenes rel-Attribut
            if [[ "$filename" == apple-touch-icon* ]]; then
                html_lines+=("<link rel=\"apple-touch-icon\" href=\"/$filename\" sizes=\"${size}x${size}\">")
            else
                html_lines+=("<link rel=\"icon\" href=\"/$filename\" sizes=\"${size}x${size}\" type=\"image/png\">")
            fi
            ;;
        ico)
            if [[ -z "$size" ]]; then
                echo "Fehler: Zeile $line_nr – ICO benötigt eine Größe." >&2
                continue
            fi
            echo "ICO  → $output_path (${size}x${size}, enthält 16/32/48)"
            ico_sizes=(16 32 48)
            tmp_pngs=()
            for s in "${ico_sizes[@]}"; do
                tmp="$(mktemp /tmp/favicon-${s}.XXXXXX.png)"
                rsvg-convert -w "$s" -h "$s" "$SVG_SOURCE" -o "$tmp"
                tmp_pngs+=("$tmp")
            done
            convert "${tmp_pngs[@]}" "$output_path"
            rm -f "${tmp_pngs[@]}"
            html_lines+=("<link rel=\"icon\" href=\"/$filename\" sizes=\"${size}x${size}\">")
            ;;
        *)
            echo "Warnung: Unbekanntes Format '$format' in Zeile $line_nr – übersprungen." >&2
            ;;
    esac
done < "$CSV_FILE"

# HTML-Partial schreiben
{
    echo "{{/* Automatisch generiert durch bin/generate-favicons.sh – nicht manuell bearbeiten */}}"
    for line in "${html_lines[@]}"; do
        echo "$line"
    done
} > "$PARTIAL_FILE"

echo ""
echo "Fertig. Alle Favicons liegen in: $OUTPUT_DIR/"
ls -la "$OUTPUT_DIR"/favicon* "$OUTPUT_DIR"/apple-* "$OUTPUT_DIR"/android-* 2>/dev/null || true
echo ""
echo "HTML-Partial geschrieben: $PARTIAL_FILE"
