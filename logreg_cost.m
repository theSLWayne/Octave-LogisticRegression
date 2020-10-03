% Cost function - Regularized cost for Logistic Regression Classification
% Takes in:
% X - training set (m x n Matrix)
% y - training output values
% theta - model parameters
% lambda - regularization parameter
% Returns Cost.
function [cost] = logreg_cost(X, y, theta, lambda);
  % Number of training records
  m = size(y, 1);
  
  % Calculating Hypothesis using hypothesis.m
  preds = hypothesis(X, theta);
  
  % Regularization Parameters
  % First line of thetas, theta0, doesn't get regularized. Filtering them out to calculate regularization parameters.
  reg_thetas = theta(2:end, 1);
  reg_param = lambda / (2 * m) * (reg_thetas' .* reg_thetas);
  
  % Calculate Regularized Cost function
  cost = (-1 / m) * (y' * log(preds) + (1 - y)' * log(1 - preds)) + reg_param;
end