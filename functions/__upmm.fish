# UpMM - Update My macOS.
# https://github.com/demartini/upmm.fish

set -g _upmm_version 1.0.0

function __upmm -d "Update My macOS"
    set option $argv[1]
    switch "$option"
        case '--help'
            _upmm_help

        case '--version'
            echo -e "$UPMM_CMD, version $_upmm_version"

        case '--brew'
            _upmm_brew

        case '--npm'
            _upmm_npm

        case '--yarn'
            _upmm_yarn

        case '--fish'
            _upmm_fish

        case '--gem'
            _upmm_gem

        case '--pip2'
            _upmm_pip2

        case '--pip3'
            _upmm_pip3

        case '--mas'
            _upmm_mas

        case '--macos'
            _upmm_macos

        case ''
            _upmm_all

        case '*'
            echo -e (set_color red)"✗ Unknown option: $option \n"(set_color normal) >&2
            _upmm_help >&2
            return 1
    end
end

function _upmm_help
    echo -e "UpMM - Update My macOS\n"
    echo -e "USAGE"
    echo -e "   $UPMM_CMD [option]\n"
    echo -e "OPTIONS"
    echo -e "   --brew      Updates Homebrew Formulas and Casks."
    echo -e "   --npm       Updates npm global packages."
    echo -e "   --yarn      Updates Yarn global packages."
    echo -e "   --fish      Updates Fish Shell plugins and completions."
    echo -e "   --gem       Updates the installed gems."
    echo -e "   --pip2      Updates Python 2.7.X pips."
    echo -e "   --pip3      Updates Python 3.X pips."
    echo -e "   --mas       Updates Applications in the Mac App Store."
    echo -e "   --macos     Updates the macOS Operating System."
    echo -e "   --version   Show the current version."
    echo -e "   --help      Print this help.\n"
    echo -e "For more information visit → https://git.io/upmm.fish"
end

function _upmm_brew
    if command -s brew >/dev/null
        echo -e (set_color cyan)"→ Updating Brew Formulasand Casks..."(set_color normal)
        brew update
        brew upgrade
        brew cleanup -s
    end
end

function _upmm_npm
    if command -s npm >/dev/null
        echo -e (set_color cyan)"→ Updating npm global packages..."(set_color normal)
        npm update --global
    end
end

function _upmm_yarn
    if command -s yarn >/dev/null
        echo -e (set_color cyan)"→ Updating Yarn global packages..."(set_color normal)
        yarn global upgrade
    end
end

function _upmm_fish
    if type -q fisher
        echo -e (set_color cyan)"→ Updating fisher plugins..."(set_color normal)
        fisher update
    end

    if type -q omf
        echo -e (set_color cyan)"→ Updating Oh My Fish plugins..."(set_color normal)
        omf update
    end

    echo -e (set_color cyan)"→ Updating Fish completions..."(set_color normal)
    fish_update_completions
end

function _upmm_gem
    if command -s gem >/dev/null
        echo -e (set_color cyan)"→ Updating gems..."(set_color normal)
        gem update
        gem cleanup
    end
end

function _upmm_pip2
    if command -s pip2 >/dev/null and if command -s python2 >/dev/null
        echo -e (set_color cyan)"→ Updating Python 2.7.X pips..."(set_color normal)
        python2 -c "import pkg_resources; from subprocess import call; packages = [dist.project_name for dist in pkg_resources.working_set]; call('pip install --upgrade ' + ' '.join(packages), shell=True)"
    end
end

function _upmm_pip3
    if command -s pip3 >/dev/null and if command -s python3 >/dev/null
        echo -e (set_color cyan)"→ Updating Python 3.X pips..."(set_color normal)
        python3 -c "import pkg_resources; from subprocess import call; packages = [dist.project_name for dist in pkg_resources.working_set]; call('pip3 install --upgrade ' + ' '.join(packages), shell=True)"
    end
end

function _upmm_mas
    if command -s mas >/dev/null
        echo -e (set_color cyan)"→ Updating Mac App Store Applications..."(set_color normal)
        mas outdated
        mas upgrade
    end
end

function _upmm_macos
    echo -e (set_color cyan)"→ Updating macOS System..."(set_color normal)
    softwareupdate --install --all
end

function _upmm_all
    _upmm_brew
    _upmm_npm
    _upmm_yarn
    _upmm_fish
    _upmm_gem
    _upmm_pip2
    _upmm_pip3
    _upmm_mas
    _upmm_macos
end
