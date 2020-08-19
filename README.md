---
title: "README.md"
author: "Vesa Kauppinen"
date: "19 8 2020"
output: html_document
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

## K-means clustering for penguins dataset

This Shiny app explores ```penguins``` dataset. Thanks to [Allison Horst](https://twitter.com/allison_horst) who packaged it as an R package [palmerpenguins](https://github.com/allisonhorst/palmerpenguins).

This app let's user to select and analyse the dataset in pairwise format. The app will plot a scatter plot for the selected pair of variables and do k-means clustering for selected number of clusters.


