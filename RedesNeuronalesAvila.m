clc

load('datasetAttClass.mat')

net = feedforwardnet([10 5], 'trainlm');
net = train(net, datasetAttTrain, datasetClassTrain);
y = net(datasetAttTrain);
perform1 = perform(net, y, datasetClassTrain);

net = feedforwardnet([9 6 3 2], 'trainoss');
net = train(net, datasetAttTrain, datasetClassTrain);
y = net(datasetAttTrain);
perform2 = perform(net, y, datasetClassTrain);

net = feedforwardnet([8 4 8 2], 'trainrp');
net = train(net, datasetAttTrain, datasetClassTrain);
y = net(datasetAttTrain);
perform3 = perform(net, y, datasetClassTrain);

fact = {'logsig', 'logsig'};
net = newff(datasetAttTrain, datasetClassTrain, [8 4 2 2 2], fact);
train(net, datasetAttTrain, datasetClassTrain);

fact = {'tansig', 'logsig'};
net = newff(datasetAttTrain, datasetClassTrain, [12 6 3 2], fact);
train(net, datasetAttTrain, datasetClassTrain);

fact = {'logsig', 'purelin'};
net = newff(datasetAttTrain, datasetClassTrain, [20 12 4], fact);
train(net, datasetAttTrain, datasetClassTrain);
