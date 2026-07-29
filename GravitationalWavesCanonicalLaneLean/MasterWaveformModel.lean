import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GravitationalWavesCanonicalLaneLean

structure MasterWaveformModel where
  sourceType : String
  waveformFamily : String
  inspiralMergerRingdown : Prop
  frequencyDomain : Type u
  timeDomain : Type v
  amplitudeModel : Prop
  phaseModel : Prop
  amplitudeModelClosed : amplitudeModel
  phaseModelClosed : phaseModel

structure MasterWaveformEvidence (M : MasterWaveformModel) where
  inspiralMergerRingdownClosed : M.inspiralMergerRingdown
  amplitudeModelClosed : M.amplitudeModel
  phaseModelClosed : M.phaseModel

def MasterWaveformClosed (M : MasterWaveformModel) : Prop :=
  M.inspiralMergerRingdown ∧ M.amplitudeModel ∧ M.phaseModel

theorem master_waveform_closed_from_evidence (M : MasterWaveformModel) (E : MasterWaveformEvidence M) : MasterWaveformClosed M := by
  exact And.intro E.inspiralMergerRingdownClosed (And.intro E.amplitudeModelClosed E.phaseModelClosed)

end GravitationalWavesCanonicalLaneLean
end HautevilleHouse