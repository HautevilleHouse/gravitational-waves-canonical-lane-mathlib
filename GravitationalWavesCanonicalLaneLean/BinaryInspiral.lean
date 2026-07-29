import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GravitationalWavesCanonicalLaneLean

structure BinaryInspiralPackage {G : SpacetimeMetricPackage} {E : EinsteinFieldEquationsPackage G} {L : LinearizedGravityPackage E} (W : GravitationalWaveSolutionPackage L) where
  sourceOrbit : Type u
  inspiralPhase : Prop
  chirpMass : ℝ
  waveformTemplate : Prop
  matchFiltering : Prop

structure BinaryInspiralEvidence {G : SpacetimeMetricPackage} {E : EinsteinFieldEquationsPackage G} {L : LinearizedGravityPackage E} {W : GravitationalWaveSolutionPackage L} (B : BinaryInspiralPackage W) where
  inspiralPhaseClosed : B.inspiralPhase
  waveformTemplateClosed : B.waveformTemplate
  matchFilteringClosed : B.matchFiltering

def BinaryInspiralClosed {G : SpacetimeMetricPackage} {E : EinsteinFieldEquationsPackage G} {L : LinearizedGravityPackage E} {W : GravitationalWaveSolutionPackage L} (B : BinaryInspiralPackage W) : Prop :=
  B.inspiralPhase ∧ B.waveformTemplate ∧ B.matchFiltering

theorem binary_inspiral_closed_from_evidence {G : SpacetimeMetricPackage} {E : EinsteinFieldEquationsPackage G} {L : LinearizedGravityPackage E} {W : GravitationalWaveSolutionPackage L} (B : BinaryInspiralPackage W) (Ev : BinaryInspiralEvidence B) : BinaryInspiralClosed B := by
  exact And.intro Ev.inspiralPhaseClosed (And.intro Ev.waveformTemplateClosed Ev.matchFilteringClosed)

end GravitationalWavesCanonicalLaneLean
end HautevilleHouse