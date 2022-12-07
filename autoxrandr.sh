cachedir="$HOME/.cache/autoxrandr"
mkdir $cachedir
xrandr | grep -oP '.*(?= connected .*)' > $cachedir/connectedMonitorsNames.txt
xrandr | grep -oP '[0-9]+x[0-9].*(?= +[0-9]*\..*\+)' > $cachedir/connectedMonitorsMaxRes.txt
sed -iP 's/[0-9]*\..*//g' $cachedir/connectedMonitorsMaxRes.txt

posx=0
script="xrandr "
for ((i = 1 ; i < $(wc -l < $cachedir/connectedMonitorsNames.txt)+1 ; i++)); do
    name=$(head -n $i $cachedir/connectedMonitorsNames.txt | tail -n +$i)
    res=$(head -n $i $cachedir/connectedMonitorsMaxRes.txt | tail -n +$i)
    script=$script"--output $name --mode $res --pos ${posx}x0 "
    posx=$((posx+$(echo $res | grep -oP ".*(?=x)")))
done
rm -rf $cachedir
$script
