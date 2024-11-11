#!/bin/bash
set -x

function xcc() { xclip -sel clipboard; }

function gen_build_sh_md_and_aider_v01() {
local QFILE="$1"
shift 1
for f in "$@" ; do
  if [ ! -r "$f" ]; then
    echo "ERROR:FILE_NOT_READABLE:$f"
    exit 1
  fi
done
if [ -r "$QFILE" ]; then echo "ERROR: FILE $QFILE ALREADY EXISTS!"; exit 1; fi
./phind/gen_markdown_report_question_build.sh | tee "$QFILE" | xcc && vim "$QFILE"|| exit 1
git add "$QFILE" ; git commit -m "+= $QFILE"
read -p 'Shall we proceed with aider? [yes/y]' answer
if [ "$answer" != "yes" ] && [ "$answer" != "y" ]; then
  exit 1
else
  aider --4o -f "$QFILE" "$@"
fi
}

function gen_build_sh_md_and_aider_v00() {
local QFILE="$1"
shift 1
gen_build_sh_md_and_aider_v01 "$QFILE" build.sh Dockerfile reveal.json  README.md "$@"
}

# gen_build_sh_md_and_aider_v00 phind/phind-Q03.md
# gen_build_sh_md_and_aider_v00 phind/phind-Q04.md
# gen_build_sh_md_and_aider_v00 phind/phind-Q05.md
# gen_build_sh_md_and_aider_v00 phind/phind-Q06.md
# gen_build_sh_md_and_aider_v01 phind/phind-Q07.md build.sh Dockerfile reveal.json README.md slides/slides.md template.html audio-slideshow/slides.md
# gen_build_sh_md_and_aider_v01 phind/phind-Q08.md build.sh Dockerfile reveal.json README.md slides/slides.md template.html audio-slideshow/slides.md
#gen_build_sh_md_and_aider_v01 phind/phind-Q09.md build.sh Dockerfile reveal.json README.md slides/slides.md template.html audio-slideshow/slides.md package.json
#gen_build_sh_md_and_aider_v01 phind/phind-Q10.md build.sh Dockerfile reveal.json README.md slides/slides.md template.html audio-slideshow/slides.md package.json reveal-md.json
#gen_build_sh_md_and_aider_v01 phind/phind-Q11.md build.sh Dockerfile reveal.json README.md slides/slides.md template.html audio-slideshow/slides.md package.json reveal-md.json download-plugins.sh
#gen_build_sh_md_and_aider_v01 phind/phind-Q12.md build.sh Dockerfile reveal.json README.md slides/slides.md template.html audio-slideshow/slides.md package.json reveal-md.json download-plugins.sh
#gen_build_sh_md_and_aider_v01 phind/phind-Q13.md build.sh Dockerfile reveal.json README.md slides/slides.md template.html audio-slideshow/slides.md package.json reveal-md.json download-plugins.sh dist/*.html
gen_build_sh_md_and_aider_v01 phind/phind-Q14.md build.sh Dockerfile reveal.json README.md slides/slides.md template.html audio-slideshow/slides.md package.json reveal-md.json download-plugins.sh dist/*.html
