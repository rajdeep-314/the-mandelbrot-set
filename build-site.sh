# Install pandoc.
sudo apt-get update && sudo apt-get install -y pandoc


# The directory with the site contents.
mkdir -p _site

# Generate the HTML pages.

# index.html - the home page.
pandoc -s contents/index.md -o _site/index.html --mathjax=https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-mml-chtml.js
# leaderboard.html - contains the leaderboard.
pandoc -s contents/leaderboard.md -o _site/leaderboard.html --mathjax=https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-mml-chtml.js
# latest.md - the latest challenge.
pandoc -s contents/latest.md -o _site/latest.html --mathjax=https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-mml-chtml.js
# archive.md - archive of past questions.
pandoc -s contents/archive.md -o _site/archive.html --mathjax=https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-mml-chtml.js
# mandelbrot-set.png - image of the Mandelbrot Set.
cp contents/mandelbrot-set.png _site/mandelbrot-set.png

