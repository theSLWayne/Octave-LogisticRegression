% Gradient Callback function - to be used as a callback function for fminunc
% Aggregates cost and gradient values.
% Takes Inputs: 
% X - Training dataset
% y - Training outputs
% theta - Model Parameters
% lambda - regularization parameter
% Returns cost and gradients.
function [cost, gradients] = gradient_callback(X, y, theta, lambda)
  % Calculate cost
  cost = logreg_cost(X, y, theta, lambda);
  
  % Do one gradient step
  gradients = gradient_step(X, y, theta, lambda);
end