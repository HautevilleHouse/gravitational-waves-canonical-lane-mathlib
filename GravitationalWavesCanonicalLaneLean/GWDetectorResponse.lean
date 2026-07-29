import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GravitationalWavesCanonicalLaneLean

structure GWDetectorResponse where
  antennaPatterns : Prop
  noiseCurve : Prop
  calibrationUncertainty : Prop
  antennaPatternsClosed : antennaPatterns
  noiseCurveClosed : noiseCurve
  calibrationUncertaintyClosed : calibrationUncertainty

structure GWDetectorResponseEvidence (D : GWDetectorResponse) where
  antennaPatternsClosed : D.antennaPatterns
  noiseCurveClosed : D.noiseCurve
  calibrationUncertaintyClosed : D.calibrationUncertainty

def GWDetectorResponseClosed (D : GWDetectorResponse) : Prop :=
  D.antennaPatterns ∧ D.noiseCurve ∧ D.calibrationUncertainty

theorem gw_detector_response_closed_from_evidence (D : GWDetectorResponse) (E : GWDetectorResponseEvidence D) : GWDetectorResponseClosed D := by
  exact And.intro E.antennaPatternsClosed (And.intro E.noiseCurveClosed E.calibrationUncertaintyClosed)

end GravitationalWavesCanonicalLaneLean
end HautevilleHouse