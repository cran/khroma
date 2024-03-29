% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/scale_colour_other.R
\name{scale_logical_discrete}
\alias{scale_logical_discrete}
\alias{scale_colour_logical}
\alias{scale_color_logical}
\alias{scale_fill_logical}
\title{Binary Discrete Color Schemes for \pkg{ggplot2} and \pkg{ggraph}}
\usage{
scale_colour_logical(..., aesthetics = "colour")

scale_color_logical(..., aesthetics = "colour")

scale_fill_logical(..., aesthetics = "fill")
}
\arguments{
\item{...}{Arguments passed to \code{\link[ggplot2:discrete_scale]{ggplot2::discrete_scale()}}.}

\item{aesthetics}{A \code{\link{character}} string or vector of character
strings listing the name(s) of the aesthetic(s) that this scale works with.}
}
\value{
A \link[ggplot2:discrete_scale]{discrete} scale.
}
\description{
Provides a color scale for \code{\link{logical}} values.
}
\seealso{
Other qualitative color schemes: 
\code{\link{scale_colour_land}()},
\code{\link{scale_colour_soil}()},
\code{\link{scale_colour_stratigraphy}()},
\code{\link{scale_okabeito_discrete}},
\code{\link{scale_tol_bright}},
\code{\link{scale_tol_dark}},
\code{\link{scale_tol_discreterainbow}},
\code{\link{scale_tol_highcontrast}},
\code{\link{scale_tol_light}},
\code{\link{scale_tol_mediumcontrast}},
\code{\link{scale_tol_muted}},
\code{\link{scale_tol_pale}},
\code{\link{scale_tol_vibrant}}
}
\author{
N. Frerebeau
}
\concept{qualitative color schemes}
