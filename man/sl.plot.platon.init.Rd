\name{sl.plot.platon.init}
\alias{sl.plot.platon.init}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Initialise Platon Plot
}
\description{
Initialise a Platonian-type body plot. Currently possible are hexahedrons (cubes) and icosahedrons. The plot is composed of faces arranged in a net that can be crafted into a 3-dimensional platonian-type body. Returns a list that needs to be provided to any spheRlab plotting functions called afterwards, ended by a call of \code{sl.plot.platon.end}.
}
\usage{
sl.plot.platon.init(file.name = "~/sl.plot.pdf", body.type = "hexahedron", width = 60, skip.faces = NULL)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{file.name}{
  a character specifying the output file.
}
  \item{body.type}{
  a character specifying the body type. Currently possible types are \code{"hexahedron"} (cube) and \code{"icosahedron"}.
}
  \item{width}{
  a scalar specifying the width of the resulting figure.
}
  \item{skip.faces}{
   an integer (vector) specifying the index (or indices) of faces to omit from the plot. Can be used e.g. for plotting a colourbar and/or other descriptive information onto one or more of the faces. If \code{skip.faces=NULL} (default), all faces are drawn.
}
}
\details{
This projection type is a nice gimmick of spheRlab - and in fact part of the reason why rather sophisticated procedures are applied in spheRlab at the plot domain boundaries. For example, at the plot domain boundaries the visible parts of lines and polygons are explicitly computed and then drawn instead of plotting them completely and masking the unintended parts afterwards. The latter 'trick' would be much easier, but fails when separate plot parts are drawn right next to each other, as is the case for the platonian-type body nets!
}
\value{
A list that must be provided to any spheRlab plotting functions called afterwards. In fact, the returned list contains \code{N} standard spheRlab plot specifics lists as the first \code{N} (unnamed) elements for the \code{N} faces that will be generated for the platonian-type body plot, plus the following list elements thereafter:
  \item{projection}{
the character \code{"platon"}.
}
  \item{body.type}{
see the corresponding argument.
}
  \item{deltaxy}{
a scalar giving the length of the face edges in the projected x-y plane.
}
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
Helge Goessling
}
\note{
If anyone wants to burn some spare time, how about adding the truncated icosahedron to the list of possible bodies? That would be so cool! :-)
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{sl.plot.init}, \code{sl.plot.platon.end}
}
\examples{
## To be provided ...
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
%\keyword{ ~kwd1 }
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
