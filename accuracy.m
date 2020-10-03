% Accuracy function: calculate the accuracy of predicted labels.
% Takes in:
% Preds - labels predicted by logistic regression classifier
% y - true labels
% Returns the accuracy of the model.
function acc = accuracy(preds, y)
  acc = mean(preds == y) * 100;
end