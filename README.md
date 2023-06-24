# Andrea Severi's resume
- read the [English version](https://github.com/seve-andre/resume/blob/main/severi-andrea-resume-en.pdf)
- read the [Italian version](https://github.com/seve-andre/resume/blob/main/severi-andrea-resume-it.pdf)

## How does `push_to_github.sh` work?
:warning: Make sure `push_to_github.sh` script is running.

It listens to the repo local directory and when resume zip file is downloaded from Overleaf:
1. unzips resume source files
2. moves them to the `src/` folder
3. deletes `.zip` file
4. creates PDF files for both English and Italian versions (from .tex files using [XeLaTeX](https://www.overleaf.com/learn/latex/XeLaTeX))
5. pushes all to [this github repo](https://github.com/seve-andre/resume)
