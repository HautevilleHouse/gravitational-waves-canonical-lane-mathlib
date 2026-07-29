import canonicalLaneMathlib.AdmissibleClass

/-!
# Source Modeling Framework Package
-/

namespace HautevilleHouse
namespace GravitationalWavesCanonicalLaneLean

structure SourceModelingFramework where
  waveformTemplateBank : Prop
  inspiralMergerRingdownModeled : Prop
  postNewtonianExpansion : Prop
  numericalRelativityInformed : Prop

structure SourceModelingFrameworkEvidence (S : SourceModelingFramework) where
  waveformTemplateBankClosed : S.waveformTemplateBank
  inspiralMergerRingdownModeledClosed : S.inspiralMergerRingdownModeled
  postNewtonianExpansionClosed : S.postNewtonianExpansion
  numericalRelativityInformedClosed : S.numericalRelativityInformed

def SourceModelingFrameworkClosed (S : SourceModelingFramework) : Prop :=
  S.waveformTemplateBank ∧ S.inspiralMergerRingdownModeled ∧
  S.postNewtonianExpansion ∧ S.numericalRelativityInformed

theorem source_modeling_framework_closed_from_evidence
    (S : SourceModelingFramework) (E : SourceModelingFrameworkEvidence S) :
    SourceModelingFrameworkClosed S := by
  exact And.intro E.waveformTemplateBankClosed
    (And.intro E.inspiralMergerRingdownModeledClosed
      (And.intro E.postNewtonianExpansionClosed E.numericalRelativityInformedClosed))

end GravitationalWavesCanonicalLaneLean
end HautevilleHouse