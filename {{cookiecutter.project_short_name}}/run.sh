echo "Don't worry, if it takes some time (up to 5 min) for compiling."
echo "The output file is stored in the folder output."
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
pandoc --template=ressources/templates/eisvogelEigeneTitelseite.tex \
--listings --pdf-engine=xelatex --pdf-engine-opt=--shell-escape --metadata-file=metadata.yml \
--filter=pandoc-citeproc --filter=pandoc-svg.py --toc --top-level-division=chapter -o output/out.pdf main.md
else
pandoc --template=ressources/templates/eisvogelEigeneTitelseite.tex \
--listings --pdf-engine=xelatex --pdf-engine-opt=--shell-escape --metadata-file=metadata.yml \
--citeproc --filter=pandoc-svg.py --toc --top-level-division=chapter -o output/out.pdf main.md
fi
echo "Successfully Build the pdf!"
read  -n 1 -p "Press any key to close this window."
