import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GravitationalWavesCanonicalLaneLean

structure LinearizedGravityPackage {G : SpacetimeMetricPackage} (E : EinsteinFieldEquationsPackage G) where
  backgroundMetric : Type u
  perturbationMetric : Type v
  linearizedEquations : Prop
  gaugeCondition : Prop
  waveEquationDerived : Prop

structure LinearizedGravityEvidence {G : SpacetimeMetricPackage} {E : EinsteinFieldEquationsPackage G} (L : LinearizedGravityPackage E) where
  linearizedEquationsClosed : L.linearizedEquations
  gaugeConditionClosed : L.gaugeCondition
  waveEquationDerivedClosed : L.waveEquationDerived

def LinearizedGravityClosed {G : SpacetimeMetricPackage} {E : EinsteinFieldEquationsPackage G} (L : LinearizedGravityPackage E) : Prop :=
  L.linearizedEquations ∧ L.gaugeCondition ∧ L.waveEquationDerived

theorem linearized_gravity_closed_from_evidence {G : SpacetimeMetricPackage} {E : EinsteinFieldEquationsPackage G} (L : LinearizedGravityPackage E) (Ev : LinearizedGravityEvidence L) : LinearizedGravityClosed L := by
  exact And.intro Ev.linearizedEquationsClosed (And.intro Ev.gaugeConditionClosed Ev.waveEquationDerivedClosed)

end GravitationalWavesCanonicalLaneLean
end HautevilleHouse