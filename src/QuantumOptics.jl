__precompile__()

module QuantumOptics

export bases, Basis, GenericBasis, CompositeBasis,
        tensor, ⊗, permutesystems,
        states, StateVector, Bra, Ket, basisstate,
                dagger, normalize, normalize!,
        operators, Operator, expect, identityoperator, ptrace, embed,
        operators_dense, DenseOperator, projector,
        operators_sparse, SparseOperator, diagonaloperator,
        operators_lazysum, LazySum,
        operators_lazyproduct, LazyProduct,
        operators_lazytensor, LazyTensor,
        super, DenseSuperOperator, SparseSuperOperator,
                spre, spost, liouvillian,
        fock, FockBasis, number, destroy, create,
                fockstate, coherentstate, qfunc,
        spin, SpinBasis, sigmax, sigmay, sigmaz, sigmap, sigmam, spinup, spindown,
        subspace, SubspaceBasis, projector,
        particle, PositionBasis, MomentumBasis, samplepoints, gaussianstate,
                positionoperator, momentumoperator, potentialoperator, FFTOperator,
        nlevel, NLevelBasis, transition, nlevelstate,
        nparticlebasis, BosonicNParticleBasis, FermionicNParticleBasis,
                nparticleoperator, expect_firstquantization,
        metrics, tracenorm, tracenorm_general, tracedistance, tracedistance_general,
                entropy_vn, fidelity,
        spectralanalysis, operatorspectrum, operatorspectrum_hermitian,
                eigenstates, eigenstates_hermitian, groundstate, simdiag,
        timeevolution_simple,
        timeevolution, diagonaljumps,
        cumulantexpansion,
        correlationexpansion,
        steadystate,
        timecorrelations


include("sortedindices.jl")
include("bases.jl")
include("states.jl")
include("operators.jl")
include("operators_dense.jl")
include("sparsematrix.jl")
include("operators_sparse.jl")
include("operators_lazysum.jl")
include("operators_lazyproduct.jl")
include("operators_lazytensor.jl")
include("superoperators.jl")
include("spin.jl")
include("fock.jl")
include("subspace.jl")
include("particle.jl")
include("nlevel.jl")
include("nparticles.jl")
include("metrics.jl")
include("ode_dopri.jl")
include("timeevolution_simple.jl")
module timeevolution
    include("master.jl")
    include("schroedinger.jl")
    include("mcwf.jl")
    using .timeevolution_master
    using .timeevolution_schroedinger
    using .timeevolution_mcwf
end
diagonaljumps = timeevolution.timeevolution_mcwf.diagonaljumps
include("cumulantexpansion.jl")
include("correlationexpansion.jl")
include("steadystate.jl")
include("timecorrelations.jl")
include("spectralanalysis.jl")

using .bases
using .states
using .operators
using .operators_dense
using .operators_sparse
using .operators_lazysum
using .operators_lazyproduct
using .operators_lazytensor
using .superoperators
using .spin
using .fock
using .subspace
using .particle
using .nlevel
using .nparticles
using .metrics
using .spectralanalysis
using .timecorrelations


end # module
