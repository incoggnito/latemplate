echo "Don't worry, if it takes some time (up to 5 min) for compiling."
echo "The output file is stored in the folder output."
pandoc main.md --template=templates/eisvogel.tex \
--listings --pdf-engine=xelatex --metadata-file=metadata.yml \
--citeproc -o output/out.pdf #TODO Add Datum oder Counter
read  -n 1 -p "Press any key to close this window."