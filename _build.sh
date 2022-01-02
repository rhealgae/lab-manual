#!/bin/sh

set -ev

Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::gitbook')"
Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::pdf_book')"
Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::epub_book')"
RScript -e "rmarkdown::render('_README.Rmd', output_format = 'github_document',
                  output_file = paste('README.md'))"

# Remove the HTML file produced by a preview
rm -r README.html

# Remove the nul file produced with PDF creation
rm -r nul
