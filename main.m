%==========================================
%===        Anchor Net Method
%===    Ref. "FAST DETERMINISTIC APPROXIMATION OF
%===    SYMMETRIC INDEFINITE KERNEL MATRICES WITH
%===    HIGH DIMENSIONAL DATASETS"
%===        by D.Cai, J.Nagy, Y.Xi
%==========================================

%--------       Data       --------
n = 5e3; d = 10; X = randn(n,d)+1;

%--- standardized data ---
stdX = std(X);
X = (X-repmat(mean(X),n,1))./repmat(stdX,n,1);
radius = max(pdist2(X,zeros(1,d)));

% X must be a n-by-d matrix for n points in a d dimensional space

%--------       Kernel       --------
sig = 2*radius;
fc = @(x,y) exp(pdist2(x,y).^2/sig^2);
A = fc(X,X); 
% sss=svd(A);
%%%! Make sure the singular values decay rapidly 
%%%! otherwise low-rank approximation is meaningless

%--------       Anchor Net Method      --------
p = 8; choice = 3; % p controls the size of the anchor net
[ xox, fac ] = AnchorNetApp( X, p, choice, fc );
Err = fc(X,X) - fac{1}*fac{2};
r = size(fac{1},2)
error = abs(eigs(Err,1))/eigs(fc(X,X),1)

