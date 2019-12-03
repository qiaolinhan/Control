### Sliding Surface Design
3 kinds of sliding surfaces:
* linear sliding surface
* integral sliding surface
* terminal sliding surface

#### 1. Linear sliding Surface
sinlicity of implementation $ \rightarrow $ commonly used in SMC design  
There are 2 approaches to design linear sliding surface  
##### Regular Form
Consider nonlinear system:  
$ \dot x(t)=f(x,t)+B(x,t)u(t) $  
Where $ f(x,t)\in \mathbf{R}^n $ and $ B(x,t)\in\mathbf{R}^m$ are assumed to be continuous with bounded continuous derivatives with respect to $ x $. $ B(x,t) $ is bouned away from zero at any time.  
Applying an appropriate diffeomorphic transformation
\begin{align} z(t)=\left[\begin{array}{c}z_1(t)\\ z_2(t)\\\end{array}\right]=Tx(t)\end{align}  
The system can be written as  
\begin{equation}\left[\begin{array}{cc}\dot z_1(t)\\\dot z_2(t)\\\end{array}\right]=\left[\begin{array}{cc}\hat f_1(z,t)\\\hat f_2(z,t)\\\end{array}\right]+\left[ \begin{array}{cc}0\\ \hat B_1(z,t)end{array} \right] u(t)\end{equation}
Design a switching function as $ s(z)=z_2(t)+h(z_1(t)) $, $ s(z)=0 $, thus $ z_2(t)=-h(z_1(t)) $  
For a linear time-invariant (LTI) system of the form
$ \dot x(t)=Ax(t)+Bu(t) $  
The matrix $ B $ is assumed to have full column rank and the pair $ (A,B) $ is assumed to be controllable.
it is well known that for the controllable system (1.3) there exists a nonsingular transformation.
* Sliding mode dynamics reduced order

#### 2. Integral Sliding Surface
The order of the linear sliding mode dynamics is ($ n-m $), with $ n $ being the dimension of the state space and $ m $ being the dimendion of the control input.    
The integrial sliding surface, the order of the sliding motion euation is the same as that of the original system, rather than being reduced by the dimension of the control input-->`The robustness of the system can be guaranteed throughout an entire response of the system starting from the initial time instance`.  
\begin{equation}\dot x(t)=Ax(t)+B(u(t)+d(x,t))\end{equation}  
Where $ d(x,t) $ is a nonlinear perturbation with known upper bound $ d_o(x,t) $, that is $ |d(x,t)|<d_o(x,t) $.  
$ u_o(t) $-->linear feedback control $ u_o(t)=Ku(t) $  
Design integrial switching function as
\begin{equation} s(x)=Cx(t)-Cx(t_0)-C\int_{t}^{0}(A+BK)x(\tau)dt\end{equation}
Where $ C $ is the parameter matrix-->$ CB $ nonsingular.  
When $ t=t_0 $, $ s(x)|_{t=t_{0}}=0 $-->
