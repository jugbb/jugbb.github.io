# clone repository

    git clone git@github.com:jugbb/jugbb.github.io.git
    cd jugbb.github.io
    git submodule init
    git submodule update

# run locally
- install hugo according to the [Install Hugo](https://gohugo.io/getting-started/installing/) guide
- start the local dev server with `hugo server -DF`
- open your browser at localhost:1313

# create new post for a talk
- run `hugo new blog/2020/title.md --kind talk`

# create new post for a Stammtisch
- run `hugo new blog/2020/title.md --kind stammtisch`
