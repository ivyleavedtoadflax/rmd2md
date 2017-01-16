
remove_exifs <- function(
  os = tolower(Sys.info()['sysname']),
  fig) {

tryCatch(
    {

      if (os == "windows") {
        
        warning("exiv2 tool not available on windows systems. Be aware that exif data attached to JPEG files will be published too!")

      } else if (os %in% c('linux', 'mac')) { 

        exiv_cmd <- paste0("exiv2 rm ", fig)

        system(exiv_cmd)

        message('exif removed from ', fig)
        
      }
    },
    warning = function(w) warning('Warning produced removing exifs:', warnings()),
    error = function(e) stop('Error produced removing exifs:', e),
    finally = {}
  )

}
