import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GravitationalWavesCanonicalLaneLean

structure SpacetimeMetricPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  metric : Type v
  signatureLorentzian : Prop
  smoothFourManifold : Prop
  metricSmooth : Prop
  inverseMetricDefined : Prop
  christoffelSymbolsDefined : Prop

structure SpacetimeMetricEvidence (G : SpacetimeMetricPackage) where
  signatureLorentzianClosed : G.signatureLorentzian
  smoothFourManifoldClosed : G.smoothFourManifold
  metricSmoothClosed : G.metricSmooth
  inverseMetricDefinedClosed : G.inverseMetricDefined
  christoffelSymbolsDefinedClosed : G.christoffelSymbolsDefined

def SpacetimeMetricClosed (G : SpacetimeMetricPackage) : Prop :=
  G.signatureLorentzian ∧ G.smoothFourManifold ∧ G.metricSmooth ∧ G.inverseMetricDefined ∧ G.christoffelSymbolsDefined

theorem spacetime_metric_closed_from_evidence (G : SpacetimeMetricPackage) (E : SpacetimeMetricEvidence G) : SpacetimeMetricClosed G := by
  exact And.intro E.signatureLorentzianClosed (And.intro E.smoothFourManifoldClosed (And.intro E.metricSmoothClosed (And.intro E.inverseMetricDefinedClosed E.christoffelSymbolsDefinedClosed)))

end GravitationalWavesCanonicalLaneLean
end HautevilleHouse