# Paul Tol's colour schemes
#' @include colour.R
NULL

# Discrete =====================================================================
#' Paul Tol's Discrete Color Schemes for \pkg{ggplot2}
#'
#' Provides qualitative color scales from Paul Tol's *Colour Schemes*.
#' @param ... Arguments passed to [ggplot2::discrete_scale()].
#' @param reverse A [`logical`] scalar. Should the resulting
#'  vector of colors be reversed?
#' @param aesthetics A [`character`] string or vector of character
#'  strings listing the name(s) of the aesthetic(s) that this scale works with.
#' @details
#'  The qualitative color schemes are used as given (no interpolation):
#'  colors are picked up to the maximum number of supported values.
#'
#'  \tabular{ll}{
#'   **Palette** \tab **Max.** \cr
#'   `bright` \tab 7 \cr
#'   `contrast` \tab 3 \cr
#'   `vibrant` \tab 7 \cr
#'   `muted` \tab 9 \cr
#'   `pale` \tab 6 \cr
#'   `dark` \tab 6 \cr
#'   `light` \tab 9 \cr
#'  }
#' @inheritSection colour Qualitative color schemes
#' @return A [discrete][ggplot2::discrete_scale] scale.
#' @references
#'  Tol, P. (2018). *Colour Schemes*. SRON. Technical Note No.
#'  SRON/EPS/TN/09-002, issue 3.1.
#'  URL: \url{https://personal.sron.nl/~pault/data/colourschemes.pdf}
#' @example inst/examples/ex-tol-discrete.R
#' @author N. Frerebeau
#' @family colour-blind safe colour schemes
#' @family qualitative colour schemes
#' @family Paul Tol's colour schemes
#' @name scale_tol_discrete
#' @rdname scale_tol_discrete
NULL

## Bright ----------------------------------------------------------------------
#' @export
#' @rdname scale_tol_discrete
scale_colour_bright <- function(..., reverse = FALSE, aesthetics = "colour") {
  scale_discrete(aesthetics, "bright", reverse, ...)
}

#' @export
#' @rdname scale_tol_discrete
scale_color_bright <- scale_colour_bright

#' @export
#' @rdname scale_tol_discrete
scale_fill_bright <- function(..., reverse = FALSE, aesthetics = "fill") {
  scale_discrete(aesthetics, "bright", reverse, ...)
}

## High contrast ---------------------------------------------------------------
#' @export
#' @rdname scale_tol_discrete
scale_colour_contrast <- function(..., reverse = FALSE, aesthetics = "colour") {
  scale_discrete(aesthetics, "contrast", reverse, ...)
}

#' @export
#' @rdname scale_tol_discrete
scale_color_contrast <- scale_colour_contrast

#' @export
#' @rdname scale_tol_discrete
scale_fill_contrast <- function(..., reverse = FALSE, aesthetics = "fill") {
  scale_discrete(aesthetics, "contrast", reverse, ...)
}

## Vibrant ---------------------------------------------------------------------
#' @export
#' @rdname scale_tol_discrete
scale_colour_vibrant <- function(..., reverse = FALSE, aesthetics = "colour") {
  scale_discrete(aesthetics, "vibrant", reverse, ...)
}

#' @export
#' @rdname scale_tol_discrete
scale_color_vibrant <- scale_colour_vibrant

#' @export
#' @rdname scale_tol_discrete
scale_fill_vibrant <- function(..., reverse = FALSE, aesthetics = "fill") {
  scale_discrete(aesthetics, "vibrant", reverse, ...)
}

## Muted -----------------------------------------------------------------------
#' @export
#' @rdname scale_tol_discrete
scale_colour_muted <- function(..., reverse = FALSE, aesthetics = "colour") {
  scale_discrete(aesthetics, "muted", reverse, ...)
}

#' @export
#' @rdname scale_tol_discrete
scale_color_muted <- scale_colour_muted

#' @export
#' @rdname scale_tol_discrete
scale_fill_muted <- function(..., reverse = FALSE, aesthetics = "fill") {
  scale_discrete(aesthetics, "muted", reverse, ...)
}

