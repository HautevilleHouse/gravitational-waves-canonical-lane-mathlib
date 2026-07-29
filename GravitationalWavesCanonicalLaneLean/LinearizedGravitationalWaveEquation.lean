import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GravitationalWavesCanonicalLaneLean

structure LinearizedWaveOperator (M : Type u) [TopologicalSpace M] where
  metricPerturbation : Type v
  dAlembertianAction : Prop
  waveOperatorHyperbolic : Prop
  linearizedGauge : Prop

def LinearizedWaveOperatorClosed (W : LinearizedWaveOperator M) : Prop :=
  W.dAlembertianAction ∧ W.waveOperatorHyperbolic ∧ W.linearizedGauge

theorem linearized_wave_operator_closed (W : LinearizedWaveOperator M) : LinearizedWaveOperatorClosed W := by
  exact And.intro W.dAlembertianAction (And.intro W.waveOperatorHyperbolic W.linearizedGauge)

end GravitationalWavesCanonicalLaneLean
end HautevilleHouse