# Logistic Regression from Scratch

## Algorithm
According to Wikipedia, Logistic Regression is "estimating the parameters of a logistic model (a form of binary regression)". In logistic regression, the probability of a certain record belonging to a ceratin class is modeled. Logistic Regression is usually used to predict variables that have two possible outcomes like pass/fail, 0/1, win/lose. Each time, the Logistic Regression Classifier is trained to use values from a set of variables and calculate the probability of the predicted variable belonging to one of the classes. This can also be used in times where there are multiple classes possible for the predicting variable. In such situations, the model will calculate probabilies of each possible outcome over remaining outcomes. 

Linear Regression:
![Linear Regression: Image no available](Images/linear_regression.svg)


#### Training Dataset
Training dataset is input data which contains X values(the values which will be used for predictions or simply, features.) and y values(correct classifications).
In the code, m is used to represent the number of training examples.

![Training Dataset: Image not available](Images/training_set.svg)

#### The Model/Hypothesis
The part which takes features and their parameters(the trained values, outputs from enhancing the model performance) in order to predict values as probabilities of belonging to some specific class. The sigmoid function will be used for this hypothesis. It will take any value in and output values that are between 0 and 1. Thus, it is used for predicting probabilities. 
Basically, the classifier will:
- Predict y = 0 if hypothesis < 0.5
- Predict y = 1 if hypothesis => 0.5

Hypothesis function:
![Hypothesis: Image not available](Images/hypothesis.svg)

Sigmoid:
![Sigmoid: Image not available](Images/sigmoid.svg)

Sigmoid curve:
![Sigmoid Curve: Image not available](Images/sigmoid_curve.svg)

#### Cost Function
Shows the accuracy of hypothesis that are created by the model, using current set of trained/untrained parameters.
![Cost Function: Image not available](Images/cost_function.svg)

#### Gradient Descent
Gradient descent is an iterative optimization algorithm for finding the minimum of a cost function described above. To find a local minimum of a function using gradient descent, steps are taken that are proportional to the negative of the gradient (or approximate gradient) of the function at the current point.
![Gradient Descent: Image not available](Images/gradient_descent.svg)


## Files

## How to run

## References
