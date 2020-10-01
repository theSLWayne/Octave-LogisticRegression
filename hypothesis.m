% Hypothesis function - uses sigmoid.m
% Predict output value using input values X and model parameters.
% Takes in X (features: matrix of m x n) and theta (model parameters: vector m x 1)
% m - number of records, n - number of features
% Returns predictions.
function [predictions] = hypothesis(X, theta)
  predictions = sigmoid(X * theta);
 end