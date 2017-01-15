context('Tests of helper functions in utils.R')

test_that(
  'last_char works as expected.',
  {
    
    expect_equal(last_char('a'), 'a')
    expect_equal(last_char('ab'), 'b')
    expect_equal(last_char('abc'), 'c')
    expect_equal(last_char('12244'), '4')
    
    expect_equal(last_char(13354), '4')
    
    }
  )

test_that(
  'fig_path works as expected.',
  {
    
    os <- tolower(Sys.info()[['sysname']])
    
    if (os == 'linux') {
    
    expect_equal(fig_path('figure'), 'figure/')
    expect_equal(fig_path('figure/'), 'figure/')
    
    } 
    
    if (os == 'windows') {
      
      expect_equal(fig_path('figure'), 'figure')
      expect_equal(fig_path('figure/'), 'figure')
      
    }
    
    }
  )