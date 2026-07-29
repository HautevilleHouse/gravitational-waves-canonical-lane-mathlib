import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GravitationalWavesCanonicalLaneLean

structure BinaryMergerWaveformPackage where
  inspiralPhase : Prop
  mergerPhase : Prop
  ringdownPhase : Prop
  waveformTemplate : Type u
  parameterEstimation : Prop

structure BinaryMergerWaveformEvidence (B : BinaryMergerWaveformPackage) where
  inspiralPhaseClosed : B.inspiralPhase
  mergerPhaseClosed : B.mergerPhase
  ringdownPhaseClosed : B.ringdownPhase
  waveformTemplateClosed : Nonempty B.waveformTemplate
  parameterEstimationClosed : B.parameterEstimation

def BinaryMergerWaveformClosed (B : BinaryMergerWaveformPackage) : Prop :=
  B.inspiralPhase ∧ B.mergerPhase ∧ B.ringdownPhase ∧ Nonempty B.waveformTemplate ∧ B.parameterEstimation

theorem binary_merger_waveform_closed_from_evidence (B : BinaryMergerWaveformPackage) (E : BinaryMergerWaveformEvidence B) : BinaryMergerWaveformClosed B := by
  exact And.intro E.inspiralPhaseClosed (And.intro E.mergerPhaseClosed (And.intro E.ringdownPhaseClosed (And.intro E.waveformTemplateClosed E.parameterEstimationClosed)))

end GravitationalWavesCanonicalLaneLean
end HautevilleHouse