## Pale ------------------------------------------------------------------------
#' @export
#' @rdname scale_tol_discrete
scale_colour_pale <- function(..., reverse = FALSE, aesthetics = "colour") {
  scale_discrete(aesthetics, "pale", reverse, ...)
}

#' @export
#' @rdname scale_tol_discrete
scale_color_pale <- scale_colour_pale

#' @export
#' @rdname scale_tol_discrete
scale_fill_pale <- function(..., reverse = FALSE, aesthetics = "fill") {
  scale_discrete(aesthetics, "pale", reverse, ...)
}

## Dark ------------------------------------------------------------------------
#' @export
#' @rdname scale_tol_discrete
scale_colour_dark <- function(..., reverse = FALSE, aesthetics = "colour") {
  scale_discrete(aesthetics, "dark", reverse, ...)
}

#' @export
#' @rdname scale_tol_discrete
scale_color_dark <- scale_colour_dark

#' @export
#' @rdname scale_tol_discrete
scale_fill_dark <- function(..., reverse = FALSE, aesthetics = "fill") {
  scale_discrete(aesthetics, "dark", reverse, ...)
}

## Light -----------------------------------------------------------------------
#' @export
#' @rdname scale_tol_discrete
scale_colour_light <- function(..., reverse = FALSE, aesthetics = "colour") {
  scale_discrete(aesthetics, "light", reverse, ...)
}

#' @export
#' @rdname scale_tol_discrete
scale_color_light <- scale_colour_light

#' @export
#' @rdname scale_tol_discrete
scale_fill_light <- function(..., reverse = FALSE, aesthetics = "fill") {
  scale_discrete(aesthetics, "light", reverse, ...)
}

# Diverging ====================================================================
#' Paul Tol's Diverging Colour Schemes for \pkg{ggplot2}
#'
#' Provides diverging colour scales from Paul Tol's *Colour Schemes*.
#' @param ... Arguments passed to [ggplot2::continuous_scale()].
#' @param reverse A [`logical`] scalar. Should the resulting
#'  vector of colors be reversed?
#' @param range A length-two [`numeric`] vector specifying the
#' fraction of the scheme's color domain to keep.
#' @param midpoint A length-one [`numeric`] vector giving the midpoint
#'  (in data value) of the diverging scale. Defaults to `0`.
#' @param aesthetics A [`character`] string or vector of character
#'  strings listing the name(s) of the aesthetic(s) that this scale works with.
#' @param discrete A [`logical`] scalar: should the color scheme be
#'  used as a discrete scale? If `TRUE`, it is a departure from Paul Tol's
#'  recommendations and likely a very poor use of color.
#' @details
#'  If more colors than defined are needed from a given scheme, the color
#'  coordinates are linearly interpolated to provide a continuous version of the
#'  scheme.
#'  Note that the default color for `NA` can be overridden by passing
#'  a value to [ggplot2::continuous_scale()].
#'
#'  \tabular{lll}{
#'   **Palette** \tab **Max. colours** \tab **NA value** \cr
#'   `sunset` \tab 11 \tab #FFFFFF \cr
#'   `BuRd` \tab 9 \tab #FFEE99 \cr
#'   `PRGn` \tab 9 \tab #FFEE99 \cr
#'  }
#' @return A [continuous][ggplot2::continuous_scale] scale.
#' @references
#'  Tol, P. (2018). *Colour Schemes*. SRON. Technical Note No.
#'  SRON/EPS/TN/09-002, issue 3.1.
#'  URL: \url{https://personal.sron.nl/~pault/data/colourschemes.pdf}
#' @example inst/examples/ex-tol-diverging.R
#' @author N. Frerebeau
#' @family colour-blind safe colour schemes
#' @family diverging colour schemes
#' @family Paul Tol's colour schemes
#' @name scale_tol_diverging
#' @rdname scale_tol_diverging
NULL

## Sunset ----------------------------------------------------------------------
#' @export
#' @rdname scale_tol_diverging
scale_colour_sunset <- function(..., reverse = FALSE, range = c(0, 1),
                                midpoint = 0, discrete = FALSE, aesthetics = "colour") {
  if (discrete) {
    scale_discrete(aesthetics, "sunset", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "sunset", reverse = reverse, range = range,
                     midpoint = midpoint, ...)
  }
}

