function M_new = CompressedMatrix (M,tol)
%% INPUTS :
%           M:          Original Matrix 
%           tol :       The Percentage of tolelence for lossing data for example
%                       0.15 ( For example  is 0.1 )

[m,n]=size(M);
if m>n
    k=n;
else
    k=m;
end
[U S V]=svd(M);
y=diag(S)';
yn=y;
%%
z=sum(y(1:k))/sum(y);
while z>1-tol
    yn=yn(1:k-1);
    k=k-1;
    z=sum(y(1:k))/sum(y);
end
%%
un=U(:,1:k);
vn=V(:,1:k);

M_new=un*diag(yn)*vn';