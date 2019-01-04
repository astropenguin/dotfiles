# Bootstrap installation of fisher
if not functions -q fisher
    set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
    set FISH_FUNC_DIR $XDG_CONFIG_HOME/fish/functions

    echo -n 'Downloading fisher...'
    curl -sLo $FISH_FUNC_DIR/fisher.fish --create-dirs https://git.io/fisher
    echo ' done!'

    fish -c fisher
end
