#!/bin/bash
# listen for .zip files
inotifywait -m . -e close_write -e moved_to |
    while read directory action file; do
        # if the zip file is detected notify
        if [[ "$file" =~ .*zip$ ]]; then
            echo "new zip file added"
            break
        fi
    done
# move zip file to source directory
mv cv.zip source/
cd source/
# unzip the source zip file
jar xvf cv.zip
echo "unzipped"
# delete the zip file
rm -rf cv.zip
# create pdfs for both english and italian versions
xelatex severi-andrea-cv-en.tex
echo "english to pdf done!"
xelatex severi-andrea-cv-it.tex
echo "italian to pdf done!"

# move the pdfs to the root directory
mv *.pdf ../
cd ..
echo "commit message:"
read message

# push to github
git add .
git commit -m "$message"
git push origin main
