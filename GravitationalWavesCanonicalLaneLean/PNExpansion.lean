import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GravitationalWavesCanonicalLaneLean

structure PNExpansion where
  order : ℕ
  coefficients : List ℚ
  bindingEnergy : Prop
  flux : Prop
  bindingEnergyClosed : bindingEnergy
  fluxClosed : flux

structure PNExpansionEvidence (P : PNExpansion) where
  bindingEnergyClosed : P.bindingEnergy
  fluxClosed : P.flux

def PNExpansionClosed (P : PNExpansion) : Prop :=
  P.bindingEnergy ∧ P.flux

theorem pn_expansion_closed_from_evidence (P : PNExpansion) (E : PNExpansionEvidence P) : PNExpansionClosed P := by
  exact And.intro E.bindingEnergyClosed E.fluxClosed

end GravitationalWavesCanonicalLaneLean
end HautevilleHouse