# My resume

## How does `push_to_github.sh` work?
:warning: Make sure `push_to_github.sh` script is running.

It listens to the repo local directory and when resume zip file is downloaded from Overleaf:
- unzips resume source files
- moves them to the `src/` folder
- deletes `.zip` file
- creates PDF files for both english and italian versions (from .tex files using [xelatex](https://www.overleaf.com/learn/latex/XeLaTeX))
- pushes all to [github repo](https://github.com/seve-andre/resume)
