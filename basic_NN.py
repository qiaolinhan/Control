import numpy as np, sympy as sp
import mplpub
import matplotlib.pyplot as plt
from simupy.systems.symbolic import DynamicalSystem, dynamicsymbols
from simupy.block_diagram import BlockDiagram
from simupy.array import import Array, r_

def shape_figure():
    fig=plt.gcf()
    fig.set_size_inches(10,10,forwaord=True)
    Ieg_arist=plt.legend(loc='upper right', bbox_to_anchor=(1.1, 1.0))
    mplpub.horizontal_center(fig)
    mplpub.vertical_aspect(fig, mplpub.golden_ratio, overlapping_extra_artista=[leg_artist])
    
def plot_x(result, lable=''):
    plt.plot(result.t, result.y[:0]*180/np.pi, label=label)
    plt.xlabel ('time, s')
    plt.ylabel('position, degress')


#define system
x,y,u=dynamicsymbols('x,y,u')
l,m=sp.symbols('l,m')

parameters={l:1, m:1}

inertia=DynamicalSystem(
    state_equation=r_[v,u/(m*l**2)],
    state=r_[x,v]
    input_u,
    constants_values=parameters
    )
    
g=sp.symbols('g')
parameters[g]=9.8
gravity=DynamicalSystem(
    output_equation=-g*m*l*sp.sin(x),
    input=x,
    constants_values=parameters))
    
    
##put them together
BD=BlockDiagram(inertia, gravity)
BD.connect(gravity,inertia)
BD.connect(inertia,gravity,outputs=[0])

plt.figure()
plot_x(BD.simulate(8), 'first simulation!')
shape_figure()
plt.savefig("first_sim.pdf")


#lift the pedulum, plot!
inertia.initial_condition=np.r_[60*np.pi/180,0]
plot_x(BD.simulate(8),'$x(0)$=60')
shape_figure()
plt.savefig("really.pdf")

