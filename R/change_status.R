change_status <- function(content) {

    out <- tryCatch(
      {

      # Check that there is a status and a published line
      # Note that the published line is relatively uninformative in this version
      # and may be removed in future versions.

        statusLine <- which(
          grepl('^status\\:', content)
        )

      if (statusLine == 0) {

        stop('No status: line found in yaml topmatter')

      }

      content[statusLine] <- 'status: processed'

      return(content)
    },
    warning = function(w) {

      warning('Warning produced changing status:', w)

      },
    error = function(e)  {

      stop('Error produced changing status:', e)

    },
    finally = {}
    )

  return(out)

}
