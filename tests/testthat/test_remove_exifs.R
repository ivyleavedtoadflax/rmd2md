
test_that(
  'Remove exifs works as expected',
  {

    skip_on_os(os = 'windows')
    
    # Set up some conditions:

    test_dir <- 'exif_testcases/'

    start_file <- file.path(test_dir, 'with_exif.jpg')
    test_file <- file.path(test_dir, 'test.jpg')

    # Create a new file to test on

    setup_cmd <- paste('cp', start_file, test_file)

    system(setup_cmd)

    # Check that the created file exists

    expect_true(file.exists(test_file))

    expect_warning(remove_exifs('windows', test_file))

    # Check that no change was made to the test_file

    expect_equal(file.size(start_file), file.size(test_file))

    # Check that remove_exifs runs

    expect_message(remove_exifs('linux', test_file))

    # Check that the exif has really been removed!

    expect_gt(file.size(start_file), file.size(test_file))

  }

)
