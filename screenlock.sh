# enter the live wallpaper you want also if you want then you can just enter a pic and it'll work
wallpaper=breathe.mp4   # This is just an example wallpaper

#don't worry about this variable it'll do
current=$(hyprctl activeworkspace -j | jq '.id')

mpvpaper -vs -o "no-audio loop" --layer overlay eDP-1 $wallpaper & hyprctl dispatch workspace 15 & hyprlock; hyprctl dispatch workspace $current & pkill mpvpaper


# let's go through this one by one.

# 1. first part set the wallpaper through mpvpaper cause i don't know any other thing that support mp4
# 2. going to workspace 15 is a good way to go to an empty workspace if you somehow use 15th workspace then do it like 150 idk
# 3. nothing just executing hyprlock
# 4. now the current variable come in play. it takes your current workspace before it went to 150th workspace and go there
# 5. lastly we kill mpvpaper to see our swww image.
