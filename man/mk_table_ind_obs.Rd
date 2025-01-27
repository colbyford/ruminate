% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/NCA_Server.R
\name{mk_table_ind_obs}
\alias{mk_table_ind_obs}
\title{Creates Tables of Individual Observations from PKNCA Result}
\usage{
mk_table_ind_obs(
  nca_res,
  obnd = NULL,
  not_sampled = "NS",
  blq = "BLQ",
  digits = 3,
  text_format = "text",
  max_height = 7,
  max_width = 6.5,
  max_row = NULL,
  max_col = 9,
  notes_detect = NULL,
  rows_by = "time"
)
}
\arguments{
\item{nca_res}{Output of PKNCA.}

\item{obnd}{onbrand reporting object.}

\item{not_sampled}{Character string to use for missing data when pivoting.}

\item{blq}{Character string to use to indicate data below the level of quantification (value of 0 in the dataset).}

\item{digits}{Number of significant figures to report (set to \code{NULL} to disable rounding)}

\item{text_format}{Either \code{"md"} for markdown or \code{"text"} (default) for plain text.}

\item{max_height}{Maximum height of the final table in inches (A value of \code{NULL} will use 100 inches).}

\item{max_width}{Maximum width of the final table in inches (A value of \code{NULL} will use 100 inches).}

\item{max_row}{Maximum number of rows to have on a page. Spillover will hang over the side of the page..}

\item{max_col}{Maximum number of columns to have on a page. Spillover will be wrapped to multiple pages.}

\item{notes_detect}{Vector of strings to detect in output tables (example \code{c("NC", "BLQ")}).}

\item{rows_by}{Can be either "time" or "id". If it is "time", there will be a
column for time and separate column for each subject ID. If rows_by is set
to "id" there will be a column for ID and a column for each individual time.}
}
\value{
list containing the following elements
\itemize{
}
}
\description{
Takes the output of PKNCA and creates a tabular view of the
individual observation data. This can be spread out of over several tables
(pages) if necessary.
}
