# enter the live wallpaper you want also if you want then you can just enter a pic and it'll work
wallpaper=breathe.mp4   # This is just an example wallpaper

#don't worry about this variable it'll do
current=$(hyprctl activeworkspace -j | jq '.id')
the_static_wallpaper=<your wallpaper path here the image one>

mpvpaper -vs -o "no-audio loop" --layer overlay eDP-1 $wallpaper & hyprctl dispatch workspace 15 & hyprlock; hyprctl dispatch workspace $current & swww img $the_static_wallpaper & pkill mpvpaper


# let's go through this one by one.

# 1. second part set the wallpaper through mpvpaper cause i don't know any other thing that support mp4
# 2. going to workspace 15 is a good way to go to an empty workspace if you somehow use 15th workspace then do it like 150 idk
# 3. nothing just executing hyprlock
# 4. now the current variable come in play. it takes your current workspace before it went to 150th workspace and go there
# 5. i use swww so i set my old image with swww if you don't wanna use swww change it.
# 6. lastly we kill mpvpaper to see our swww image.


# If you constanly check your wallpaper using waypaper or something you will need to do something. pleaese see readme for instructions