#!/bin/bash

# Configuration Verification Script for Termux Go Development
# Author: Antigravity

echo "==========================================="
echo "   Termux Go & Nvim Verification System    "
echo "==========================================="

# Check Go
if command -v go >/dev/null 2>&1; then
    echo "✅ Go is installed: $(go version)"
else
    echo "❌ Go is NOT installed. Run: pkg install golang"
fi

# Check gopls
if command -v gopls >/dev/null 2>&1; then
    echo "✅ gopls is found in PATH: $(which gopls)"
    echo "   Version: $(gopls version | head -n 1)"
else
    echo "❌ gopls is NOT found in PATH."
    if [ -f "$HOME/go/bin/gopls" ]; then
        echo "   ⚠️ Found gopls in $HOME/go/bin but not in current PATH."
    else
        echo "   Hint: Run 'go install golang.org/x/tools/gopls@latest'"
    fi
fi

# Check Neovim version
if command -v nvim >/dev/null 2>&1; then
    echo "✅ Neovim is installed: $(nvim --version | head -n 1)"
else
    echo "❌ Neovim is NOT installed."
fi

# Check Compilation Tools (for Treesitter)
echo ""
echo "--- Checking Compilation Tools ---"
if command -v clang >/dev/null 2>&1; then
    echo "✅ clang is installed"
else
    echo "❌ clang is NOT installed. Run: pkg install clang"
fi

if command -v make >/dev/null 2>&1; then
    echo "✅ make is installed"
else
    echo "❌ make is NOT installed. Run: pkg install make"
fi

# Check Config Files
echo ""
echo "--- Checking Config Files ---"
CONFIG_DIR="$HOME/.config/nvim"
if [ -d "$CONFIG_DIR" ]; then
    [ -f "$CONFIG_DIR/lua/plugins/go.lua" ] && echo "✅ lua/plugins/go.lua exists" || echo "⚠️ lua/plugins/go.lua NOT found"
    [ -f "$CONFIG_DIR/lua/plugins/termux.lua" ] && echo "✅ lua/plugins/termux.lua exists" || echo "⚠️ lua/plugins/termux.lua NOT found"
else
    echo "❌ Neovim config directory ($CONFIG_DIR) NOT found."
fi

echo ""
echo "--- Next Steps ---"
echo "1. Start nvim: 'nvim main.go'"
echo "2. Run ':Lazy' to ensure plugins are loaded (press 'I' if needed)."
echo "3. Run ':checkhealth lsp' to verify gopls connection."
echo "4. Type ':LspInfo' to see if gopls is attached to the buffer."

echo "==========================================="
