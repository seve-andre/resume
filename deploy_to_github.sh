#!/bin/bash
inotifywait -m . -e close_write -e moved_to |
    while read directory action file; do
        if [[ "$file" =~ .*zip$ ]]; then # Does the file end with .zip?
            echo "new zip file added"
            break
        fi
    done
mv cv.zip source/
cd source/
jar xvf cv.zip
echo "unzipped"
rm -rf cv.zip
xelatex severi-andrea-cv-en.tex
echo "english to pdf done!"
xelatex severi-andrea-cv-it.tex
echo "italian to pdf done!"
mv *.pdf ../
# echo "commit message:"
# read message
# git add .
# git commit -m "$message"
# git push origin main