#' @export
#' @rdname scale_tol_diverging
scale_color_sunset <- scale_colour_sunset

#' @export
#' @rdname scale_tol_diverging
scale_fill_sunset <- function(..., reverse = FALSE, range = c(0, 1),
                              midpoint = 0, discrete = FALSE, aesthetics = "fill") {
  if (discrete) {
    scale_discrete(aesthetics, "sunset", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "sunset", reverse = reverse, range = range,
                     midpoint = midpoint, ...)
  }
}

## BuRd ------------------------------------------------------------------------
#' @export
#' @rdname scale_tol_diverging
scale_colour_BuRd <- function(..., reverse = FALSE, range = c(0, 1),
                              midpoint = 0, discrete = FALSE, aesthetics = "colour") {
  if (discrete) {
    scale_discrete(aesthetics, "BuRd", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "BuRd", reverse = reverse, range = range,
                     midpoint = midpoint, ...)
  }
}

#' @export
#' @rdname scale_tol_diverging
scale_color_BuRd <- scale_colour_BuRd

#' @export
#' @rdname scale_tol_diverging
scale_fill_BuRd <- function(..., reverse = FALSE, range = c(0, 1),
                            midpoint = 0, discrete = FALSE, aesthetics = "fill") {
  if (discrete) {
    scale_discrete(aesthetics, "BuRd", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "BuRd", reverse = reverse, range = range,
                     midpoint = midpoint, ...)
  }
}

## PRGn ------------------------------------------------------------------------
#' @export
#' @rdname scale_tol_diverging
scale_colour_PRGn <- function(..., reverse = FALSE, range = c(0, 1),
                              midpoint = 0, discrete = FALSE, aesthetics = "colour") {
  if (discrete) {
    scale_discrete(aesthetics, "PRGn", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "PRGn", reverse = reverse, range = range,
                     midpoint = midpoint, ...)
  }
}

#' @export
#' @rdname scale_tol_diverging
scale_color_PRGn <- scale_colour_PRGn

#' @export
#' @rdname scale_tol_diverging
scale_fill_PRGn <- function(..., reverse = FALSE, range = c(0, 1),
                            midpoint = 0, discrete = FALSE, aesthetics = "fill") {
  if (discrete) {
    scale_discrete(aesthetics, "PRGn", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "PRGn", reverse = reverse, range = range,
                     midpoint = midpoint, ...)
  }
}

# Sequential ===================================================================
#' Paul Tol's Sequential Color Schemes for \pkg{ggplot2}
#'
#' Provides sequential color scales from Paul Tol's *Colour Schemes*.
#' @param ... Arguments passed to [ggplot2::continuous_scale()].
#' @param reverse A [`logical`] scalar. Should the resulting
#'  vector of colors be reversed?
#' @param range A length-two [`numeric`] vector specifying the
#' fraction of the scheme's color domain to keep.
#' @param aesthetics A [`character`] string or vector of character
#'  strings listing the name(s) of the aesthetic(s) that this scale works with.
#' @param discrete A [`logical`] scalar: should the color scheme be
#'  used as a discrete scale? If `TRUE`, it is a departure from Paul Tol's
#'  recommendations and likely a very poor use of color.
#' @details
#'  If more colors than defined are needed from a given scheme, the color
#'  coordinates are linearly interpolated to provide a continuous version of the
#'  scheme, with the exception of the `discrete rainbow` scheme (see below).
#'
#'  Note that the default color for `NA` can be overridden by passing
#'  a value to [ggplot2::continuous_scale()].
#'
#'  \tabular{lll}{
#'   **Palette** \tab **Max. colors** \tab **NA value** \cr
#'   `YlOrBr` \tab 9 \tab #888888 \cr
#'   `iridescent` \tab 23 \tab #999999 \cr
#'   `discrete rainbow` \tab 23 \tab #777777 \cr
#'   `smooth rainbow` \tab 34 \tab #666666 \cr
#'  }
#' @inheritSection colour Rainbow color scheme
#' @return A [continuous][ggplot2::continuous_scale] scale.
#' @references
#'  Tol, P. (2018). *Colour Schemes*. SRON. Technical Note No.
#'  SRON/EPS/TN/09-002, issue 3.1.
#'  URL: \url{https://personal.sron.nl/~pault/data/colourschemes.pdf}
#' @example inst/examples/ex-tol-sequential.R
#' @author N. Frerebeau
#' @family colour-blind safe colour schemes
#' @family sequential colour schemes
#' @family Paul Tol's colour schemes
#' @name scale_tol_sequential
#' @rdname scale_tol_sequential
NULL

