set $mod Mod1
font pango:Operator Mono 12

floating_modifier $mod

bindsym $mod+Return exec --no-startup-id kitty

bindsym $mod+Shift+q kill

bindsym $mod+d exec --no-startup-id dmenu_run

bindsym $mod+j focus left
bindsym $mod+k focus down
bindsym $mod+l focus up
bindsym $mod+semicolon focus right

bindsym $mod+Left focus left
bindsym $mod+Down focus down
bindsym $mod+Up focus up
bindsym $mod+Right focus right

bindsym $mod+Shift+j move left
bindsym $mod+Shift+k move down
bindsym $mod+Shift+l move up
bindsym $mod+Shift+semicolon move right

bindsym $mod+Shift+Left move left
bindsym $mod+Shift+Down move down
bindsym $mod+Shift+Up move up
bindsym $mod+Shift+Right move right

bindsym $mod+f fullscreen toggle
bindsym $mod+e layout toggle split

bindsym $mod+1 workspace 1
bindsym $mod+2 workspace 2
bindsym $mod+3 workspace 3
bindsym $mod+4 workspace 4
bindsym $mod+5 workspace 5
bindsym $mod+6 workspace 6
bindsym $mod+7 workspace 7
bindsym $mod+8 workspace 8
bindsym $mod+9 workspace 9
bindsym $mod+0 workspace 10

bindsym $mod+Shift+1 move container to workspace 1
bindsym $mod+Shift+2 move container to workspace 2
bindsym $mod+Shift+3 move container to workspace 3
bindsym $mod+Shift+4 move container to workspace 4
bindsym $mod+Shift+5 move container to workspace 5
bindsym $mod+Shift+6 move container to workspace 6
bindsym $mod+Shift+7 move container to workspace 7
bindsym $mod+Shift+8 move container to workspace 8
bindsym $mod+Shift+9 move container to workspace 9
bindsym $mod+Shift+0 move container to workspace 10

bindsym $mod+Ctrl+Right resize shrink width 1 px or 1 ppt
bindsym $mod+Ctrl+Up resize grow height 1 px or 1 ppt
bindsym $mod+Ctrl+Down resize shrink height 1 px or 1 ppt
bindsym $mod+Ctrl+Left resize grow width 1 px or 1 ppt

bindsym $mod+Shift+c reload
bindsym $mod+Shift+r restart
bindsym $mod+Shift+e exec --no-startup-id "i3-nagbar -t warning -m 'You pressed the exit shortcut. Do you really want to exit i3? This will end your X session.' -b 'Yes, exit i3' 'i3-msg exit'"

bar {
    position top
    i3bar_command i3bar
    status_command i3status
    colors {
        background #282c34
    }
}

for_window [class="^.*"] border pixel 0

exec --no-startup-id compton --config ~/.cfg/compton.conf
exec --no-startup-id feh --bg-scale '/home/ramon/.cfg/wp.jpg'
exec --no-startup-id dunst

for_window [class="scratch-terminal"] move window to scratchpad, scratchpad show, move position 50px 0px, resize set 1200 400, border pixel 3
bindsym $mod+p exec kitty --class=scratch-terminal -e python3
bindsym --release Delete exec --no-startup-id "flameshot gui"

bindsym $mod+Shift+p exec --no-startup-id xrandr --output DP-0 --primary --mode 1920x1080 --primary --rotate normal --output HDMI-1 --mode 1280x720 --left-of HDMI-1 --noprimary
bindsym $mod+Shift+o exec --no-startup-id xrandr --output DP-0 --primary --mode 1920x1080 --primary --rotate normal --output HDMI-1 --off
bindsym $mod+Shift+f exec --no-startup-id xrandr --output DP-0 --primary --mode 3840x1080 --primary --rotate normal --output HDMI-1 --mode 1280x720 --left-of HDMI-1 --noprimary
bindsym $mod+Shift+d exec --no-startup-id xrandr --output DP-0 --primary --mode 3840x1080 --primary --rotate normal --output HDMI-1 --off

bindsym $mod+Ctrl+i exec --no-startup-id setxkbmap -layout us -variant altgr-intl -option nodeadkeys
bindsym $mod+Ctrl+p exec --no-startup-id setxkbmap -model abnt2 -layout br -variant abnt2
