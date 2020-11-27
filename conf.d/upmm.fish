# UpMM - Update My macOS.
# https://github.com/demartini/upmm.fish

if test -z "$UPMM_CMD"
    set -U UPMM_CMD "upmm"
end

if test ! -z $UPMM_CMD
    function $UPMM_CMD --description "Update My macOS"
        __upmm $argv
    end
end

function __upmm_uninstall --on-event upmm_uninstall
    functions --erase $UPMM_CMD
    set --erase UPMM_CMD

    echo -e (set_color --italics cyan)"→ upmm.fish uninstalled."(set_color normal)
end
