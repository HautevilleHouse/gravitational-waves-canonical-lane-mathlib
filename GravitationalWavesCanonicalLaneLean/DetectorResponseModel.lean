import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GravitationalWavesCanonicalLaneLean.GravitationalWaveObservables

/-!
# Detector Response Model Package
-/

namespace HautevilleHouse
namespace GravitationalWavesCanonicalLaneLean

structure DetectorResponseModel (O : GravitationalWaveObservables) where
  detectorNoiseCurve : Prop
  antennaPatternResponse : Prop
  strainCalibration : Prop
  dataQualityFlags : Prop

structure DetectorResponseModelEvidence {O : GravitationalWaveObservables}
    (D : DetectorResponseModel O) where
  detectorNoiseCurveClosed : D.detectorNoiseCurve
  antennaPatternResponseClosed : D.antennaPatternResponse
  strainCalibrationClosed : D.strainCalibration
  dataQualityFlagsClosed : D.dataQualityFlags

def DetectorResponseModelClosed {O : GravitationalWaveObservables}
    (D : DetectorResponseModel O) : Prop :=
  D.detectorNoiseCurve ∧ D.antennaPatternResponse ∧
  D.strainCalibration ∧ D.dataQualityFlags

theorem detector_response_model_closed_from_evidence
    {O : GravitationalWaveObservables} (D : DetectorResponseModel O)
    (E : DetectorResponseModelEvidence D) : DetectorResponseModelClosed D := by
  exact And.intro E.detectorNoiseCurveClosed
    (And.intro E.antennaPatternResponseClosed
      (And.intro E.strainCalibrationClosed E.dataQualityFlagsClosed))

end GravitationalWavesCanonicalLaneLean
end HautevilleHouse