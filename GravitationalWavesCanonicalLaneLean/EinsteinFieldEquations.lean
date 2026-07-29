import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GravitationalWavesCanonicalLaneLean

structure EinsteinFieldEquationsPackage (G : SpacetimeMetricPackage) where
  stressEnergyTensor : Type u
  cosmologicalConstant : ℝ
  einsteinTensorDerived : Prop
  fieldEquationsHold : Prop
  energyConditionsSatisfied : Prop

structure EinsteinFieldEquationsEvidence {G : SpacetimeMetricPackage} (E : EinsteinFieldEquationsPackage G) where
  einsteinTensorDerivedClosed : E.einsteinTensorDerived
  fieldEquationsHoldClosed : E.fieldEquationsHold
  energyConditionsSatisfiedClosed : E.energyConditionsSatisfied

def EinsteinFieldEquationsClosed {G : SpacetimeMetricPackage} (E : EinsteinFieldEquationsPackage G) : Prop :=
  E.einsteinTensorDerived ∧ E.fieldEquationsHold ∧ E.energyConditionsSatisfied

theorem einstein_field_equations_closed_from_evidence {G : SpacetimeMetricPackage} (E : EinsteinFieldEquationsPackage G) (Ev : EinsteinFieldEquationsEvidence E) : EinsteinFieldEquationsClosed E := by
  exact And.intro Ev.einsteinTensorDerivedClosed (And.intro Ev.fieldEquationsHoldClosed Ev.energyConditionsSatisfiedClosed)

end GravitationalWavesCanonicalLaneLean
end HautevilleHouse