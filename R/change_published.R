change_published <- function(content) {

    out <- tryCatch(
      {

      # Check that there is a status and a published line
      # Note that the published line is relatively uninformative in this version
      # and may be removed in future versions.

        publishedLine <- which(
          grepl('^published\\:', content)
        )

      if (publishedLine == 0) {

        stop('No published: line found in yaml topmatter')

      }

      content[publishedLine] <- 'published: true'

      return(content)
    },
    warning = function(w) {

      warning('Warning produced changing published:', w)

      },
    error = function(e)  {

      stop('Error produced changing published:', e)

    },
    finally = {}
    )

  return(out)

}
