
testthat::test_that(
  'parse_published reads and changes processed.',
  {

    base_dir <- file.path('yml_testcases/')

    process_published <- readLines(file.path(base_dir,'process_status_yml.Rmd'))

    testthat::expect_equal(change_published(process_published)[9], 'published: true')
  }

)
