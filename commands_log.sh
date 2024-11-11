#!/bin/bash
set -x

#./phind/gen_markdown_report_question_build.sh | tee phind/phind-Q03.md | xcc ; vim phind/phind-Q03.md
aider --4o build.sh Dockerfile reveal.json  README.md -f phind/phind-Q03.md 
