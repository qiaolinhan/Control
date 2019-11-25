## Introduction
* an effective robust control strategy
* for incomletely modeled or nonlinear system
* One of the most distinguished properties:
    * It utilizes a discontinuous control action, which switches between two distinctively different system structures.  
    a new type of system motion--sliding mode--exists in a specified manifold  
    
* a wide spectrum of systems: nonlinear; time-varying; discrete; large-scale; infinite-dimentional; stochastic; distributed system.

### Fundamental Theory of SMC
For general nonlinear system: $ \dot x(t)=f(x,u,t)$  
We need to design a sliding surface: $s(x)=0$  
$s(x)$ is the switch function, the order of $s(x)$ is usually the same as that of the control input.  
Then the sliding mode controller $ u(t)=[u_1(t) u_2(t) ... u_m(t)]^T $ is designed in the form of  
$ u_i(t)=[
         \begin{matrix}
         u_i^+(t), & when s_i(x)>0,\\  
         u_i^-(t), & when s_i(x)<0,
         \end{matrix}]
         i=1,2,...,m. $

* Condition 1: Sliding mode is reached in finite time, the system state trajectories can be driven onto the specified sliding surface $ s(x)=0 $ and maintained for all subsequent time.
* Condition 2: The dynamics in sliding surface $ s(x)=0 $ is stable with some specified performance. `Sliding mode dynamics`

Further, there is ` $ \dot x(t)=f(x,u^+(t),t),s(x)>0 $ `
Also, ` $ \dot x(t)=f(x,u^-(t),t),s(x)<0 $ `
$ \Rightarrow $ $ {\begin{matrix}\dot s(x)<0, & when s(x)>0\\ \dot s(x)>0,\\ when s(x)<0 \end{matrix} $ 
