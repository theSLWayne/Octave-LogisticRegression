% This will demonstrate the logistic regression using the IRIS dataset.

clear; % Clear all variables in the active workspace.
close all; % Close all additional windows(like plots)
clc; % Clear the Command Window

% Loading data from the .csv file
fprintf("Loading the data...\n");
% The data will be stored in the 'df' matrix
df = csvread('data/readableIris.csv');
df = df(2:end, :); % Removing additional 0's imported instead of column names.
fprintf("Done.\n");

% Splitting the dataset into features(X) and labels(y)
X = df(:, 1:4);
y = df(:, 5);

fprintf('Program paused. Press enter to continue.\n');
pause;

% Variables to be passed into linear regression function(l_reg)
num_labels = size(unique(y), 1); % Number of different labels/classes
lambda = 0.1; % Regularization Parameter
num_iterations = 50; % Number of iterations to be done to minimize the regularized cost function

% Running the Logistic Regression algorithm
fprintf("Running the Logistic Regression algorithm...\n");

% Theta values will be stored in 'theta' matrix.
[theta] = l_reg(X, y, num_labels, lambda, num_iterations);
fprintf("Done.\n");

fprintf('Program paused. Press enter to continue.\n');
pause;

% Making predictions
fprintf("Making predictions...\n");

% Predictions will be stored in 'preds' vector.
preds = predict_l_reg(X, theta);

fprintf("Done.\n");

% Calculating Accuracy of predictions.
acc = accuracy(preds, y);

% Printing Accuracy
fprintf("Accuracy of the trained model is: %d\n", acc);

fprintf('Program paused. Press enter to continue.\n');
pause;
fprintf("End\n");