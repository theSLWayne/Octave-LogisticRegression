% Gradient Step function
% Perform one step of gradient descent for theta.
% Takes in:
% X - Training dataset
% y - Training outputs
% theta - Model Parameters
% lambda - regularization parameter
function [gradients] = gradient_step(X, y, theta, lambda)
  % Number of training samples
  m = size(y, 1);
  
  % Initialize gradients that needs to be returned
  gradients = zeros(size(theta));
  
  % Calculate hypothesis
  predictions = hypothesis(X, theta);
  
  % Calculate Regularization Part
  regularization = (lambda / m) * theta;
  
  % Calculate grdient step
  gradients = (1 / m) * (X' .* (predictions - y)) + regularization;
  
  % Ignoring regularization in theta_zero parameter.
  gradients(1) = (1 / m) * (X(:, 1)' .* (predictions - y));
end