echo "Don't worry, if it takes some time (up to 5 min) for compiling."
echo "The output file is stored in the folder output."
pandoc --template=ressources/templates/eisvogelEigeneTitelseite.tex \
--listings --pdf-engine=xelatex --pdf-engine-opt=--shell-escape --metadata-file=metadata.yml \
--citeproc -o output/out.pdf src/?_??-*.md
echo "Successfully Build the pdf!"
read  -n 1 -p "Press any key to close this window."
