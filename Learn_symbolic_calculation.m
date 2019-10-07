syms a b c x
y=a*x^2+b*x+c;
soln=solve(y==0,x);
ysoln=subs(soln,[a,b,c],[3,2,-6]);
ysoln=simplify(ysoln);
vpa(ysoln,9)%vpa=Variable Precision Arithmetic
%%
syms x
g=int(cos(x)^2,x)
gdef=int(cos(x)^2,x,0,2*pi)
%%
syms x
taylor(exp(x))
%%
syms x y
f(x,y)=sin(x^2+y^2);
ezsurf(f(x,y),[-pi/2,pi/2,-pi/2,pi/2]);
%symbolic ploting functions---->ezplot ezplot3 ezcountour ezmesh ezsurf ezpolar 
