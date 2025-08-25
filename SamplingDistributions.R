
################################################################################
######################### SAMPLING DISTRIBUTIONS ########################




## Student t distribution (n degrees of freedom)

dt(x, df=n) ## f(x)
pt(q, df=n) ## F(x)=P(X<=x)
qt(p, df=n) ## quantile: the value a such that P(X<=a) = p
rt(n, df=n) ## obtain a random sample with size n from a t distribution

## Chi-square distributin (n degrees of freedom)

dchisq(x, df=n) ## f(x)
pchisq(q, df=n) ## F(x)=P(X<=x)
qchisq(p, df=n) ## quantile: the value a such that P(X<=a) = p
rchisq(n, df=n) ## obtain a random sample with size n from a chi-square distribution


## F distribution (n1 and n2 degrees of freedom)


df(x, df1=n1, df2=n2) ## f(x)
pf(q, df1=n1, df2=n2) ## F(x)=P(X<=x)
qf(p, df1=n1, df2=n2) ## quantile: the value a such that P(X<=a) = p
rf(n, df1=n1, df2=n2) ## obtain a random sample with size n from an F distribution

