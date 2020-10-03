% Prediction function: Predicts labels using theta values returned by the l_reg function.
% Takes in:
% X - Training set
% thetas - Theta values returned from l_reg; values to be used in predictions.
% Returns the predictions
function preds = predict_l_reg(X, thetas)
  % Number of records
  m = size(X, 1);
  
  % Number of labels/classes
  num_labels = size(thetas, 1);
  
  % Initialize predictions matrix
  preds = zeros(m, 1);
  
  % Add ones to X
  X = [ones(m, 1) X];
  
  % Calculate probability of each input example belonging to each label.
  % This will result a m x num_labels matrix in which rows will represent each record/input and columns will represent the probability of each
  %   input belonging to the relevant label.
  hyp = sigmoid(X * thetas');
  
  % max function is used to find the index of the biggest probabilities out of each label for every input/record, hence the predicted label.
  [pred_vals, preds] = max(hyp, [], 2);
end