using ExampleComponents
using OrdinaryDiffEq, ModelingToolkit

@mtkbuild springdamper = SpringDamper()
prob = ODEProblem(springdamper, [springdamper.x => 1.0], (0.0, 1.0))
sol = solve(prob)

using Plots
plot(sol)