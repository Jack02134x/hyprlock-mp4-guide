# enter the live wallpaper you want also if you want then you can just enter a pic and it'll work
wallpaper=breathe.mp4   # This is just an example wallpaper

#don't worry about this variable it'll do
current=$(hyprctl activeworkspace -j | jq '.id')
the_static_wallpaper=<your wallpaper path here the image one>

pkill waybar; mpvpaper -vs -o "no-audio loop" eDP-1 $wallpaper & hyprctl dispatch workspace 15 & hyprlock; hyprctl dispatch workspace $current & bash waybar & swww img $the_static_wallpaper & pkill mpvpaper


# let's go through this one by one.

# 1. first part kills waybar but if you use something else kill that.
# 2. second part set the wallpaper through mpvpaper cause i don't know any other thing that support mp4
# 3. going to workspace 15 is a good way to go to an empty workspace if you somehow use 15th workspace then do it like 150 idk
# 4. nothing just executing hyprlock
# 5. now the current variable come in play. it takes your current workspace before it went to 150th workspace and go there
# 6. executing waybar again. if you got some specific waybar config that is somewhere else do waybar -c <config> -s <style> to execute that waybar
# 7. i use swww so i set my old image with swww if you don't wanna use swww change it.
# 8. lastly we kill mpvpaper to see our swww image.


# If you constanly check your wallpaper using waypaper or something you will need to do something. pleaese see readme for instructions