# rmd2md

This R package allows you to more easily convert Rmarkdown (`.Rmd`) files to markdown (`.md`) acceptable for use with jekyll and by extension github pages.

There is one principle function `rmd2md()` that has the following arguments:

|Argument|Description|
|---|---|
|path_site|The base directory of the project. If none specified, this defaults to `getwd()`|
|dir_rmd|The directory within the base directory in which the `.Rmd` files are stored. Defaults to `_rmd`.|
|dir_md|The directory within the base directory to which the `.md` files are written. Defaults to `_md`.|
|url_images|The directory into which the resulting figures should be stored. This defaults to `_figures/`.|
|out_ext|Extention to be used for the files which are produced. Defaults to `.md`.|
|in_ext|Extension of input files found within `dir_rmd`. Defaults to `.Rmd`|

## Installing the package

The package can be installed with the `devtools` package with `devtools::install_github('ivyleavedtoadflax/rmd2md')`.

If you cannot use this function (due to firewalls for instance) you can download the package as a `.zip` file from the main repository page, and run `devtools::install_local('path_to_zip_file')`.

## Using rmd2md()

### From the terminal

Launch as terminal instance and run: `Rscript -e 'rmd2md::rmd2md()'`, being sure to specify the arguments as required. Unless launched from the project directory, as a bare minimum, you will need to set `path_site` to the appropriate `dir`. It may also be necessary to prefix the `url_images` dir with the same dir used in `path_site`, although this behaviour seems to be intermittent (and will be fixed in future).

### From an R session

Launch an R session as normal and run the following (again setting the arguments as required):

```
library(rmd2md)
rmd2md()
```
