# warning: will run any executable with a valid path!
validate_path() {
    path_to_executable=$(which $browser)
    local valid=0
    if [ -x "$path_to_executable" ] ; then
        valid="1"
    fi
    echo $valid
}

echo "Enter a browser (opera/firefox):"
read browser

valid=$(validate_path)
if [ $valid -eq 1 ] ; then
    echo "Running $browser..."
    $browser "server/index.html"
else
    echo "$browser not found"
fi