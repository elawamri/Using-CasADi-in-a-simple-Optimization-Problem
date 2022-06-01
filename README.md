# Using-CasADi-in-a-simple-Optimization-Problem
## Problem Statement
A farmer has a field of 100000 _meter-squared_ and wants to grow apples and bananas with a
constrain that he can’t use more than 2000 _kg_ of fertilizer, the table below shows the
parameters that govern the farming process
| Type    | Aread Needed _(meter-squared/ton)_ | Fertilizer Needed _(kg/ton)_ | Profit _(EGP/ton)_                                             |
| ------- | -------------                      | -------------                | -------------                                                  |
| Apples  | 4000                               | 60                           | <img src="https://latex.codecogs.com/svg.image?7000-100x_{1}"> |
| Bananas | 3000                               | 80                           | <img src="https://latex.codecogs.com/svg.image?6000-200x_{2}"> |

Where <img src="https://latex.codecogs.com/svg.image?x_{1},x_{2}"> are the number of tons for apples and bananas respectively , the
objective of the optimization is to find the number of tons for each apples and bananas
that achieve the maximum profit and without breaking the constraints of the available
area and the amount of fertilizers needed
## Standard optimization problem representation
The objective function can be defined as quadratic programming problem as presented
below,
<p align="center">
<img src="https://latex.codecogs.com/svg.image?\mathbf{\min_{&space;x}}\;&space;&space;{c}^{T}x&plus;{x}^{T}Qx">
</p>
subject to,
<p align="center">
<img src="https://latex.codecogs.com/svg.image?Ax\leq&space;b&space;,x_{l}\leq&space;x,">
</p>
which means that,
<p align="center">
<img src="https://latex.codecogs.com/svg.image?g(x)=Ax-b\leq&space;0">
</p>
where,
<p align="center">
<img src="https://latex.codecogs.com/svg.image?Q&space;=&space;\begin{pmatrix}100&space;&&space;0&space;&space;\\&space;0&space;&&space;200&space;&space;\\\end{pmatrix},&space;c&space;=&space;\begin{pmatrix}-7000&space;\\-6000\end{pmatrix},A&space;=&space;\begin{pmatrix}4000&space;&3000&space;&space;\\&space;60&space;&&space;80&space;&space;\\\end{pmatrix}&space;">
</p>

<p align="center">
<img src="https://latex.codecogs.com/svg.image?b&space;=&space;\begin{pmatrix}&space;100000\\2000\end{pmatrix},x_{l}=\begin{pmatrix}0&space;\\0\end{pmatrix}&space;">
</p>

## Matlab-CasADi output
```MATLAB
solx = [18.4146,8.78049]
```
Which means that the maximum profit can be achieved by farming **_18.4146 tons_** of
apples and **_8.78049 tons_** of bananas.
