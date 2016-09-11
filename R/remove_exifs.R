
remove_exifs <- function(os, fig) {

tryCatch(
    {

      if (os != "windows") {

        exiv_cmd <- paste0("exiv2 rm ", fig)

        system(exiv_cmd)

        message('exif removed from ', fig)

      } else {

        warning("exiv2 tool not available on windows systems. Be aware that exif data attached to JPEG files will be published too!")

      }
    }
    ,
    warning = function(w) {

      warning('Warning produced removing exifs:', w)

    },
    error = function(e)  {

      stop('Error produced removing exifs:', e)

    },
    finally = {}
  )

}
