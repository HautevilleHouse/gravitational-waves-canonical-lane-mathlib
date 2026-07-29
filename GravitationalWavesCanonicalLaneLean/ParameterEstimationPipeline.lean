import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GravitationalWavesCanonicalLaneLean.SourceModelingFramework
import HautevilleHouse.GravitationalWavesCanonicalLaneLean.DetectorResponseModel

/-!
# Parameter Estimation Pipeline Package
-/

namespace HautevilleHouse
namespace GravitationalWavesCanonicalLaneLean

structure ParameterEstimationPipeline {O : GravitationalWaveObservables}
    {D : DetectorResponseModel O} {S : SourceModelingFramework} where
  bayesianInferenceEngine : Prop
  priorDistributionsDefined : Prop
  likelihoodComputed : Prop
  posteriorSamplingConverged : Prop
  parameterUncertaintiesQuantified : Prop

structure ParameterEstimationPipelineEvidence {O : GravitationalWaveObservables}
    {D : DetectorResponseModel O} {S : SourceModelingFramework}
    (P : ParameterEstimationPipeline D S) where
  bayesianInferenceEngineClosed : P.bayesianInferenceEngine
  priorDistributionsDefinedClosed : P.priorDistributionsDefined
  likelihoodComputedClosed : P.likelihoodComputed
  posteriorSamplingConvergedClosed : P.posteriorSamplingConverged
  parameterUncertaintiesQuantifiedClosed : P.parameterUncertaintiesQuantified

def ParameterEstimationPipelineClosed {O : GravitationalWaveObservables}
    {D : DetectorResponseModel O} {S : SourceModelingFramework}
    (P : ParameterEstimationPipeline D S) : Prop :=
  P.bayesianInferenceEngine ∧ P.priorDistributionsDefined ∧
  P.likelihoodComputed ∧ P.posteriorSamplingConverged ∧
  P.parameterUncertaintiesQuantified

theorem parameter_estimation_pipeline_closed_from_evidence
    {O : GravitationalWaveObservables} {D : DetectorResponseModel O}
    {S : SourceModelingFramework} (P : ParameterEstimationPipeline D S)
    (E : ParameterEstimationPipelineEvidence P) :
    ParameterEstimationPipelineClosed P := by
  exact And.intro E.bayesianInferenceEngineClosed
    (And.intro E.priorDistributionsDefinedClosed
      (And.intro E.likelihoodComputedClosed
        (And.intro E.posteriorSamplingConvergedClosed
          E.parameterUncertaintiesQuantifiedClosed)))

end GravitationalWavesCanonicalLaneLean
end HautevilleHouse