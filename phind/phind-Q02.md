

https://www.phind.com/search?cache=bvww0tsv9sj6sgjfiycjpe72

<https://www.phind.com/search?cache=bvww0tsv9sj6sgjfiycjpe72>

# Question 2

docker run --rm -v $(pwd):/presentation reveal-static

gw@knot:~/docker/reveal-md-reveal.js$ 
gw@knot:~/docker/reveal-md-reveal.js$ 
gw@knot:~/docker/reveal-md-reveal.js$ 
gw@knot:~/docker/reveal-md-reveal.js$ 
gw@knot:~/docker/reveal-md-reveal.js$ 
gw@knot:~/docker/reveal-md-reveal.js$ 
gw@knot:~/docker/reveal-md-reveal.js$ cat build.sh 
#!/bin/bash

set -x

# Build Docker image
docker build -t reveal-static .

# Run container to generate static content
docker run --rm -v $(pwd):/presentation reveal-static

gw@knot:~/docker/reveal-md-reveal.js$ ./build.sh 
+ docker build -t reveal-static .
[+] Building 0.5s (11/11) FINISHED                                     docker:default
 => [internal] load build definition from Dockerfile                             0.0s
 => => transferring dockerfile: 346B                                             0.0s
 => [internal] load metadata for docker.io/library/node:16                       0.4s
 => [internal] load .dockerignore                                                0.0s
 => => transferring context: 2B                                                  0.0s
 => [1/6] FROM docker.io/library/node:16@sha256:f77a1aef2da8d83e45ec990f45df50f  0.0s
 => [internal] load build context                                                0.1s
 => => transferring context: 5.38MB                                              0.1s
 => CACHED [2/6] WORKDIR /presentation                                           0.0s
 => CACHED [3/6] RUN npm install -g reveal-md                                    0.0s
 => CACHED [4/6] COPY package.json .                                             0.0s
 => CACHED [5/6] RUN npm install                                                 0.0s
 => CACHED [6/6] COPY . .                                                        0.0s
 => exporting to image                                                           0.0s
 => => exporting layers                                                          0.0s
 => => writing image sha256:63a2ed94e53f1728caedb4964abfdb40b55318ea56bb5a2ee69  0.0s
 => => naming to docker.io/library/reveal-static                                 0.0s
++ pwd
+ docker run --rm -v /home/gw-t490/docker/reveal-md-reveal.js:/presentation reveal-static
Puppeteer unavailable, unable to create featured slide image for OpenGraph metadata.
Puppeteer unavailable, unable to generate PDF file.
❏ reveal-md/node_modules/reveal.js/dist → dist/dist
❏ reveal-md/node_modules/reveal.js/plugin → dist/plugin
[Error: ENOENT: no such file or directory, stat '/presentation/slides/slides.md'] {
  errno: -2,
  code: 'ENOENT',
  syscall: 'stat',
  path: '/presentation/slides/slides.md'
}


# Answer 2

docker run --rm -v $(pwd):/presentation reveal-static

gw@knot:~/docker/reveal-md-reveal.js$ 
gw@knot:~/docker/reveal-md-reveal.js$ 
gw@knot:~/docker/reveal-md-reveal.js$ 
gw@knot:~/docker/reveal-md-reveal.js$ 
gw@knot:~/docker/reveal-md-reveal.js$ 
gw@knot:~/docker/reveal-md-reveal.js$ 
gw@knot:~/docker/reveal-md-reveal.js$ cat build.sh 
#!/bin/bash

set -x

# Build Docker image
docker build -t reveal-static .

# Run container to generate static content
docker run --rm -v $(pwd):/presentation reveal-static

gw@knot:~/docker/reveal-md-reveal.js$ ./build.sh 
+ docker build -t reveal-static .
[+] Building 0.5s (11/11) FINISHED                                     docker:default
 => [internal] load build definition from Dockerfile                             0.0s
 => => transferring dockerfile: 346B                                             0.0s
 => [internal] load metadata for docker.io/library/node:16                       0.4s
 => [internal] load .dockerignore                                                0.0s
 => => transferring context: 2B                                                  0.0s
 => [1/6] FROM docker.io/library/node:16@sha256:f77a1aef2da8d83e45ec990f45df50f  0.0s
 => [internal] load build context                                                0.1s
 => => transferring context: 5.38MB                                              0.1s
 => CACHED [2/6] WORKDIR /presentation                                           0.0s
 => CACHED [3/6] RUN npm install -g reveal-md                                    0.0s
 => CACHED [4/6] COPY package.json .                                             0.0s
 => CACHED [5/6] RUN npm install                                                 0.0s
 => CACHED [6/6] COPY . .                                                        0.0s
 => exporting to image                                                           0.0s
 => => exporting layers                                                          0.0s
 => => writing image sha256:63a2ed94e53f1728caedb4964abfdb40b55318ea56bb5a2ee69  0.0s
 => => naming to docker.io/library/reveal-static                                 0.0s
++ pwd
+ docker run --rm -v /home/gw-t490/docker/reveal-md-reveal.js:/presentation reveal-static
Puppeteer unavailable, unable to create featured slide image for OpenGraph metadata.
Puppeteer unavailable, unable to generate PDF file.
❏ reveal-md/node_modules/reveal.js/dist → dist/dist
❏ reveal-md/node_modules/reveal.js/plugin → dist/plugin
[Error: ENOENT: no such file or directory, stat '/presentation/slides/slides.md'] {
  errno: -2,
  code: 'ENOENT',
  syscall: 'stat',
  path: '/presentation/slides/slides.md'
}

