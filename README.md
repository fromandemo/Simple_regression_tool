#Data-set 
This Shiny app will create a Simple Regression Model using any of the columns in [mtcars](https://stat.ethz.ch/R-manual/R-devel/library/datasets/html/mtcars.html) dataset. Here are the columns you can use:

#Input
When you select  *X* and *Y* variables the app will use this two variables to fit a simple regression model.

```
fit <- lm(mpg~am, data = mtcars)
summary(fit)
```

#Output 
The application will produce a set of four plots: residuals versus fitted values, a Q-Q plot of standardized residuals, a scale-location plot (square roots of standardized residuals versus fitted values, and a plot of residuals versus leverage that adds bands corresponding to Cook's distances of 0.5 and 1. 
With this information you will speed up your analysis by spotting out what variables have a strong correlation.
