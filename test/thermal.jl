using Plots
using ExampleComponents

sol = SolveSimpleTransient()
display(plot(sol))
savefig("thermal.png")