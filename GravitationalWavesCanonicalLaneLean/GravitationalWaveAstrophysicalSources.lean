import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GravitationalWavesCanonicalLaneLean

structure AstrophysicalSourcesPackage where
  compactBinarySources : Prop
  supernovaeSources : Prop
  neutronStarMergers : Prop
  stochasticBackground : Prop
  sourceCatalog : Type u

structure AstrophysicalSourcesEvidence (A : AstrophysicalSourcesPackage) where
  compactBinarySourcesClosed : A.compactBinarySources
  supernovaeSourcesClosed : A.supernovaeSources
  neutronStarMergersClosed : A.neutronStarMergers
  stochasticBackgroundClosed : A.stochasticBackground
  sourceCatalogClosed : Nonempty A.sourceCatalog

def AstrophysicalSourcesClosed (A : AstrophysicalSourcesPackage) : Prop :=
  A.compactBinarySources ∧ A.supernovaeSources ∧ A.neutronStarMergers ∧ A.stochasticBackground ∧ Nonempty A.sourceCatalog

theorem astrophysical_sources_closed_from_evidence (A : AstrophysicalSourcesPackage) (E : AstrophysicalSourcesEvidence A) : AstrophysicalSourcesClosed A := by
  exact And.intro E.compactBinarySourcesClosed (And.intro E.supernovaeSourcesClosed (And.intro E.neutronStarMergersClosed (And.intro E.stochasticBackgroundClosed E.sourceCatalogClosed)))

end GravitationalWavesCanonicalLaneLean
end HautevilleHouse
