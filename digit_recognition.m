[XTrain, YTrain] = digitTrain4DArrayData;
[XTest, YTest] = digitTest4DArrayData;

layersMLP = [
    imageInputLayer([28 28 1],'Normalization','none')
    fullyConnectedLayer(256)
    reluLayer
    fullyConnectedLayer(128)
    reluLayer
    fullyConnectedLayer(10)
    softmaxLayer
    classificationLayer
];

optionsMLP = trainingOptions('adam', ...
    'MaxEpochs',10, ...
    'MiniBatchSize',128, ...
    'ValidationData',{XTest,YTest}, ...
    'Verbose',false, ...
    'Plots','training-progress');

netMLP = trainNetwork(XTrain,YTrain,layersMLP,optionsMLP);

YPredMLP = classify(netMLP,XTest);
accuracyMLP = mean(YPredMLP == YTest);
disp(accuracyMLP);

figure;
confusionchart(YTest,YPredMLP);

layersCNN = [
    imageInputLayer([28 28 1],'Normalization','none')
    convolution2dLayer(3,32,'Padding','same')
    reluLayer
    maxPooling2dLayer(2,'Stride',2)
    convolution2dLayer(3,64,'Padding','same')
    reluLayer
    maxPooling2dLayer(2,'Stride',2)
    fullyConnectedLayer(128)
    reluLayer
    dropoutLayer(0.5)
    fullyConnectedLayer(10)
    softmaxLayer
    classificationLayer
];

optionsCNN = trainingOptions('adam', ...
    'MaxEpochs',10, ...
    'MiniBatchSize',128, ...
    'ValidationData',{XTest,YTest}, ...
    'Verbose',false, ...
    'Plots','training-progress');

netCNN = trainNetwork(XTrain,YTrain,layersCNN,optionsCNN);

YPredCNN = classify(netCNN,XTest);
accuracyCNN = mean(YPredCNN == YTest);
disp(accuracyCNN);

figure;
confusionchart(YTest,YPredCNN);

save netCNN.mat netCNN
