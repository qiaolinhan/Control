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
Applying an appropriate diffeomorphic transformation $ \begin{align} z(t)=\left[\begin{array}z_1(t)\\ z_2(t)\end{array}\right]=Tx(t)\end{align} $
