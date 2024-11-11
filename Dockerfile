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

# Install reveal-md and Puppeteer
RUN npm install -g reveal-md
RUN npm install puppeteer

# Install necessary plugins
COPY package.json .
RUN npm install

# Copy presentation files
COPY . .

# Command to generate static site
CMD ["reveal-md", "audio-slideshow/slides.md", "--static", "dist", "--assets-dir", "assets"]

