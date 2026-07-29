import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GravitationalWavesCanonicalLaneLean

structure GravitationalWaveSource where
  sourceType : Type u
  massMomentIntegral : Prop
  compactness : Prop
  asymptoticFlatness : Prop

structure SourceEvidence (S : GravitationalWaveSource) where
  massMomentIntegralClosed : S.massMomentIntegral
  compactnessClosed : S.compactness
  asymptoticFlatnessClosed : S.asymptoticFlatness

def SourceClosed (S : GravitationalWaveSource) : Prop :=
  S.massMomentIntegral ∧ S.compactness ∧ S.asymptoticFlatness

theorem source_closed_from_evidence (S : GravitationalWaveSource) (E : SourceEvidence S) : SourceClosed S := by
  exact And.intro E.massMomentIntegralClosed (And.intro E.compactnessClosed E.asymptoticFlatnessClosed)

end GravitationalWavesCanonicalLaneLean
end HautevilleHouse