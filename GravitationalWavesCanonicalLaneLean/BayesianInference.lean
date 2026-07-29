import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GravitationalWavesCanonicalLaneLean

structure BayesianInference where
  priorModel : Type u
  likelihoodFunction : Prop
  posteriorComputation : Prop
  evidenceComputation : Prop
  modelSelection : Prop
  priorModelClosed : priorModel
  likelihoodFunctionClosed : likelihoodFunction
  posteriorComputationClosed : posteriorComputation
  evidenceComputationClosed : evidenceComputation
  modelSelectionClosed : modelSelection

structure BayesianInferenceEvidence (B : BayesianInference) where
  likelihoodFunctionClosed : B.likelihoodFunction
  posteriorComputationClosed : B.posteriorComputation
  evidenceComputationClosed : B.evidenceComputation
  modelSelectionClosed : B.modelSelection

def BayesianInferenceClosed (B : BayesianInference) : Prop :=
  B.likelihoodFunction ∧ B.posteriorComputation ∧ B.evidenceComputation ∧ B.modelSelection

theorem bayesian_inference_closed_from_evidence (B : BayesianInference) (E : BayesianInferenceEvidence B) : BayesianInferenceClosed B := by
  exact And.intro E.likelihoodFunctionClosed (And.intro E.posteriorComputationClosed (And.intro E.evidenceComputationClosed E.modelSelectionClosed))

end GravitationalWavesCanonicalLaneLean
end HautevilleHouse