#!/bin/sh
set -e
mkdir -p "$HOME/.local/bin"
ln -sf "$(cd "$(dirname "$0")" && pwd)/attocode" "$HOME/.local/bin/attocode"
echo "installed ~/.local/bin/attocode"
case ":$PATH:" in
  *":$HOME/.local/bin:"*) ;;
  *) echo 'note: ~/.local/bin is not on your PATH — add: export PATH="$HOME/.local/bin:$PATH"' ;;
esac
