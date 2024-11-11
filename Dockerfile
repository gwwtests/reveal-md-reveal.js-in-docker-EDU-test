FROM node:16

# Add Chrome dependencies for Puppeteer
RUN apt-get update && apt-get install -y \
    chromium \
    libgbm1 \
    libasound2 \
    fonts-liberation \
    libappindicator3-1 \
    xdg-utils \
    --no-install-recommends

WORKDIR /presentation

# Set Puppeteer environment variables
ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true
ENV PUPPETEER_EXECUTABLE_PATH=/usr/bin/chromium

# Install reveal-md and Puppeteer
RUN npm install -g reveal-md
RUN npm install puppeteer

# Create plugin directory and download audio-slideshow plugin
RUN mkdir -p plugin/audio-slideshow && \
    cd plugin/audio-slideshow && \
    curl \
    && ./download-plugins.sh

# Copy configuration files
COPY package.json reveal-md.json reveal.json template.html ./

# Install dependencies
RUN npm install

# Copy the rest of the files
COPY . .

# Command to generate static site with template
CMD ["reveal-md", "audio-slideshow/slides.md", "--static", "dist", "--assets-dir", "assets", "--template", "template.html"]

