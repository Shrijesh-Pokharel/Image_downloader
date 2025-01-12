#!/bin/bash

if [ -z "$1" ]; then
    echo "Usage: $0 <image_url> [output_filename]"
    exit 1
fi

IMAGE_URL="$1"
OUTPUT_FILE="${2:-$(basename "$IMAGE_URL")}"

if command -v curl > /dev/null; then
    curl -o "$OUTPUT_FILE" "$IMAGE_URL"
elif command -v wget > /dev/null; then
    wget -O "$OUTPUT_FILE" "$IMAGE_URL"
else
    echo "Neither curl nor wget is installed. Please install one of them to use this script."
    exit 1
fi

echo "Image downloaded and saved as $OUTPUT_FILE"
