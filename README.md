
## Objective: Compile reveal-md in docker with audio-slideshow plugin

Trying to make this script so builds a ready to be statically hosted set of files
with `bash build.sh`.

Trying to compile audio-slideshow demo into files that can be statically served:

* https://rajgoel.github.io/reveal.js-demos/?topic=audio-slideshow
* https://github.com/rajgoel/reveal.js-demos/blob/master/audio-slideshow/

using :

* https://github.com/hakimel/reveal.js
* https://github.com/webpro/reveal-md
* https://github.com/rajgoel/reveal.js-plugins
* https://github.com/rajgoel/reveal.js-plugins/tree/master/audio-slideshow


## Methodology

In the process we are examinind capabilities of  

https://www.phind.com/search?cache=bvww0tsv9sj6sgjfiycjpe72

in debugggin issue, logged in that very thread and using  `bash commands_log.sh`.

One can observe debugging/troubleshooting/investigative setups in 

* `phind`

folder, each file is each step, of generated output by `build.sh` and answer by `phind.com` pro with sonnet-3.5.

## Testing

To try it locally on <http://127.0.0.1:4238> , you can use:

```
python3 -m http.server 4238 --directory dist
```

or the same in:

```
host_dist_on_port_4238.sh
```

You may want to ensure that produced assets by docker have right permissions for your user:

```
sudo chown -Rv $USER:$(id -gn) .
```

