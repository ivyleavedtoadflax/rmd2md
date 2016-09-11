
testthat::test_that(
  'change_status can read status: process',
  {

    base_dir <- file.path('yml_testcases/')

    process_status <- readLines(file.path(base_dir, 'process_status_yml.Rmd'))

    testthat::expect_equal(change_status(process_status)[10], 'status: processed')
  }

  )
