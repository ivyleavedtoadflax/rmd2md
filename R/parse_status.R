parse_status <- function(content) {

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

      # If found, extract the status line

      status <- unlist(strsplit(content[statusLine], ':'))[2]
      status <- sub('[[:space:]]+$', '', status)
      status <- sub('^[[:space:]]+', '', status)
      status <- tolower(status)

      return(status)
    },
    warning = function(w) {

      warning('Warning produced extracting status from yml:', w)

      },
    error = function(e)  {

      stop('Error produced extracting status from yml:', e)

    },
    finally = {}
    )

  return(out)

}
