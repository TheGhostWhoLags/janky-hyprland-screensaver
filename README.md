# janky-hyprland-screensaver
A hyprland specific version of my janky-wayland-screensaver.  Refer to that for more detailed comments in the script files.

Rather than using an application to act as the screensaver it switches to the empty workspace 9. Displaying a slideshow of images by regularly updating hyprpaper.  Hyprpaper is updated every sleep time interval in wallpaper.sh, started as a child process of workspace.sh and killed when workspace.sh exits.  After input is detected, workspace.sh switches back to workspace 1 before exiting.

You will need to update the script files paths and monitor settings to your environment.
