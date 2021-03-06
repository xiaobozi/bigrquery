\name{query_exec}
\alias{query_exec}
\title{Run a asynchronous query and retrieve results.}
\usage{
  query_exec(project, dataset, query, billing = project,
    page_size = 10000, max_pages = 10, warn = TRUE)
}
\arguments{
  \item{project}{project name}

  \item{dataset}{dataset name}

  \item{query}{SQL query string}

  \item{billing}{project to bill to, if different to
  \code{project}}
}
\description{
  This is a high-level function that inserts a query job
  (with \code{\link{insert_query_job}}), repeatedly checks
  the status (with \code{\link{get_job}}) until it is
  complete, then retrieves the results (with
  \code{\link{list_tabledata}})
}
\examples{
\donttest{
library(bigrquery)
billing_project <- "341409650721" # put your project number here
sql <- "SELECT year, month, day, weight_pounds FROM natality LIMIT 5"
query_exec("publicdata", "samples", sql, billing = billing_project)
}
}
\seealso{
  Google documentation describing asynchronous queries:
  \url{https://developers.google.com/bigquery/docs/queries#asyncqueries}
}

