<div align="center">
  <br>
  <img src="./.github/assets/logo.svg" alt="Logo" width="200">
  <br><br>

  <h1>upmm.fish</h1>
  <h4>Update My macOS</h4>
  <br>

[![gitter badge][]][gitter] [![releases badge][]][releases] [![fish version badge][]][fish shell] [![license badge][]][license]
</div>

**Table of Contents**
- [Why](#why)
- [Features](#features)
- [Installation](#installation)
  - [Dependencies](#dependencies)
- [Usage](#usage)
- [Customization](#customization)
  - [Using custom command](#using-custom-command)
- [Contributing](#contributing)
- [Changelog](#changelog)
- [Inspiration](#inspiration)
- [License](#license)

## Why

Update My macOS is a plugin for [Fish Shell][] that helps you update software via Terminal on macOS.

## Features

* Updates
  * Homebrew Formulas & Casks
  * Node Package Manager
  * Yarn
  * Fish Shell
    * Completions
    * fisher plugins
    * Oh My Fish plugins
  * RubyGems
  * Python 2.7 & 3
  * Mac App Store Applications
  * macOS Operating System
* Tab completions
* 100% pure Fish

Want more features? Please open an [issue][] or send a [pull request][]!

## Installation

Install with [Fisher][] (recommended):

```fish
fisher install demartini/upmm.fish
```

### Dependencies

Missing commands are not updated, but you might want to install [mas][] to update applications from Mac App Store.

```fish
brew install mas
```

## Usage

Call `upmm` in your terminal with an `option`:

```fish
$ upmm [<option>]
```

![demo][]

| **Option**       | **Description**                             |
| ---------------- | ------------------------------------------- |
| `upmm`           | Updates everything.                         |
| `upmm --brew`    | Updates Homebrew Formulas and Casks.        |
| `upmm --npm`     | Updates npm global packages.                |
| `upmm --yarn`    | Updates Yarn global packages.               |
| `upmm --fish`    | Updates Fish Shell plugins and completions. |
| `upmm --gem`     | Updates the installed gems.                 |
| `upmm --pip2`    | Updates Python 2.7.X pips.                  |
| `upmm --pip3`    | Updates Python 3.X pips.                    |
| `upmm --mas`     | Updates Applications in the Mac App Store.  |
| `upmm --macos`   | Updates the macOS Operating System.         |
| `upmm --version` | Show the current version.                   |
| `upmm --help`    | Print help.                                 |

## Customization

### Using custom command

If you would like to customize `upmm` default command, then set your own `UPMM_CMD` universal variable. For example:

```fish
set --universal --export UPMM_CMD up
```

Alternatively, you can add the following line to your `~/.config/fish/config.fish`:

```fish
set --export UPMM_CMD up
```

## Contributing

If you are interested in helping contribute, please take a look at our [contribution guidelines][] and open an [issue][] or [pull request][].

## Changelog

See [CHANGELOG][] for a human-readable history of changes.

## Inspiration

* Inspired by the article [Keeping macOS clean][]
* [MacOS-All-In-One-Update-Script][] by [andmpel][]

## License

Distributed under the MIT License. See [LICENSE][] for more information.

[andmpel]: https://github.com/andmpel
[changelog]: CHANGELOG.md
[contribution guidelines]: CONTRIBUTING.md
[demo]: .github/assets/demo.svg
[fish shell]: https://fishshell.com
[fish version badge]: https://img.shields.io/badge/fish-3.1.2%2B-53AF47?colorA=252525&style=for-the-badge
[fisher]: https://github.com/jorgebucaran/fisher
[gitter badge]: https://img.shields.io/gitter/room/demartini/upmm.fish?colorA=252525&colorB=53AF47&logo=gitter&style=for-the-badge
[gitter]: https://gitter.im/demartini/upmm.fish?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge
[issue]: https://github.com/demartini/upmm.fish/issues
[Keeping macOS clean]: https://medium.com/@waxzce/keeping-macos-clean-this-is-my-osx-brew-update-cli-command-6c8f12dc1731
[license badge]: https://img.shields.io/github/license/demartini/upmm.fish?colorA=252525&colorB=53AF47&style=for-the-badge
[license]: LICENSE
[MacOS-All-In-One-Update-Script]: https://github.com/andmpel/MacOS-All-In-One-Update-Script
[mas]: https://github.com/mas-cli/mas
[pull request]: https://github.com/demartini/upmm.fish/pulls
[releases badge]: https://img.shields.io/github/v/release/demartini/upmm.fish?colorA=252525&colorB=53AF47&label=Version&style=for-the-badge
[releases]: https://github.com/demartini/upmm.fish/releases
