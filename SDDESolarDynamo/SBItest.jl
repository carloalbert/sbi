import Pkg
# Activate environment. 
Pkg.activate("SBI") 

using Plots

"""
Module SDDESolarDynamo requires the following packages:
- StochasticDelayDiffEq
- SpecialFunctions 
Use 'add PackageName' in SBI environment 
"""

include("./SDDESolarDynamo.jl")
using .SDDESolarDynamo
params = [2.5, 3.5, 5.5, 0.1, 7.1, 0.16, 1.0]

# 929 = length of reconstructed SN (Usoskin)
# 200 warmup points
data=sn(params; Twarmup = 200, Tobs = 929)

plot(data)
