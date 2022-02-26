function recycle
    if test 0 -ne (count (ls ~/.local/share/Trash)) 
        echo "Empyting the trash..."
        set SIZE (du -sh ~/.local/share/Trash)
        rm -rf ~/.local/share/Trash/*
        echo "Removed $SIZE of trash"
    else
        echo "No trash to take out"
    end
end

