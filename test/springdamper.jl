using ExampleComponents
using OrdinaryDiffEq, ModelingToolkit

@mtkbuild springdamper = SpringDamper()
prob = ODEProblem(springdamper, [springdamper.x => 2.0], (0.0, 12.0))
sol = solve(prob)

using Plots
plot(sol)
savefig("plot.png")