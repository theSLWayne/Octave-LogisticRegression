% Multiple Linear Regression function
% Takes In:
% X - Training dataset
% y - Training outputs
% num_labels - Number of different labels
% lambda - regularization parameter
% num_iterations - Number of iterations to be done to minimize the regularized cost function
% Returns theta values to be used in predictions.
function [theta_vals] = l_reg(X, y, num_labels, lambda, num_iterations)
  % Number of rows and columns in the test value dataset
  m = size(X, 1);
  n = size(X, 2);
  
  % Initiating theta matrix
  theta_vals = zeros(num_labels, n + 1); % n + 1 is for theta_zero.
  
  % Add ones to X; correspondants of theta_zero
  X = [ones(m, 1) X];
  
  % Iterate classification training over different labels
  for i = 1:num_labels
    % Convert y to a vector which would have the current class set to 1.
    % Ex: If the current class(i, in this case) is 2, the following code will turn every occurence of 2 in y to 1 and all others to 0.
    y_vec = (y == i);
    
    % Set options to be passed into fminunc
    opts = optimset('GradObj', 'on', 'MaxIter', num_iterations);
    
    % Initial set of thetas; all 0.
    init_theta = zeros(n + 1, 1);
    
    % Gradient descent for the current class/label.
    % gradient_func is a function, which takes in theta as parameter and then calls the gradient_callback function. This will be passed to fminunc
    %   in order for it to use this to minimize the cost function by trying different values for theta.
    gradient_func = @(theta) gradient_callback(X, y_vec, theta, lambda);
    
    % Optimizing theta
    [theta, J, exit_flag] = fminunc(gradient_func, init_theta, opts);
    
    % Add theta for current class to the matrix of theta.
    theta = theta';
    theta_vals(i, :) = theta;
  end
end