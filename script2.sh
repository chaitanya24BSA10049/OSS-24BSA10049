#!/bin/bash
# FOSS Package Inspector (Optimized)

# Take package name as argument
PACKAGE="$1"

# Check if package name is provided
if [ -z "$PACKAGE" ]; then
    echo "Usage: $0 <package-name>"
    exit 1
fi

# Check if package is installed
if rpm -q "$PACKAGE" &>/dev/null; then
    echo "✅ $PACKAGE is installed."
    echo "-----------------------------"
    rpm -qi "$PACKAGE" | grep -E 'Version|License|Summary'
else
    echo "❌ $PACKAGE is NOT installed."
fi

echo "-----------------------------"

# Philosophy notes
case "$PACKAGE" in
    httpd)
        echo "Apache: the web server that built the open internet"
        ;;
    mysql)
        echo "MySQL: open source at the heart of millions of apps"
        ;;
    vlc)
        echo "VLC: freedom to play anything, anywhere"
        ;;
    firefox)
        echo "Firefox: privacy and openness for the web"
        ;;
    git)
        echo "Git: distributed power for developers"
        ;;
    *)
        echo "No philosophy note available for this package."
        ;;
esac
