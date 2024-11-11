
Following 

https://www.phind.com/search?cache=bvww0tsv9sj6sgjfiycjpe72

with `bash commands_log.sh` !

Trying to compile audio-slideshow demo:

* https://rajgoel.github.io/reveal.js-demos/?topic=audio-slideshow
* https://github.com/rajgoel/reveal.js-demos/blob/master/audio-slideshow/

using :

* https://github.com/hakimel/reveal.js
* https://github.com/webpro/reveal-md
* https://github.com/rajgoel/reveal.js-plugins
* https://github.com/rajgoel/reveal.js-plugins/tree/master/audio-slideshow

To try it locally on <http://127.0.0.1:4238> , you can use:

```
host_dist_on_port_4238.sh
```

You may want to ensure that produced assets by docker have right permissions for your user:

```
sudo chown -Rv $USER:$(id -gn) .
```
