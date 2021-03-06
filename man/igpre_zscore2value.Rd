% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/standard_igpre.R
\name{igpre_zscore2value}
\alias{igpre_centile2value}
\alias{igpre_zscore2value}
\title{Convert Intergrowth z-scores/centiles to prenatal ultrasound measurements (generic)}
\usage{
igpre_zscore2value(gagedays, z = 0, var = c("hccm", "bpdcm", "ofdcm",
  "accm", "flcm"))

igpre_centile2value(gagedays, p = 50, var = c("hccm", "bpdcm", "ofdcm",
  "accm", "flcm"))
}
\arguments{
\item{gagedays}{gestational age in days}

\item{z}{z-score(s) to convert}

\item{var}{the name of the measurement to convert ("hccm", "bpdcm", "ofdcm", "accm", "flcm")}

\item{p}{centile(s) to convert (must be between 0 and 100)}
}
\description{
Convert Intergrowth z-scores/centiles to prenatal ultrasound measurements (generic)
}
\examples{
# get value for median head circumference for child at 100 gestational days
igpre_centile2value(100, 50, var = "hccm")
}
\references{
International standards for fetal growth based on serial ultrasound measurements: the Fetal Growth Longitudinal Study of the INTERGROWTH-21st Project
Papageorghiou, Aris T et al.
The Lancet, Volume 384, Issue 9946, 869-879
}

