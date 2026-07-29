import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GravitationalWavesCanonicalLaneLean

structure ParameterEstimation where
  sourceParameters : Type u
  estimator : Type v
  uncertaintyQuantification : Prop
  correlationStructure : Prop
  samplerConvergence : Prop
  uncertaintyQuantificationClosed : uncertaintyQuantification
  correlationStructureClosed : correlationStructure
  samplerConvergenceClosed : samplerConvergence

structure ParameterEstimationEvidence (P : ParameterEstimation) where
  uncertaintyQuantificationClosed : P.uncertaintyQuantification
  correlationStructureClosed : P.correlationStructure
  samplerConvergenceClosed : P.samplerConvergence

def ParameterEstimationClosed (P : ParameterEstimation) : Prop :=
  P.uncertaintyQuantification ∧ P.correlationStructure ∧ P.samplerConvergence

theorem parameter_estimation_closed_from_evidence (P : ParameterEstimation) (E : ParameterEstimationEvidence P) : ParameterEstimationClosed P := by
  exact And.intro E.uncertaintyQuantificationClosed (And.intro E.correlationStructureClosed E.samplerConvergenceClosed)

end GravitationalWavesCanonicalLaneLean
end HautevilleHouse