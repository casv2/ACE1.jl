
using Pkg.Artifacts

datadir = joinpath(artifact"acedata_v0.8.1", "ACEData-0.8.1")
testsdir = joinpath(datadir, "tests")
traindir = joinpath(datadir, "trainingsets")
potsdir = joinpath(datadir, "potentials")

# unzip the eam potential
if !isfile(joinpath(traindir, "w_eam4.fs"))
   eamzip = joinpath(traindir, "w_eam4.fs.zip")
   run(`unzip $eamzip -d $traindir`)
end
