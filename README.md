# MechaCar_Statistical_Analysis
Applying R to car sales using regression models, A/B testing, and various other quantitative fit tests.


## Linear Regression to Predict MPG
![image](https://user-images.githubusercontent.com/109499859/210111096-742e36a1-fbce-42e2-a699-4816c145d49f.png)
![image](https://user-images.githubusercontent.com/109499859/210111113-b69c1b8f-bffc-4829-b319-f47e492b7c77.png)

AWD and Spoiler Angle provided non-random amounts of variance to the mpg values.

Due to the extremely small p-value of 5.35e-11, it is safe to assume a significance level well short of 0.05. It also points to a non-zero slope of this line.

Looking at the R-squared value allows for the determination of whether or not this is a reliable MPG prediction model. hovering around 71% efficacy, it would be easy to say that this model can be trusted to produce loose trends, but is not air tight as results could be amiss nearly 30% of the time.


## Summary Statistics on Suspension Coils

Does the three-way grouping of coils exhibit little enough variance (greater than 100 psi) to meet the design spec? 
![image](https://user-images.githubusercontent.com/109499859/210111122-1e4ab4f4-8bbc-4db7-9f3b-718eaa04d4d6.png)
![image](https://user-images.githubusercontent.com/109499859/210111130-73d9f682-0aa0-49d5-b07a-a89be8371648.png)

The above values are pulled directly from the suspension csv dataset. The former is a wide view of the entire collection whereas the second image shows the same suspension coils, but lumped into three bins (or groups) based on their lot number. 

When speaking of the entire dataset, the variance is at an acceptable level when compared to the 100 psi design spec. However, when it comes to specific sections of lot numbers, those produced in lot 3 are well above the allotted amount of variance. This segment of the dataset should be recalled and addressed accordingly.


## T-Tests on Suspension Coils

![image](https://user-images.githubusercontent.com/109499859/210111154-68037604-3970-4bb1-aae2-4e660f53ac8c.png)
A t_test was performed on the suspension coils as a cummulative dataset and on the three unique groups based on lot number. 
Similar to the summary statistics, the full group showed minimal differentiation from the population mean of 1500 psi. When broken down in to groups, the third segemt (Lot3), demonstrated a p-value of less than 0.05. This signigicant because it aligns with the previous summary analysis of Lot3 - something needs to be reviewed there. 

## Study Design: MechaCar vs Competition

Many variables go into the decision making process when purchasing a new car. The following is a wide view approach to how MechaCar can establish presence via analytics.

* Show performance paramters to consumer such as mpg, hp, 0-60 metrics. Score these against competition offerings in a scatter plot based and create a "Total Performance Metric" based on these three scores. The null hypothesis is that no competitor will be able to provide a higher Total Performance Metric score vehicle at a lower price point than MechaCar.

* Demonstrate how MechaCar's "Total Performance Metric" stacks up to competitor products in the same market segment. This would involve linear modeling (lm()) to pull in these three metrics and attempt to assign a best-fit line or score to them.

* To run this statistical test, it would be improtant to have industry data of city and highway mpg, acceleration test data, and engine specs across a wide number of cars. 

