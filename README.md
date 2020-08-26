# pysolve - Solving systems of equations
Python3 update from [pylinsolve](https://github.com/gpetrini/pylinsolve). All credits and special thanks to [Kenn Takara](https://github.com/kennt). Follow the updated version of the [Readme file](https://github.com/kennt/monetary-economics).

The purpose of this tool is to aid in expressing and solving
sets of equations using Python.

This tool will take a textual description of the equations,
and then run the solver iteratively until it converges to 
a solution.

The solver provides the following choices for solving:
* Gauss-Seidel
* Newton-Raphson
* Broyden

It also uses parts of sympy to aid in parsing the equations and
evaluating the equations.

The initial motivation for this tool was to solve economic
models based on Stock Flow Consistent (SFC) models.

### Installation

```python
pip install pysolve3
```

### Usage
1. Define the variables used in the model.
2. Define the parameters used in the model.
3. Define the rules (equations)
4. Solve

### Simple example
This example is taken Chapter 3 of the book "Monetary Economics 2e" by
Lavoie and Godley, 2012.
```python
from pysolve3.model import Model
from pysolve3.utils import round_solution, is_close

model = Model()

model.set_var_default(0)
model.var('Cd', desc='Consumption goods demand by households')
model.var('Cs', desc='Consumption goods supply')
model.var('Gs', desc='Government goods, supply')
model.var('Hh', desc='Cash money held by households')
model.var('Hs', desc='Cash money supplied by the government')
model.var('Nd', desc='Demand for labor')
model.var('Ns', desc='Supply of labor')
model.var('Td', desc='Taxes, demand')
model.var('Ts', desc='Taxes, supply')
model.var('Y', desc='Income = GDP')
model.var('YD', desc='Disposable income of households')

# This is a shorter way to declare multiple variables
# model.vars('Y', 'YD', 'Ts', 'Td', 'Hs', 'Hh', 'Gs', 'Cs',
#            'Cd', 'Ns', 'Nd')
model.param('Gd', desc='Government goods, demand', default=20)
model.param('W', desc='Wage rate', default=1)
model.param('alpha1', desc='Propensity to consume out of income', default=0.6)
model.param('alpha2', desc='Propensity to consume out of wealth', default=0.4)
model.param('theta', desc='Tax rate', default=0.2)

model.add('Cs = Cd')
model.add('Gs = Gd')
model.add('Ts = Td')
model.add('Ns = Nd')
model.add('YD = (W*Ns) - Ts')
model.add('Td = theta * W * Ns')
model.add('Cd = alpha1*YD + alpha2*Hh(-1)')
model.add('Hs - Hs(-1) =  Gd - Td')
model.add('Hh - Hh(-1) = YD - Cd')
model.add('Y = Cs + Gs')
model.add('Nd = Y/W')

# solve until convergence
for _ in range(100):
    model.solve(iterations=100, threshold=1e-4)

    prev_soln = model.solutions[-2]
    soln = model.solutions[-1]
    if is_close(prev_soln, soln, atol=1e-3):
        break

print(round_solution(model.solutions[-1], decimals=1))

```

### Tutorial

A short tutorial with more explanation is available [here](https://github.com/gpetrini/pysolve3/blob/master/godley_%26_lavoie/extra/pysolve%20tutorial.ipynb)

### More complex examples

For additional examples, view the iPython notebooks [here](http://nbviewer.jupyter.org/github/gpetrini/pysolve3/tree/master/godley_%26_lavoie/)

### To do list
##### Data import features
##### Sparse matrix support (memory improvements for large systems)
##### Documentation

### Changelog

#### Python3 Version

##### 0.1.0

- Init commit
