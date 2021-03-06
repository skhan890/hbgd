% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/standard_igb.R
\name{igb_lencm2zscore}
\alias{igb_hcircm2centile}
\alias{igb_hcircm2zscore}
\alias{igb_lencm2centile}
\alias{igb_lencm2zscore}
\alias{igb_wtkg2centile}
\alias{igb_wtkg2zscore}
\title{Convert prenatal ultrasound measurements to Intergrowth z-scores/centiles}
\usage{
igb_lencm2zscore(gagebrth, lencm, sex = "Female")

igb_wtkg2zscore(gagebrth, wtkg, sex = "Female")

igb_hcircm2zscore(gagebrth, hcircm, sex = "Female")

igb_lencm2centile(gagebrth, lencm, sex = "Female")

igb_wtkg2centile(gagebrth, wtkg, sex = "Female")

igb_hcircm2centile(gagebrth, hcircm, sex = "Female")
}
\arguments{
\item{gagebrth}{gestational age at birth in days}

\item{lencm}{length(cm) measurement(s) to convert}

\item{sex}{"Male" or "Female"}

\item{wtkg}{weight (kg) measurement(s) to convert}

\item{hcircm}{head circumference (cm) measurement(s) to convert}
}
\description{
Convert prenatal ultrasound measurements to Intergrowth z-scores/centiles
}
\examples{
# get Male birth length z-scores
# first we need just 1 record per subject with subject-level data
cppsubj <- get_subject_data(cpp)
cppsubj <- subset(cppsubj, sex == "Male")
igb_lencm2zscore(cpp$gagebrth, cpp$birthlen, sex = "Male")
}
\references{
International standards for newborn weight, length, and head circumference by gestational age and sex: the Newborn Cross-Sectional Study of the INTERGROWTH-21st Project
Villar, José et al.
The Lancet, Volume 384, Issue 9946, 857-868
}

