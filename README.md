## AnchorNet (Version 1.0.0)
AnchorNet is a
package and framework to perform fast data-driven low-rank approximation for dense matrices associated with
a smooth kernel function. AnchorNet takes data and kernel function as input and does not require forming the kernel matrix.


## Main Features
* AnchorNet is generic, allowing user-defined kernel functions, both uniform and non-uniform data. 
* AnchorNet works for datasets in arbitrary dimensions.
* AnchorNet does not require forming the kernel matrix. The algorithm computes low-rank factors given data and kernel function only.
* The total complexity of AnchorNet is O(rN) for computing a rank-r approximaiton to an N-by-N kernel matrix.

## Use
AnchorNet is in active development (currently 1.0.0) and its interface may change.

## Drivers
main.m

## Publications and Preprints/Submissions
 -  [Fast Deterministic Approximation of Symmetric Indefinite Kernel Matrices with High Dimensional Datasets](https://arxiv.org/abs/2102.05215) Difeng Cai, James Nagy, Yuanzhe Xi


## Versioning
AnchorNet attempts to follow [semantic versioning](https://www.semver.org). Do note, that in
it's current (1.0.0) development, such versioning may not be strictly
followed.
