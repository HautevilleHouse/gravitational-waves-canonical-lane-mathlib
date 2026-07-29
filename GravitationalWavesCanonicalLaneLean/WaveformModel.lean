import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GravitationalWavesCanonicalLaneLean

structure GravitationalWaveform where
  polarizationTypes : Type u
  amplitude : Prop
  phaseEvolution : Prop
  satisfyWaveEquation : Prop

structure WaveformEvidence (W : GravitationalWaveform) where
  amplitudeClosed : W.amplitude
  phaseEvolutionClosed : W.phaseEvolution
  satisfyWaveEquationClosed : W.satisfyWaveEquation

def WaveformClosed (W : GravitationalWaveform) : Prop :=
  W.amplitude ∧ W.phaseEvolution ∧ W.satisfyWaveEquation

theorem waveform_closed_from_evidence (W : GravitationalWaveform) (E : WaveformEvidence W) : WaveformClosed W := by
  exact And.intro E.amplitudeClosed (And.intro E.phaseEvolutionClosed E.satisfyWaveEquationClosed)

end GravitationalWavesCanonicalLaneLean
end HautevilleHouse