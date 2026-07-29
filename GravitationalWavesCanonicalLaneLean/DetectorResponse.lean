import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GravitationalWavesCanonicalLaneLean

structure DetectorResponse where
  detectorArms : Type u
  laserInterferometry : Prop
  strainSensitivity : Prop
  noiseBudget : Prop

structure DetectorEvidence (D : DetectorResponse) where
  laserInterferometryClosed : D.laserInterferometry
  strainSensitivityClosed : D.strainSensitivity
  noiseBudgetClosed : D.noiseBudget

def DetectorClosed (D : DetectorResponse) : Prop :=
  D.laserInterferometry ∧ D.strainSensitivity ∧ D.noiseBudget

theorem detector_closed_from_evidence (D : DetectorResponse) (E : DetectorEvidence D) : DetectorClosed D := by
  exact And.intro E.laserInterferometryClosed (And.intro E.strainSensitivityClosed E.noiseBudgetClosed)

end GravitationalWavesCanonicalLaneLean
end HautevilleHouse