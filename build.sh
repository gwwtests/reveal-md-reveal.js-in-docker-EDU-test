#!/bin/bash
set -ex

# Check for required directories
mkdir -p assets/audio assets/images slides

# Move audio files if they exist in slides/playback
if [ -d "slides/playback" ]; then
    cp slides/playback/*.ogg assets/audio/ || true
fi

# Move images if they exist
if [ -f "slides/jungle.jpg" ]; then
    cp slides/jungle.jpg assets/images/
fi

# Check for slides.md
if [ ! -f "slides/slides.md" ]; then
    echo "Error: slides/slides.md not found!"
    exit 1
fi

# Download plugins if they don't exist
if [ ! -d "plugin/audio-slideshow" ]; then
    ./download-plugins.sh
fi

# Build Docker image (show last 25 lines)
docker build --progress=plain -t reveal-static . 2>&1 | tail -n 25

# Run container to generate static content
docker run --rm -v $(pwd):/presentation reveal-static slides/slides.md --static dist --assets-dir assets --template template.html

