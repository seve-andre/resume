# Curriculum vitae/CV/résumé

## How does `push_to_github.sh` work?
It listens to the repo local directory and when CV source zip file is downloaded from Overleaf:
- should unzip source
- move it the `source/` directory
- delete `.zip` file
- create PDF files for both english and italian versions (from .tex files)
- push to [github repo](https://github.com/seve-andre/curriculum-vitae)
- on github repo:
  - github workflows should make a new release
