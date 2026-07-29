import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GravitationalWavesCanonicalLaneLean

structure EnergyFluxPackage where
  stressEnergyPseudoTensor : Type u
  quadrupoleFormula : Prop
  radiatedPower : Prop
  angularMomentumLoss : Prop
  backreactionModel : Prop

structure EnergyFluxEvidence (E : EnergyFluxPackage) where
  stressEnergyPseudoTensorClosed : Nonempty E.stressEnergyPseudoTensor
  quadrupoleFormulaClosed : E.quadrupoleFormula
  radiatedPowerClosed : E.radiatedPower
  angularMomentumLossClosed : E.angularMomentumLoss
  backreactionModelClosed : E.backreactionModel

def EnergyFluxClosed (E : EnergyFluxPackage) : Prop :=
  Nonempty E.stressEnergyPseudoTensor ∧ E.quadrupoleFormula ∧ E.radiatedPower ∧ E.angularMomentumLoss ∧ E.backreactionModel

theorem energy_flux_closed_from_evidence (E : EnergyFluxPackage) (Ev : EnergyFluxEvidence E) : EnergyFluxClosed E := by
  exact And.intro Ev.stressEnergyPseudoTensorClosed (And.intro Ev.quadrupoleFormulaClosed (And.intro Ev.radiatedPowerClosed (And.intro Ev.angularMomentumLossClosed Ev.backreactionModelClosed)))

end GravitationalWavesCanonicalLaneLean
end HautevilleHouse
