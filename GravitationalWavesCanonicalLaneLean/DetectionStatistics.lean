import canonicalLaneMathlib.AdmissibleClass

/-!
# Detection Statistics Package
-/

namespace HautevilleHouse
namespace GravitationalWavesCanonicalLaneLean

structure DetectionStatistics where
  falseAlarmRate : Prop
  detectionProbability : Prop
  sensitivityCurve : Prop
  dutyCycleAccounted : Prop

structure DetectionStatisticsEvidence (S : DetectionStatistics) where
  falseAlarmRateClosed : S.falseAlarmRate
  detectionProbabilityClosed : S.detectionProbability
  sensitivityCurveClosed : S.sensitivityCurve
  dutyCycleAccountedClosed : S.dutyCycleAccounted

def DetectionStatisticsClosed (S : DetectionStatistics) : Prop :=
  S.falseAlarmRate ∧ S.detectionProbability ∧
  S.sensitivityCurve ∧ S.dutyCycleAccounted

theorem detection_statistics_closed_from_evidence
    (S : DetectionStatistics) (E : DetectionStatisticsEvidence S) :
    DetectionStatisticsClosed S := by
  exact And.intro E.falseAlarmRateClosed
    (And.intro E.detectionProbabilityClosed
      (And.intro E.sensitivityCurveClosed E.dutyCycleAccountedClosed))

end GravitationalWavesCanonicalLaneLean
end HautevilleHouse