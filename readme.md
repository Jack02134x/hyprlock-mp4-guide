# mpvlock-wallpaper-hack

This repo shows a way to play a video wallpaper inside **Hyprlock** using `mpvpaper`.  
It's not an official feature—just a neat trick using how Hyprlock behaves when no background is set.

## 📋 How It Works

If you remove the background completely in Hyprlock and go to an empty workspace (like `15`),  
then run a video using `mpvpaper` with overlay the video appears inside the Hyprlock screen.

Yes—it looks cool, and it works.

## 🔧 How to Set It Up

1. Clone this repo.
2. Check the config files (`hyprlock.conf`, script, etc.).
3. **Don’t just copy-paste**—you need to edit the file paths in them.
4. Example wallpaper video and static image are included.

Make sure to test it in an empty workspace to avoid interference with other windows.

## 🌈 Bonus Tip for Waypaper/Swww Users

If you change wallpapers often using **Waypaper**, here’s how to make it work with this trick:

1. Go to your Waypaper config.
2. In the `post_command`, add this line:

   cp $wallpaper ~/.config/waypaper/wall
