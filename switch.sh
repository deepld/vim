cd $(dirname $0)

DST=${1-simple}
if [ "$DST" = "simple" ]; then
    echo "switch to simple"
    cd simple
    rm -rf ~/.vimrc
    \cp -rf .vim .vimrc ~

elif [ "$DST" = "spf"* ]; then
    rm -rf ~/.vimrc
    echo "switch to spf13"
    \cp -fR spf13/.*vim* ~

else
    echo "not type - $DST"
fi
rm -rf ~/.vimviews
