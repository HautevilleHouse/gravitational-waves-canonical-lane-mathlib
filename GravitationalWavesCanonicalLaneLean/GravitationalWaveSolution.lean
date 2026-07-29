import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GravitationalWavesCanonicalLaneLean

structure GravitationalWaveSolutionPackage {G : SpacetimeMetricPackage} {E : EinsteinFieldEquationsPackage G} (L : LinearizedGravityPackage E) where
  wavePolarization : Type u
  propagationSpeed : ℝ
  transverseTraceless : Prop
  solutionConstructed : Prop
  nullCondition : Prop

structure GravitationalWaveSolutionEvidence {G : SpacetimeMetricPackage} {E : EinsteinFieldEquationsPackage G} {L : LinearizedGravityPackage E} (W : GravitationalWaveSolutionPackage L) where
  transverseTracelessClosed : W.transverseTraceless
  solutionConstructedClosed : W.solutionConstructed
  nullConditionClosed : W.nullCondition

def GravitationalWaveSolutionClosed {G : SpacetimeMetricPackage} {E : EinsteinFieldEquationsPackage G} {L : LinearizedGravityPackage E} (W : GravitationalWaveSolutionPackage L) : Prop :=
  W.transverseTraceless ∧ W.solutionConstructed ∧ W.nullCondition

theorem gravitational_wave_solution_closed_from_evidence {G : SpacetimeMetricPackage} {E : EinsteinFieldEquationsPackage G} {L : LinearizedGravityPackage E} (W : GravitationalWaveSolutionPackage L) (Ev : GravitationalWaveSolutionEvidence W) : GravitationalWaveSolutionClosed W := by
  exact And.intro Ev.transverseTracelessClosed (And.intro Ev.solutionConstructedClosed Ev.nullConditionClosed)

end GravitationalWavesCanonicalLaneLean
end HautevilleHouse