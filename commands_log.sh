#!/bin/bash
set -x

function xcc() { xclip -sel clipboard; }

function gen_build_sh_md_and_aider_v00() {
local QFILE="$1"
if [ -r "$QFILE" ]; then echo "ERROR: FILE $QFILE ALREADY EXISTS!"; exit 1; fi
./phind/gen_markdown_report_question_build.sh | tee "$QFILE" | xcc && vim "$QFILE"|| exit 1
read -p 'Shall we proceed with aider? [yes/y]' answer
if [ "$answer" != "yes" ] && [ "$answer" != "y" ]; then
  exit 1
else
  aider --4o build.sh Dockerfile reveal.json  README.md -f "$QFILE" 
fi
}

# gen_build_sh_md_and_aider_v00 phind/phind-Q03.md
# gen_build_sh_md_and_aider_v00 phind/phind-Q04.md
