
testthat::test_that(
  'parse_status can read status: process',
  {

    base_dir <- file.path('yml_testcases/')

    process_status <- readLines(file.path(base_dir, 'process_status_yml.Rmd'))
    processed_status <- readLines(file.path(base_dir, 'processed_status_yml.Rmd'))
    other_status <- readLines(file.path(base_dir, 'other_status_yml.Rmd'))
    no_status <- readLines(file.path(base_dir, 'no_status_yml.Rmd'))

    # process_status <- readLines(file.path(base_dir,'process_status_yml.Rmd'))
    # processed_status <- readLines(file.path(base_dir, 'processed_status_yml.Rmd'))
    # other_status <- readLines(file.path(base_dir, 'other_status_yml.Rmd'))
    # no_status <- readLines(file.path(base_dir, 'no_status_yml.Rmd'))

    expect_equal(parse_status(process_status), 'process')
    expect_equal(parse_status(processed_status), 'processed')
    expect_equal(parse_status(other_status), 'processs')
    expect_error(parse_status(no_status))
  }

  )
