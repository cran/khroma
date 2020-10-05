## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
 fig.align = "center"
)

## ----setup--------------------------------------------------------------------
library(khroma)

## ----tol_quali_bright, fig.height = 2, fig.width = 7--------------------------
bright <- colour("bright")
plot_scheme(bright(7), colours = TRUE, names = TRUE, size = 0.9)

## ----tol_quali_contrast, fig.height = 2, fig.width = 7------------------------
contrast <- colour("contrast")
plot_scheme(contrast(3), colours = TRUE, names = TRUE, size = 0.9)

## ----tol_quali_vibrant, fig.height=2, fig.width=7-----------------------------
vibrant <- colour("vibrant")
plot_scheme(vibrant(7), colours = TRUE, names = TRUE, size = 0.9)

## ----tol_quali_muted, fig.height=2, fig.width=7-------------------------------
muted <- colour("muted")
plot_scheme(muted(9), colours = TRUE, names = TRUE, size = 0.9)

## ----tol_quali_light, fig.height=2, fig.width=7-------------------------------
light <- colour("light")
plot_scheme(light(9), colours = TRUE, names = TRUE, size = 0.9)

## ----tol_quali_pale_dark, fig.height=2, fig.width=7---------------------------
pale <- colour("pale")
plot_scheme(pale(6), colours = TRUE, names = TRUE, size = 0.9)

dark <- colour("dark")
plot_scheme(dark(6), colours = TRUE, names = TRUE, size = 0.9)

## ----tol_div_sunset, fig.height=2, fig.width=7--------------------------------
sunset <- colour("sunset")
plot_scheme(sunset(9), colours = TRUE, size = 0.9)

## ----tol_div_BuRd, fig.height=2, fig.width=7----------------------------------
BuRd <- colour("BuRd")
plot_scheme(BuRd(9), colours = TRUE, size = 0.9)

## ----tol_div_PRGn, fig.height=2, fig.width=7----------------------------------
PRGn <- colour("PRGn")
plot_scheme(PRGn(9), colours = TRUE, size = 0.9)

## ----tol_seq_YlOrBr, fig.height=2, fig.width=7--------------------------------
YlOrBr <- colour("YlOrBr")
plot_scheme(YlOrBr(9), colours = TRUE, size = 0.9)

## ----tol_seq_iridescent, fig.height=2, fig.width=7----------------------------
iridescent <- colour("iridescent")
plot_scheme(iridescent(23), colours = TRUE, size = 0.5)

## ----tol_seq_rainbow, fig.height=2, fig.width=7-------------------------------
discrete_rainbow <- colour("discrete rainbow")
plot_scheme(discrete_rainbow(14), colours = TRUE, size = 0.7)

## ----tol_seq_adjust, fig.height=2, fig.width=7--------------------------------
smooth_rainbow <- colour("smooth rainbow")

# Start at purple instead of off-white
plot(smooth_rainbow(256, range = c(0.25, 1)))
# End at red instead of brown
plot(smooth_rainbow(256, range = c(0, 0.9)))

## ----tol_quali, echo=FALSE, fig.height = 2, fig.width = 7, fig.show='hold', fig.cap='Diagnostic maps for the bright, vibrant, muted and light (from top to bottom) qualitative colour schemes.'----
set.seed(12345)
plot_map(bright(7))
plot_map(vibrant(7))
plot_map(muted(9))
plot_map(light(9))

## ----tol_div, echo=FALSE, fig.height = 2, fig.width = 7, fig.show='hold', fig.cap='Diagnostic maps for the sunset, BuRd and PRGn (from top to bottom) diverging colour schemes.'----
set.seed(12345)
plot_map(sunset(11))
plot_map(BuRd(9))
plot_map(PRGn(9))

## ----tol_seq, echo=FALSE, fig.height = 2, fig.width = 7, fig.show='hold', fig.cap='Diagnostic maps for the YlOrBr, iridescent, discrete rainbow and smooth rainbow (from top to bottom) sequential colour schemes.'----
set.seed(12345)
plot_map(YlOrBr(9))
plot_map(iridescent(23))
plot_map(discrete_rainbow(14))
plot_map(smooth_rainbow(23))

