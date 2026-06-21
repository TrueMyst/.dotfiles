# -------------------------------
#            Functions
# -------------------------------

# Change the working directory upon exiting Yazi.
function y
    set tmp (mktemp -t "yazi-cwd.XXXXXX")
    yazi $argv --cwd-file="$tmp"

    if set cwd (command cat -- "$tmp");
        and [ -n "$cwd" ];
        and [ "$cwd" != "$PWD" ];
            builtin cd -- "$cwd"
    end
    rm -f -- "$tmp"
end

# Get rid of orphan packages if needed
function orphans
    set orphans (pacman -Qdtq)

    if test (count $orphans) -eq 0
        echo "No orphan packages found."
    else
        sudo pacman -Rns $orphans
    end
end

# Get rid of pacman's lockfile if needed
function rmdb
    set lockfile /var/lib/pacman/db.lck

    if test -e $lockfile
        sudo rm $lockfile && echo "Removed lockfile: $lockfile"
    else
        echo "No pacman lockfile found."
    end
end

# Show the largest files and directories recursively in the current path
function dirsize
    echo -e "Largest files and folders in \e[0;34m$(pwd)\e[0m"
    du -h --max-depth=999 $argv 2>/dev/null | sort -hr | head -25
end
