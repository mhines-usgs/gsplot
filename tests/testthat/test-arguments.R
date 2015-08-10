context("lining up default arguments")
test_that("setting params with other default works as expected",{
  expect_equal(gsplot:::function_args("grDevices","points", 1:5, y = NULL, 'label', use.default='xy.coords'), 
               list(x=1:5, y=NULL,xlab='label'))
})

test_that("setting params with class match works as expected",{
  expect_is(gsplot:::function_args("grDevices","points", x~y, use.default='xy.coords')[[1]], 
               'formula')
})