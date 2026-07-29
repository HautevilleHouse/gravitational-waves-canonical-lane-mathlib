import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GravitationalWavesCanonicalLaneLean.ParameterEstimationPipeline

/-!
# Astrophysical Interpretation Package
-/

namespace HautevilleHouse
namespace GravitationalWavesCanonicalLaneLean

structure AstrophysicalInterpretation {O : GravitationalWaveObservables}
    {D : DetectorResponseModel O} {S : SourceModelingFramework}
    {P : ParameterEstimationPipeline D S} where
  sourceClassification : Prop
  mergerRateDensity : Prop
  testsOfGeneralRelativity : Prop
  multimessengerFollowUp : Prop

structure AstrophysicalInterpretationEvidence {O : GravitationalWaveObservables}
    {D : DetectorResponseModel O} {S : SourceModelingFramework}
    {P : ParameterEstimationPipeline D S}
    (A : AstrophysicalInterpretation P) where
  sourceClassificationClosed : A.sourceClassification
  mergerRateDensityClosed : A.mergerRateDensity
  testsOfGeneralRelativityClosed : A.testsOfGeneralRelativity
  multimessengerFollowUpClosed : A.multimessengerFollowUp

def AstrophysicalInterpretationClosed {O : GravitationalWaveObservables}
    {D : DetectorResponseModel O} {S : SourceModelingFramework}
    {P : ParameterEstimationPipeline D S}
    (A : AstrophysicalInterpretation P) : Prop :=
  A.sourceClassification ∧ A.mergerRateDensity ∧
  A.testsOfGeneralRelativity ∧ A.multimessengerFollowUp

theorem astrophysical_interpretation_closed_from_evidence
    {O : GravitationalWaveObservables} {D : DetectorResponseModel O}
    {S : SourceModelingFramework} {P : ParameterEstimationPipeline D S}
    (A : AstrophysicalInterpretation P) (E : AstrophysicalInterpretationEvidence A) :
    AstrophysicalInterpretationClosed A := by
  exact And.intro E.sourceClassificationClosed
    (And.intro E.mergerRateDensityClosed
      (And.intro E.testsOfGeneralRelativityClosed E.multimessengerFollowUpClosed))

end GravitationalWavesCanonicalLaneLean
end HautevilleHouse