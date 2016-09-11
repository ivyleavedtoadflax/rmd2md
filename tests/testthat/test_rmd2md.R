

test_that(
  'End to end test on rmd2md()',

  {

    rmd2md(
      path_site = 'rmd_testcases/',
      dir_rmd = './',
      dir_md = './',
      url_images = 'rmd_testcases/',
      out_ext = '.md',
      in_ext = '.Rmd'
      )

    expect_true(file.exists('rmd_testcases/test.md'))
    expect_true(file.exists('rmd_testcases/2015-04-20-plot.mar-example-1.png'))

    }

  )