## YlOrBr ----------------------------------------------------------------------
#' @export
#' @rdname scale_tol_sequential
scale_colour_YlOrBr <- function(..., reverse = FALSE, range = c(0, 1),
                                discrete = FALSE, aesthetics = "colour") {
  if (discrete) {
    scale_discrete(aesthetics, "YlOrBr", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "YlOrBr", reverse = reverse,
                     range = range, ...)
  }
}

#' @export
#' @rdname scale_tol_sequential
scale_color_YlOrBr <- scale_colour_YlOrBr

#' @export
#' @rdname scale_tol_sequential
scale_fill_YlOrBr <- function(..., reverse = FALSE, range = c(0, 1),
                              discrete = FALSE, aesthetics = "fill") {
  if (discrete) {
    scale_discrete(aesthetics, "YlOrBr", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "YlOrBr", reverse = reverse,
                     range = range, ...)
  }
}

## Iridescent ------------------------------------------------------------------
#' @export
#' @rdname scale_tol_sequential
scale_colour_iridescent <- function(..., reverse = FALSE, range = c(0, 1),
                                    discrete = FALSE, aesthetics = "colour") {
  if (discrete) {
    scale_discrete(aesthetics, "iridescent", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "iridescent", reverse = reverse,
                     range = range, ...)
  }
}

#' @export
#' @rdname scale_tol_sequential
scale_color_iridescent <- scale_colour_iridescent

#' @export
#' @rdname scale_tol_sequential
scale_fill_iridescent <- function(..., reverse = FALSE, range = c(0, 1),
                                  discrete = FALSE, aesthetics = "fill") {
  if (discrete) {
    scale_discrete(aesthetics, "iridescent", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "iridescent", reverse = reverse,
                     range = range, ...)
  }
}

## Discrete Rainbow ------------------------------------------------------------
#' @export
#' @rdname scale_tol_sequential
scale_colour_discreterainbow <- function(..., reverse = FALSE,
                                         aesthetics = "colour") {
  scale_discrete(aesthetics, "discrete rainbow", reverse = reverse, ...)
}

#' @export
#' @rdname scale_tol_sequential
scale_color_discreterainbow <- scale_colour_discreterainbow

#' @export
#' @rdname scale_tol_sequential
scale_fill_discreterainbow <- function(..., reverse = FALSE,
                                       aesthetics = "fill") {
  scale_discrete(aesthetics, "discrete rainbow", reverse = reverse, ...)
}

## Smooth Rainbow --------------------------------------------------------------
#' @export
#' @rdname scale_tol_sequential
scale_colour_smoothrainbow <- function(..., reverse = FALSE, range = c(0, 1),
                                       discrete = FALSE, aesthetics = "colour") {
  if (discrete) {
    scale_discrete(aesthetics, "smooth rainbow", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "smooth rainbow", reverse = reverse,
                     range = range, ...)
  }
}

#' @export
#' @rdname scale_tol_sequential
scale_color_smoothrainbow <- scale_colour_smoothrainbow

#' @export
#' @rdname scale_tol_sequential
scale_fill_smoothrainbow <- function(..., reverse = FALSE, range = c(0, 1),
                                     discrete = FALSE, aesthetics = "fill") {
  if (discrete) {
    scale_discrete(aesthetics, "smooth rainbow", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "smooth rainbow", reverse = reverse,
                     range = range, ...)
  }
}
