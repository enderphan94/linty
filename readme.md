# Linty tool

aims to check for code linter in Solidity, will check for:
- solhint pattern
- spell
- uint (should be uint256)
- require() (require functions should explain the error message)

# Requirements
The following package should be installed:
- solhint
- cspell-cli

## Solhint

Source: https://github.com/duaraghav8/Ethlint

Ethlint (Formerly Solium) analyzes your Solidity code for style & security issues and fixes them.

#### Installation

```bash
npm install -g ethlint
```

## Spell check

Source: https://github.com/streetsidesoftware/cspell

The cspell mono-repo, a spell checker for code.

#### Installation

```bash
npm install -g git+https://github.com/streetsidesoftware/cspell-cli
```

# Usage
```bash
./linty.sh <filename.sol>
```

!! place the file in /usr/local/bin/ to make it as a global command
# Sample

<img src="https://github.com/enderphan94/linty/blob/main/sample.png" width="65%" height="65%">
