#!/bin/bash
set -e

mkdir -p plugin/audio-slideshow

# Download from the correct URLs
curl -L https://raw.githubusercontent.com/rajgoel/reveal.js-plugins/master/audio-slideshow/plugin.js -o plugin/audio-slideshow/plugin.js
curl -L https://raw.githubusercontent.com/rajgoel/reveal.js-plugins/master/audio-slideshow/recorder.js -o plugin/audio-slideshow/recorder.js

# Handle missing style.css gracefully
if ! curl -L https://raw.githubusercontent.com/rajgoel/reveal.js-plugins/master/audio-slideshow/style.css -o plugin/audio-slideshow/style.css; then
    echo "Warning: style.css not found. Skipping download."
fi
