set -x
rm -rf _build
jupyter-book build --all .
ghp-import -n -p -f _build/html
