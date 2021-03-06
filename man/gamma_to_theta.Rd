% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mod_baseline.R
\name{gamma_to_theta}
\alias{gamma_to_theta}
\title{Transform raw intercept function to constrained one}
\usage{
gamma_to_theta(gammas)
}
\value{
Returns a \code{tf.tensor} containing theta_0 to theta_K
}
\description{
Converts raw intercept function, which is the output of
    \code{\link{mod_baseline}}, to the valid intercept function, which
    is used to evaluate the likelihood and it's gradient.
    Namely, theta_1 = gamma_1, theta_k = theta_1 + sum_{i = 1}^{k-1}
    exp(gamma_i) and by convention theta_0 = -Inf, theta_K = Inf.
}
\examples{
gammas <- tf$constant(c(0, -1, -1, -1), shape = c(1L, 4L), dtype = "float32")
gamma_to_theta(gammas)
}
