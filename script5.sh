#!/bin/bash
# Open Source Manifesto Generator (Optimized)

echo "Answer three questions to generate your manifesto."
echo ""

# Input with validation
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

# Check if any input is empty
if [[ -z "$TOOL" || -z "$FREEDOM" || -z "$BUILD" ]]; then
    echo "❌ All fields are required. Please try again."
    exit 1
fi

DATE=$(date '+%d %B %Y')
USER_NAME=$(whoami)
OUTPUT="manifesto_${USER_NAME}.txt"

# Create manifesto content
{
echo "=============================="
echo "   Open Source Manifesto"
echo "=============================="
echo "Author: $USER_NAME"
echo "Date: $DATE"
echo ""
echo "I believe in the power of open source."
echo "Using tools like $TOOL every day reminds me that collaboration drives innovation."
echo "To me, freedom means $FREEDOM."
echo "I commit to building and sharing $BUILD with the world,"
echo "so that knowledge remains open, accessible, and empowering for everyone."
echo ""
echo "— $USER_NAME"
} > "$OUTPUT"

# Output result
echo ""
echo "✅ Manifesto saved to $OUTPUT"
echo "------------------------------"
cat "$OUTPUT"
