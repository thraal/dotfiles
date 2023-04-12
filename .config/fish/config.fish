if status is-interactive
    # Commands to run in interactive sessions can go here
end
function fish_greeting
    screenfetch -n -d '-host;-pkgs;-res;-de;-wm;-wmtheme;-gtk;-disk'
end
alias ls "exa"
alias la "exa -la"
alias ll "exa -ll"
alias config "/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME"
starship init fish | source
