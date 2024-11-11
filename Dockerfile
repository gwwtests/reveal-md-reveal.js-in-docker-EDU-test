FROM node:16

WORKDIR /presentation

# Install reveal-md
RUN npm install -g reveal-md

# Install necessary plugins
COPY package.json .
RUN npm install

# Copy presentation files
COPY . .

# Command to generate static site
CMD ["reveal-md", "audio-slideshow/slides.md", "--static", "dist", "--assets-dir", "assets"]

