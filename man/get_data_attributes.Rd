% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/process.R
\name{get_data_attributes}
\alias{get_data_attributes}
\title{Infer and attach attributes to a longitudinal growth study data set}
\usage{
get_data_attributes(dat, meta = NULL, study_meta = NULL)
}
\arguments{
\item{dat}{a longitudinal growth study data set}

\item{meta}{a data frame of meta data about the variables (a row for each variable)}

\item{study_meta}{a single-row data frame or named list of meta data about the study (such as study description, etc.)}
}
\description{
Infer attributes such as variable types of a longitudinal growth study and add as attributes to the data set.
}
\details{
attributes added:
- \code{subjectlevel_vars}: vector of names of subject-level variables
- \code{timevarying_vars}: vector of names of time-varying variables
- \code{time_vars}: vector of names of measures of age
- \code{var_summ}: data frame containing variable summaries with columns \code{variable}, \code{label}, \code{type}[subject id, time indicator, time-varying, constant], \code{n_unique}
- \code{subj_count}: data frame of counts of records for each subject with columns \code{subjid}, \code{n}
- \code{n_subj}: scalar containing total number of subjects
- \code{labels} named list of variable labels - either populated by matching names with a pre-set list of labels (see \code{\link{hbgd_labels}}) or from a list provided from the \code{meta} argument
- \code{study_meta}: data frame of meta data (if provided from the \code{study_meta} argument)
- \code{short_id}: scalar containing the short unique identifier for the study (if \code{study_meta} is provided)
}
\examples{
cpp <- get_data_attributes(cpp)
str(attributes(cpp))
}
\seealso{
\code{\link{get_data_attributes}}
}

