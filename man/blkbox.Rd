% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/blkbox.R
\name{blkbox}
\alias{blkbox}
\title{Train and Test datasets.}
\usage{
blkbox(data, labels, holdout, holdout.labels, ntrees, mTry, Kernel, Gamma,
  exclude, max.depth, xgtype = "binary:logistic", seed)
}
\arguments{
\item{data}{Data partitioned by into a list or a data frame of training data where the features correspond to columns and the samples are rows. As data size increases the memory required and run time of some algorithms may compound exponentially.}

\item{labels}{a character or numeric vector that contains the training class identifiers for the samples in the data frame. Must appear in the same order. Does not need to be specified if using a partitoned data list.}

\item{holdout}{a data frame of holdout of testing data where the features correspond to columns and the samples are the rows. Does not need to be specified if using a partitoned data list.}

\item{holdout.labels}{a character or numeric vector that contains the holdout or testing class identifiers for the samples in the holdout data frame. Does not need to be specified if using a partitoned data list.}

\item{ntrees}{The number of trees used in the ensemble based learners (randomforest, bigrf, party, bartmachine). default = 500.}

\item{mTry}{The number of features sampled at each node in the trees of ensemble based learners (randomforest, bigrf, party, bartmachine). default = sqrt(number of features).}

\item{Kernel}{The type of kernel used in the support vector machine algorithm (linear, radial, sigmoid, polynomial). default = "linear".}

\item{Gamma}{dvanced parameter, defines the distance of which a single training example reaches. Low gamma will produce a SVM with softer boundaries, as Gamma increases the boundaries will eventually become restricted to their singular support vector. default is 1/(ncol - 1).}

\item{exclude}{removes certain algorithms from analysis - to exclude random forest which you would set exclude = "randomforest". The algorithms each have their own numeric identifier. randomforest = "randomforest", knn = "kknn", bartmachine = "bartmachine", party = "party", glmnet = "GLM", pam = "PamR", nnet = "nnet", svm = "SVM", xgboost = "xgboost".}

\item{max.depth}{the maximum depth of the tree in xgboost model, default is sqrt(ncol(data)).}

\item{xgtype}{either "binary:logistic" or "reg:linear" for logistic regression or linear regression respectively.}

\item{seed}{Sets the seed for the bartMachine model.}
}
\description{
This standard function will allow multiple machine learning algorithms to be utilized on the same data to determine, which algorithm may be the most appropriate.
}
\examples{
\donttest{
my_data <- iris[1:100, 1:4]
my_labels <- as.character(iris[1:100, 5])
my_partition = Partition(data = my_data, labels = my_labels)
model_1 <- blkbox(data = my_partition)
}
}
\author{
Zachary Davies, Boris Guennewig
}
\keyword{Learning,}
\keyword{Machine}
\keyword{Testing}
\keyword{Training,}
\keyword{blkbox,}

