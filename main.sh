# warning: will run any executable with a valid path!
validate_path() {
    path_to_executable=$(which $name)
    local valid=0
    if [ -x "$path_to_executable" ] ; then
        valid="1"
    fi
    echo $valid
}

while true ; do
    echo "Enter a browser (or exit to stop execution):"
    read name

    if [ $name = "exit" ] ; then
        echo "Farewell!"
        exit
    fi

    valid=$(validate_path)
    if [ $valid -eq 1 ] ; then
        echo "Running $name..."
        $name "static/index.html" &
        exit
    else
        echo "$name not found"
    fi
done