import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GravitationalWavesCanonicalLaneLean

structure DetectionPackage where
  interferometerModel : Type u
  strainSensitivity : Prop
  signalToNoiseRatio : Prop
  templateBank : Prop
  eventConfidence : Prop

structure DetectionEvidence (D : DetectionPackage) where
  interferometerModelClosed : Nonempty D.interferometerModel
  strainSensitivityClosed : D.strainSensitivity
  signalToNoiseRatioClosed : D.signalToNoiseRatio
  templateBankClosed : D.templateBank
  eventConfidenceClosed : D.eventConfidence

def DetectionClosed (D : DetectionPackage) : Prop :=
  Nonempty D.interferometerModel ∧ D.strainSensitivity ∧ D.signalToNoiseRatio ∧ D.templateBank ∧ D.eventConfidence

theorem detection_closed_from_evidence (D : DetectionPackage) (E : DetectionEvidence D) : DetectionClosed D := by
  exact And.intro E.interferometerModelClosed (And.intro E.strainSensitivityClosed (And.intro E.signalToNoiseRatioClosed (And.intro E.templateBankClosed E.eventConfidenceClosed)))

end GravitationalWavesCanonicalLaneLean
end HautevilleHouse
