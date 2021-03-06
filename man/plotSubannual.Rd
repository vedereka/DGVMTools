% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plotSubannual.R
\name{plotSubannual}
\alias{plotSubannual}
\title{Plots sub-annual cycles}
\usage{
plotSubannual(
  fields,
  layers = NULL,
  gridcells = NULL,
  title = NULL,
  subtitle = NULL,
  cols = NULL,
  col.by = "Year",
  col.labels = waiver(),
  plotAverage = TRUE,
  text.multiplier = NULL,
  plot = TRUE,
  alpha = 0.2,
  ...
)
}
\arguments{
\item{fields}{The data to plot. Can be a Field or a list of Fields.}

\item{layers}{A list of strings specifying which layers to plot.  Defaults to all layers.}

\item{gridcells}{A list of gridcells to be plotted (either in different panels or the same panel). For formatting of this argument see \code{selectGridcells}.
Leave empty or NULL to plot all gridcells (but note that if this involves too many gridcells the code will stop)}

\item{title}{A character string to override the default title.}

\item{subtitle}{A character string to override the default subtitle.}

\item{cols}{A vector of colours to control the colours of the lines (as defined by the \code{col.by} argument above).  If \code{col.by} is set to "Year",
the colours are used to form a colour palette.   Otherwise the vector can/should be named to match particular colour values
to particular Layers/Sources/Sites/Quantities.}

\item{col.by}{Character string defining the aspects of the data which which should be used to set the colour of the lines in each panel,
all other aspects will be put in separate panels.  Can meaningfully take the values "Year", Layer", "Source", "Site" or "Quantity".
By default \code{col.by} is set to "Year" which means that the years are plotted according to a colour gradient, and all other aspects of the 
the data are distinguished by different facet panels.}

\item{col.labels}{A vector of character strings which are used as the labels for the lines. As for the \code{cols} arguement it must have
the same length as the number of Layers/Sources/Sites/Quantities in the plot and the vectors can/should be named to match particular 
labels to  particular Layers/Sources/Sites/Quantities.}

\item{plotAverage}{Boolean, if TRUE plot the mean of all years}

\item{text.multiplier}{A number specifying an overall multiplier for the text on the plot.
Make it bigger if the text is too small on large plots and vice-versa.}

\item{plot}{Boolean, if FALSE return a data.table with the final data instead of the ggplot object.  This can be useful for inspecting the structure of the facetting columns, amongst other things.}

\item{alpha}{A numeric (range 0-1), to give the transparency (alpha) of the annual lines}

\item{...}{Arguments passed to \code{ggplot2::facet_wrap()}.  See the ggplot2 documentation for full details but the following are particularly useful.
\itemize{
 \item{"nrow"}{The number of rows of facets}
 \item{"ncol"}{The number of columns of facets}
 \item{"scales"}{Whether the scales (ie. x and y ranges) should be fixed for all facets.  Options are "fixed" (same scales on all facets, default)
 "free" (all facets can their x and y ranges), "free_x" and "free_y"  (only x and y ranges can vary, respectively).}
 \item{"labeller"}{A function to define the labels for the facets.  This is a little tricky, please look to the ggplot2 documentation} 
}}
}
\value{
Returns either a ggplot2 object or a data.table (depending on the 'plot' argument)
}
\description{
For a list of Fields, plots the sub-annual cycles of the selected layers on on top of each other.
}
\details{
Note that like all \code{DGVMTools} plotting functions, \code{plotSubannual} splits the data into separate panels using the \code{ggplot2::facet_wrap()}.  If you want to 'grid' the facets
using \code{ggplot2::facet_grid()} you can do so afterwards. 'gridding the facets' implies the each column and row of facets vary by one specific aspect.
For example you might have one column for each Source, and one row for each "Quantity".
}
\author{
Matthew Forrest \email{matthew.forrest@senckenberg.de}
}
