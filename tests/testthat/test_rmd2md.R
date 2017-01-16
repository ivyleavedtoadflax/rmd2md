context('Test that rmd2md works as expected')

test_that(
  'End to end test on rmd2md()',

  {

    fig <- '2015-04-20-plot.mar-example-1.png'
    fig_dir <- 'figures'
    md <- 'test.md'
    root <- 'rmd_testcases'
    
    if (file.exists(file.path(root, fig_dir, fig))) file.remove(file.path(root, fig_dir, fig))
    if (file.exists(file.path(root, md))) file.remove(file.path(root, md))

    rmd2md(
      path_site = root,
      dir_rmd = './',
      dir_md = '.',
      figures = fig_dir,
      out_ext = '.md',
      in_ext = '.Rmd'
    )
    
    expect_true(file.exists(file.path(root, md)))
    #skip_on_os(os = 'windows')
    expect_true(file.exists(file.path(root, fig_dir, fig)))
    
  })

test_that(
  'rmd2md can save to figures1',
  
  {
    
    fig <- '2015-04-20-plot.mar-example-1.png'
    fig_dir <- 'figures1'
    md <- 'test.md'
    root <- 'rmd_testcases'
    
    if (file.exists(file.path(root, fig_dir, fig))) file.remove(file.path(root, fig_dir, fig))
    if (file.exists(file.path(root, md))) file.remove(file.path(root, md))
    
    rmd2md(
      path_site = root,
      dir_rmd = './',
      dir_md = './',
      figures = fig_dir,
      out_ext = '.md',
      in_ext = '.Rmd'
    )
    
    expect_true(file.exists(file.path(root, md)))
    #skip_on_os(os = 'windows')
    expect_true(file.exists(file.path(root,fig_dir, fig)))
    expect_true(file.info(file.path(root,fig_dir, fig))$size > 0)
    
  })


test_that(
  'rmd2md can save to figures1',
  
  {
    
    fig <- '2015-04-20-plot.mar-example-1.png'
    fig_dir <- '/figures'
    md <- 'test.md'
    root <- 'rmd_testcases'
    
    if (file.exists(file.path(root, fig_dir, fig))) file.remove(file.path(root, fig_dir, fig))
    if (file.exists(file.path(root, md))) file.remove(file.path(root, md))
    
    rmd2md(
      path_site = root,
      dir_rmd = './',
      dir_md = './',
      figures = fig_dir,
      out_ext = '.md',
      in_ext = '.Rmd'
    )
    
    expect_true(file.exists(file.path(root, md)))
    #skip_on_os(os = 'windows')
    expect_true(file.exists(file.path(root,fig_dir, fig)))
    expect_true(file.info(file.path(root,fig_dir, fig))$size > 0)
    
  })

