import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GravitationalWavesCanonicalLaneLean

structure GravitationalWaveEvent where
  eventID : String
  signalToNoiseRatio : Prop
  falseAlarmRate : Prop
  skyLocalization : Prop

structure EventEvidence (E : GravitationalWaveEvent) where
  signalToNoiseRatioClosed : E.signalToNoiseRatio
  falseAlarmRateClosed : E.falseAlarmRate
  skyLocalizationClosed : E.skyLocalization

def EventClosed (E : GravitationalWaveEvent) : Prop :=
  E.signalToNoiseRatio ∧ E.falseAlarmRate ∧ E.skyLocalization

theorem event_closed_from_evidence (E : GravitationalWaveEvent) (Ev : EventEvidence E) : EventClosed E := by
  exact And.intro Ev.signalToNoiseRatioClosed (And.intro Ev.falseAlarmRateClosed Ev.skyLocalizationClosed)

end GravitationalWavesCanonicalLaneLean
end HautevilleHouse