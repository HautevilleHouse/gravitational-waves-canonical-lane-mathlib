import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GravitationalWavesCanonicalLaneLean

structure LIGODetectionPackage {G : SpacetimeMetricPackage} {E : EinsteinFieldEquationsPackage G} {L : LinearizedGravityPackage E} {W : GravitationalWaveSolutionPackage L} (B : BinaryInspiralPackage W) where
  interferometerModel : Type u
  noiseCharacterization : Prop
  signalTemplateMatched : Prop
  detectionSignificance : Prop
  eventConfirmed : Prop

structure LIGODetectionEvidence {G : SpacetimeMetricPackage} {E : EinsteinFieldEquationsPackage G} {L : LinearizedGravityPackage E} {W : GravitationalWaveSolutionPackage L} {B : BinaryInspiralPackage W} (D : LIGODetectionPackage B) where
  noiseCharacterizationClosed : D.noiseCharacterization
  signalTemplateMatchedClosed : D.signalTemplateMatched
  detectionSignificanceClosed : D.detectionSignificance
  eventConfirmedClosed : D.eventConfirmed

def LIGODetectionClosed {G : SpacetimeMetricPackage} {E : EinsteinFieldEquationsPackage G} {L : LinearizedGravityPackage E} {W : GravitationalWaveSolutionPackage L} {B : BinaryInspiralPackage W} (D : LIGODetectionPackage B) : Prop :=
  D.noiseCharacterization ∧ D.signalTemplateMatched ∧ D.detectionSignificance ∧ D.eventConfirmed

theorem ligo_detection_closed_from_evidence {G : SpacetimeMetricPackage} {E : EinsteinFieldEquationsPackage G} {L : LinearizedGravityPackage E} {W : GravitationalWaveSolutionPackage L} {B : BinaryInspiralPackage W} (D : LIGODetectionPackage B) (Ev : LIGODetectionEvidence D) : LIGODetectionClosed D := by
  exact And.intro Ev.noiseCharacterizationClosed (And.intro Ev.signalTemplateMatchedClosed (And.intro Ev.detectionSignificanceClosed Ev.eventConfirmedClosed))

end GravitationalWavesCanonicalLaneLean
end HautevilleHouse