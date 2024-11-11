#!/bin/bash
set -ex

# Check for required directories
mkdir -p assets/audio assets/images slides

# Check for audio files
if [ ! -d "assets/audio" ] || [ -z "$(ls -A assets/audio)" ]; then
    echo "Warning: No audio files found in assets/audio/"
    echo "Creating test audio file..."
    if command -v ffmpeg >/dev/null 2>&1; then
        ffmpeg -f lavfi -i "sine=frequency=1000:duration=1" assets/audio/test.ogg
    else
        echo "FFmpeg not found. Please add audio files manually to assets/audio/"
    fi
fi

# Check for slides.md
if [ ! -f "slides/slides.md" ]; then
    echo "Error: slides/slides.md not found!"
    exit 1
fi

# Build Docker image (show last 25 lines)
docker build --progress=plain -t reveal-static . 2>&1 | tail -n 25

# Run container to generate static content
docker run --rm -v $(pwd):/presentation reveal-static --template template.html

