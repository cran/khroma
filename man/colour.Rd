% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/color.R
\name{colour}
\alias{colour}
\alias{color}
\title{Color Palette}
\usage{
colour(palette, reverse = FALSE, names = TRUE, lang = "en", force = FALSE, ...)

color(palette, reverse = FALSE, names = TRUE, lang = "en", force = FALSE, ...)
}
\arguments{
\item{palette}{A \code{\link{character}} string giving the name of the palette to be
used (see below).}

\item{reverse}{A \code{\link{logical}} scalar: should the resulting vector of colors
should be reversed?}

\item{names}{A \code{\link{logical}} scalar: should the names of the colors should be
kept in the resulting vector?}

\item{lang}{A \code{\link{character}} string specifying the language for the color
names. It must be one of "\code{en}" (English, the default) or "\code{fr}" (French).}

\item{force}{A \code{\link{logical}} scalar. If \code{TRUE}, forces the color scheme to be
interpolated. It should not be used routinely with qualitative color
schemes, as they are designed to be used as is to remain color-blind safe.}

\item{...}{Further arguments passed to
\link[grDevices:colorRamp]{colorRampPalette}.}
}
\value{
A palette function with the following attributes, that when called
with a single integer argument (the number of levels) returns a (named)
vector of colors.
\describe{
\item{palette}{A \code{\link{character}} string giving the name of the
color scheme.}
\item{type}{A \code{\link{character}} string giving the corresponding
data type. One of "\code{qualitative}", "\code{diverging}" or "\code{sequential}".}
\item{interpolate}{A \code{\link{logical}} scalar: can the color palette be
interpolated?}
\item{missing}{A \code{\link{character}} string giving the the hexadecimal
representation of the color that should be used for \code{NA} values.}
\item{max}{An \code{\link{integer}} giving the maximum number of color values.
Only relevant for non-interpolated color schemes.}
}

For color schemes that can be interpolated (diverging and sequential data),
the color range can be limited with an additional argument. \code{range} allows
to remove a fraction of the color domain (before being interpolated; see
examples).
}
\description{
Provides qualitative, diverging and sequential color schemes.
}
\section{Paul Tol's Color Schemes}{

The following palettes are available. The maximum number of supported
colors is in brackets, this value is only relevant for the qualitative
color schemes (divergent and sequential schemes are linearly interpolated).
\describe{
\item{Qualitative data}{\code{bright} (7), \verb{high contrast} (3), \code{vibrant} (7),
\code{muted} (9), \verb{medium contrast} (6), \code{pale} (6), \code{dark} (6), \code{light} (9).}
\item{Diverging data}{\code{sunset} (11), \code{nightfall} (17), \code{BuRd} (9),
\code{PRGn} (9).}
\item{Sequential data}{\code{YlOrBr} (9), \code{iridescent} (23), \code{incandescent}
(11), \verb{discrete rainbow} (23), \verb{smooth rainbow} (34).}
}
}

\section{Qualitative Color Schemes}{

According to Paul Tol's technical note, the \code{bright}, \code{highcontrast},
\code{vibrant} and \code{muted} color schemes are color-blind safe. The
\code{mediumcontrast} color scheme is designed for situations needing color
pairs.

The \code{light} color scheme is reasonably distinct for both normal or
colorblind vision and is intended to fill labeled cells.

The \code{pale} and \code{dark} schemes are not very distinct in either normal or
colorblind vision and should be used as a text background or to highlight
a cell in a table.

Refer to the original document for details about the recommended uses (see
references).
}

\section{Rainbow Color Scheme}{

As a general rule, ordered data should not be represented using a rainbow
scheme. There are three main arguments against such use (Tol 2018):
\itemize{
\item{The spectral order of visible light carries no inherent magnitude
message.}
\item{Some bands of almost constant hue with sharp transitions between
them, can be perceived as jumps in the data.}
\item{Color-blind people have difficulty distinguishing some colors of
the rainbow.}
}
If such use cannot be avoided, Paul Tol's technical note provides two color
schemes that are reasonably clear in color-blind vision. To remain
color-blind safe, these two schemes must comply with the following
conditions:
\describe{
\item{\code{discreterainbow}}{This scheme must not be interpolated.}
\item{\code{smoothrainbow}}{This scheme does not have to be used over the full
range.}
}
}

\section{Okabe and Ito Color Scheme}{

The following (qualitative) color scheme is available:
\describe{
\item{\code{okabeito}}{Up to 8 colors.}
\item{\verb{okabeito black}}{Up to 8 colors, with black as the last.}
}
}

\section{Scientific Color Schemes}{

The following (qualitative) color schemes are available:
\describe{
\item{\code{stratigraphy}}{International Chronostratigraphic Chart (175 colors).}
\item{\code{land}}{AVHRR Global Land Cover Classification (14 colors).}
\item{\code{soil}}{FAO Reference Soil Groups (24 colors).}
}
}

\examples{
## Okabe and Ito colour scheme
colour("okabe ito")(8)
plot_scheme(colour("okabe ito")(8))

## Paul Tol's colour schemes
### Qualitative data
plot_scheme(colour("bright")(7))
plot_scheme(colour("high contrast")(3))
plot_scheme(colour("vibrant")(7))
plot_scheme(colour("muted")(9))
plot_scheme(colour("medium contrast")(6))
plot_scheme(colour("pale")(6))
plot_scheme(colour("dark")(6))
plot_scheme(colour("light")(9))
### Diverging data
plot_scheme(colour("sunset")(11))
plot_scheme(colour("BuRd")(9))
plot_scheme(colour("PRGn")(9))
### Sequential data
plot_scheme(colour("YlOrBr")(9))
plot_scheme(colour("iridescent")(23))
plot_scheme(colour("discrete rainbow")(14))
plot_scheme(colour("discrete rainbow")(23))
plot_scheme(colour("smooth rainbow")(34))

## Scientific colour schemes
### Geologic timescale
plot_scheme(colour("stratigraphy")(175))
### AVHRR global land cover classification
plot_scheme(colour("land")(14))
### FAO soil reference groups
plot_scheme(colour("soil")(24))

## Adjust colour levels
PRGn <- colour("PRGn")
plot_scheme(PRGn(9, range = c(0.5, 1)))
}
\references{
Jones, A., Montanarella, L. & Jones, R. (Ed.) (2005). \emph{Soil atlas of
Europe}. Luxembourg: European Commission, Office for Official Publications
of the European Communities. 128 pp. ISBN: 92-894-8120-X.

Okabe, M. & Ito, K. (2008). \emph{Color Universal Design (CUD): How to Make
Figures and Presentations That Are Friendly to Colorblind People}.
URL: \url{https://jfly.uni-koeln.de/color/}.

Tol, P. (2021). \emph{Colour Schemes}. SRON. Technical Note No.
SRON/EPS/TN/09-002, issue 3.2.
URL: \url{https://personal.sron.nl/~pault/data/colourschemes.pdf}

\href{https://ccgm.org/}{Commission for the Geological Map of the World}
}
\seealso{
Other color palettes: 
\code{\link{info}()},
\code{\link{ramp}()},
\code{\link{scale_picker}}
}
\author{
N. Frerebeau
}
\concept{color palettes}
\keyword{color}
