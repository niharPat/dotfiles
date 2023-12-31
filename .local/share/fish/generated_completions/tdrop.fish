# tdrop
# Autogenerated from man page /usr/share/man/man1/tdrop.1.gz
complete -c tdrop -s w -l width -d 'Specify a width for a created window as a number or percentage'
complete -c tdrop -s h -l height -d 'Specify a height for a created window as a number or percentage'
complete -c tdrop -s x -l x-offset -d 'Specify the x position for a created window as a number or percentage'
complete -c tdrop -s y -l y-offset -d 'Specify the y position for a created window as a number or percentage'
complete -c tdrop -s s -l session -d 'Specify a tmuxinator, tmuxifier, or tmux session name to start'
complete -c tdrop -s n -l number -d 'Specify a number (or any extra text) to differentiate between dropdowns of th…'
complete -c tdrop -s c -l pre-create-hook -d 'Specify a command to execute before first creating or initializing a dropdown…'
complete -c tdrop -s C -l post-create-hook -d 'Specify a command to execute after first creating or initializing a dropdown …'
complete -c tdrop -s p -l pre-map-hook -d 'Specify a command to execute before showing/mapping a dropdown'
complete -c tdrop -s P -l post-map-hook -d 'Specify a command to execute after showing/mapping a dropdown'
complete -c tdrop -s u -l pre-unmap-hook -d 'Specify a command to execute before hiding/unmapping a dropdown'
complete -c tdrop -s U -l post-unmap-hook -d 'Specify a command to execute after hiding/unmapping a dropdown'
complete -c tdrop -s l -l pre-map-float-command -d 'Specify a command execute before showing/mapping a dropdown in order to float…'
complete -c tdrop -s L -l post-map-float-command -d 'Specify a command execute after showing/mapping a dropdown in order to float …'
complete -c tdrop -s d -l decoration-fix -d 'Specify a window decoration/border size in the form <x decoration size>x<y de…'
complete -c tdrop -s S -l no-subtract-when-same -d 'This option is a more complicated companion to -d that is also unlikely to be…'
complete -c tdrop -s i -l is-floating -d 'Specify a command that will determine whether the current window is floating …'
complete -c tdrop -s f -l program-flags -d 'NOTE: Using this flag is deprecated; it may be removed in the future'
complete -c tdrop -s a -l auto-detect-wm -d 'If there are available settings for the detected window manager for the -l, -…'
complete -c tdrop -s m -l monitor-aware -d 'This option only applies for dropdowns (not auto-hiding and auto-showing)'
complete -c tdrop -s t -l pointer-monitor-detection -d 'Use mouse pointer location for detecting which monitor is the current one so …'
complete -c tdrop -s A -l activate -d 'Always activate/show the dropdown if it is not currently focused'
complete -c tdrop -l monitor -d 'Specify the monitor to base geometry calculations on when using -m / --monito…'
complete -c tdrop -l wm -d 'Specify the window manager name (which determines the default settings when -…'
complete -c tdrop -l class -d 'Providing this option lets tdrop know what the class (or classname) of the wi…'
complete -c tdrop -l name -d 'This option only applies for dropdowns (not auto-hiding and auto-showing)'
complete -c tdrop -l clear -d 'Used to clear a saved window id for the given program or \'current\' instead of…'
complete -c tdrop -l no-cancel -d 'Specifies that manually re-showing an auto-hidden window with tdrop should no…'
complete -c tdrop -l timeout -d 'Specifies the timeout in to wait for a window to appear when starting a progr…'
complete -c tdrop -l debug -d 'Print information for debugging to stdout and to /tmp/tdrop_<user>/log'
complete -c tdrop -s r -l remember -d 'Store window geometry when hiding and restore geometry when showing instead o…'
complete -c tdrop -s N -l no-manage -d 'This is shorthand for -x "", -y "", -w "", -h "" and is incompatible with the…'

