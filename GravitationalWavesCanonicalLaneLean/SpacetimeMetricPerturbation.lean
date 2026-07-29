import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GravitationalWavesCanonicalLaneLean

structure SpacetimeMetricPackage (G : GravitationalAdmittedObject) where
  flatBackground : Prop
  perturbationTensor : Type u
  linearizedEinsteinEquation : Prop
  gaugeCondition : Prop
  waveEquationHolds : Prop

structure SpacetimeMetricEvidence {G : GravitationalAdmittedObject} (P : SpacetimeMetricPackage G) where
  flatBackgroundClosed : P.flatBackground
  perturbationTensorClosed : Nonempty P.perturbationTensor
  linearizedEinsteinEquationClosed : P.linearizedEinsteinEquation
  gaugeConditionClosed : P.gaugeCondition
  waveEquationHoldsClosed : P.waveEquationHolds

def SpacetimeMetricClosed {G : GravitationalAdmittedObject} (P : SpacetimeMetricPackage G) : Prop :=
  P.flatBackground ∧ Nonempty P.perturbationTensor ∧ P.linearizedEinsteinEquation ∧ P.gaugeCondition ∧ P.waveEquationHolds

theorem spacetime_metric_closed_from_evidence {G : GravitationalAdmittedObject} (P : SpacetimeMetricPackage G) (E : SpacetimeMetricEvidence P) : SpacetimeMetricClosed P := by
  exact And.intro E.flatBackgroundClosed (And.intro E.perturbationTensorClosed (And.intro E.linearizedEinsteinEquationClosed (And.intro E.gaugeConditionClosed E.waveEquationHoldsClosed)))

end GravitationalWavesCanonicalLaneLean
end HautevilleHouse
