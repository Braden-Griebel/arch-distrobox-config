if status is-interactive
    # Commands to run in interactive sessions can go here
    # Abbreviations
    abbr --add -- abox 'distrobox enter archbox -- fish'
    abbr --add -- cb 'cmake -G "Ninja" -B build -S .'
    abbr --add -- cbb 'cmake --build ./build'
    abbr --add -- cbt 'cmake -G "Ninja" -B build -S . -DBUILD_TESTING=ON'
    abbr --add -- ct 'ctest --test-dir build --output-on-failure'
    abbr --add -- cv csvlens
    abbr --add -- la 'eza -la --group-directories-first --icons=auto'
    abbr --add -- ls 'eza --group-directories-first --icons=auto'
    abbr --add -- lt 'eza -T --group-directories-first --icons=auto'
    abbr --add -- nxbuild 'sudo nixos-rebuild build --flake ~/.dotfiles'
    abbr --add -- nxclean 'sudo nix-collect-garbage --delete-older-than 5d'
    abbr --add -- nxswitch 'sudo nixos-rebuild switch --flake ~/.dotfiles'
    abbr --add -- vv 'source ./.venv/bin/activate.fish'
    abbr --add -- zb 'zig build'
    abbr --add -- zd 'zig build debug'
    abbr --add -- zt 'zig build test --summary all'

    # Aliases
    alias la 'eza -a'
    alias ll 'eza -l'
    alias lla 'eza -la'
    alias ls eza
    alias lt 'eza --tree'

    # Setup zoxide with the 
    zoxide init fish --cmd cd  | source
end

