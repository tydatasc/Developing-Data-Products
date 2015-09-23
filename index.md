---
title       : Developing Data Products 
subtitle    : 24 Hours Mean Temperature
author      : Lim Tee Yong
framework   : revealjs
highlighter : highlight.js
hitheme     : default 
widgets     : []
mode        : selfcontained
knit        : slidify::knit2slides
---

## Developing Data Products

<img src="assets/img/temperature.png" style="background:none; border:none; box-shadow:none;">

24 Hours Mean Temperature

<small>[Lim Tee Yong](https://sg.linkedin.com/in/teeyong)</small>

---&vertical

## About

<a href="#" class="image navigate-down">
  <img width="178" height="238" src="https://s3.amazonaws.com/hakim-static/reveal-js/arrow.png" alt="Down arrow">
</a>

***

## Web Application

This web application is created by using **Shiny**

A web application framework for R

Please visit [Shiny](http://shiny.rstudio.com/) for more details

<a href="#" class="image navigate-down">
  <img width="178" height="238" src="https://s3.amazonaws.com/hakim-static/reveal-js/arrow.png" alt="Down arrow">
</a>

***

## Data

Data use is "24 Hours Mean Temperature" downloaded from [Data.gov.sg](http://www.data.gov.sg/home.aspx)

<p>Data.gov.sg is the primary portal for users to discover data published by the Singapore Government and its agencies.</p>

The data used for analysis can be downloaded from  [here](http://www.data.gov.sg/Metadata/SGMatadata.aspx?id=2601100000000014645G&mid=147808&t=TEXTUAL)

<a href="#/2" class="image">
  <img width="178" height="238" src="https://s3.amazonaws.com/hakim-static/reveal-js/arrow.png" alt="Up arrow" style="-webkit-transform: rotate(180deg);">
</a>

---

## Web Application

There are 3 tabs on the web application.

- "About" - a short notes about the work of this site

- "Exploratory" - allow you to select year range and present back a table plus some summaries

- "Result" - Will show the actual and forecast data plus a plot

A tslm is used to fit linear models to time series including trend and seasonality components.

---

## Time Series

An ordered sequence of values of a variable at equally spaced time intervals.

The usage of time series models:

.fragment 1. Obtain an understanding of the underlying forces and structure that produced the observed data

.fragment 2. Fit a model and proceed to forecasting, monitoring or even feedback and feedforward control.

---

## Result

The forecast resut is very close to the actual with less than 0.8 degree celsius

<img src="assets/img/result.PNG" style="background:none; border:none; box-shadow:none;">
