# enter the live wallpaper you want also if you want then you can just enter a pic and it'll work
wallpaper=breathe.mp4   # This is just an example wallpaper

#don't worry about this variable it'll do
current=$(hyprctl activeworkspace -j | jq '.id')

mpvpaper -vs -o "no-audio loop" --layer overlay eDP-1 $wallpaper & hyprlock; pkill mpvpaper
