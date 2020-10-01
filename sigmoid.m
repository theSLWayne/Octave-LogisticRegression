% Sigmoid Function, the logisstic function of Logistic Regression Classification.
% Takes z (which is equivalent to: theta' * X) as the argument and returns the g(used in hypothesis) value. 
function g = sigmoid(z)
  g = 1 ./ (1 + exp(-z));
end
