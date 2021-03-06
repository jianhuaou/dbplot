% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/histogram.R
\name{dbplot_histogram}
\alias{dbplot_histogram}
\title{Histogram}
\usage{
dbplot_histogram(data, x, bins = 30, binwidth = NULL)
}
\arguments{
\item{data}{A table (tbl)}

\item{x}{A continuous variable}

\item{bins}{Number of bins. Defaults to 30.}

\item{binwidth}{Single value that sets the side of the bins, it overrides bins}
}
\description{
Uses very generic dplyr code to aggregate data and then `ggplot2`
to create the histogram.  Because of this approach,
the calculations automatically run inside the database if `data` has
a database or sparklyr connection. The `class()` of such tables
in R are: tbl_sql, tbl_dbi, tbl_spark
}
\examples{

library(ggplot2)
library(dplyr)

# A ggplot histogram with 30 bins
mtcars \%>\%
  dbplot_histogram(mpg)

# A ggplot histogram with bins of size 10
mtcars \%>\%
  dbplot_histogram(mpg, binwidth = 10)
}
\seealso{
\code{\link{dbplot_bar}}, \code{\link{dbplot_line}} ,
 \code{\link{dbplot_raster}}
}
