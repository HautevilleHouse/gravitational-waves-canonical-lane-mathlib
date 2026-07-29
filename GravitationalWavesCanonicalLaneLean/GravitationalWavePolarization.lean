import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GravitationalWavesCanonicalLaneLean

structure PolarizationPackage where
  plusMode : Prop
  crossMode : Prop
  scalarMode : Prop
  tensorStructure : Type u
  lorentzInvariance : Prop

structure PolarizationEvidence (P : PolarizationPackage) where
  plusModeClosed : P.plusMode
  crossModeClosed : P.crossMode
  scalarModeClosed : P.scalarMode
  tensorStructureClosed : Nonempty P.tensorStructure
  lorentzInvarianceClosed : P.lorentzInvariance

def PolarizationClosed (P : PolarizationPackage) : Prop :=
  P.plusMode ∧ P.crossMode ∧ P.scalarMode ∧ Nonempty P.tensorStructure ∧ P.lorentzInvariance

theorem polarization_closed_from_evidence (P : PolarizationPackage) (E : PolarizationEvidence P) : PolarizationClosed P := by
  exact And.intro E.plusModeClosed (And.intro E.crossModeClosed (And.intro E.scalarModeClosed (And.intro E.tensorStructureClosed E.lorentzInvarianceClosed)))

end GravitationalWavesCanonicalLaneLean
end HautevilleHouse
