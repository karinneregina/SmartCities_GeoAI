# Analysis Plan

## Descriptive analysis

The first stage summarizes counts, rates, distributions, missingness, and temporal variation. Tables and plots should compare mortality, population, and infrastructure indicators across years and territories.

## Temporal analysis

Potential methods include:

- annual trend visualization;
- Pearson or Spearman correlation, selected according to distribution and assumptions;
- ordinary least squares or generalized regression;
- segmented or interaction models comparing pre- and post-2030 Agenda periods;
- sensitivity analyses excluding 2020–2021;
- lagged exposure specifications where substantively justified.

## Spatial analysis

Potential methods include:

- choropleth mapping;
- global Moran's I;
- local indicators of spatial association;
- spatial lag or spatial error regression;
- geographically weighted approaches only when sample size and theoretical justification are adequate.

The spatial weights matrix, neighbour definition, standardization, and treatment of islands must be documented.

## Multivariable modeling

Models should consider population size, vulnerability, demographic composition, urban form, and other available contextual covariates. Variable selection must be theoretically informed and should not rely solely on automated significance testing.

## Diagnostics

Depending on the model, report:

- residual distribution and heteroskedasticity;
- multicollinearity;
- influential observations;
- spatial autocorrelation of residuals;
- goodness-of-fit and information criteria;
- prediction or cross-validation metrics when applicable.

## Interpretation

Results must be interpreted as ecological associations. The analysis should distinguish statistical association, predictive performance, and causal inference. Policy implications should account for territorial inequality, infrastructure accessibility, data limitations, and the possibility of reverse causality or omitted-variable bias.
