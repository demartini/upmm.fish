# UpMM - Update My macOS.
# https://github.com/demartini/upmm.fish

complete --no-files --command $UPMM_CMD --description "Update My macOS"
complete --no-files --command $UPMM_CMD --long-option brew --description "Updates Homebrew Formulas and Casks."
complete --no-files --command $UPMM_CMD --long-option npm --description "Updates npm global packages."
complete --no-files --command $UPMM_CMD --long-option yarn --description "Updates Yarn global packages."
complete --no-files --command $UPMM_CMD --long-option fish --description "Updates Fish Shell plugins and completions."
complete --no-files --command $UPMM_CMD --long-option gem --description "Updates the installed gems."
complete --no-files --command $UPMM_CMD --long-option pip2 --description "Updates Python 2.7.X pips."
complete --no-files --command $UPMM_CMD --long-option pip3 --description "Updates Python 3.X pips."
complete --no-files --command $UPMM_CMD --long-option mas --description "Updates Applications in the Mac App Store."
complete --no-files --command $UPMM_CMD --long-option macos --description "Updates the macOS Operating System."
complete --no-files --command $UPMM_CMD --long-option version --description "Show the current version."
complete --no-files --command $UPMM_CMD --long-option help --description "Print help."
