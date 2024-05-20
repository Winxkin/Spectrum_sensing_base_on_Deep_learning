load("Output\40ep\Output.mat")
% Assuming WiComNetA.TrainingAccuracy is a 1x28176 vector
num_epochs = 8;
epochs = [5 10 15 20 25 30 35 40];
num_samples = numel(wicomnetinfo.TrainingAccuracy);
pwicomnet = [];
punet = [];
punetpp = [];
punetp = [];
punetE = [];
pdeeplab = [];
pconvnet = [];

for i = 1:num_epochs
    pwicomnet = [pwicomnet, wicomnetinfo.TrainingAccuracy(i*(num_samples/num_epochs))];
    punet = [punet, UnetInfo.TrainingAccuracy(i*(num_samples/num_epochs))];
    punetpp = [punetpp, UnetpInfo.TrainingAccuracy(i*(num_samples/num_epochs))];
    punetp = [punetp, UnetpInfo.TrainingAccuracy(i*(num_samples/num_epochs))];
    punetE = [punetE, UnetEInfo.TrainingAccuracy(i*(num_samples/num_epochs))];
    pdeeplab = [pdeeplab, deeplabInfo.TrainingAccuracy(i*(num_samples/num_epochs))];
    pconvnet = [pconvnet, ConvnetInfo.TrainingAccuracy(i*(num_samples/num_epochs))];
end


% Plot the accuracies for each epoch
figure;
plot(epochs, pwicomnet, '-b', 'LineWidth', 1, 'Marker', "square"); % Plot wicomnetA in red
hold on; % Hold the current plot
plot(epochs, punet,'color',	"#00FF00", 'LineWidth', 1, 'Marker', "+"); % Plot unet in blue
hold on; % Hold the current plot
plot(epochs, punetp,'color', "#0072BD", 'LineWidth', 1, 'Marker', "*");
hold on; % Hold the current plot
plot(epochs, punetE,'color', "#EDB120", 'LineWidth', 1, 'Marker', "o");
hold on; % Hold the current plot
plot(epochs, punetpp,'color', "#D95319", 'LineWidth', 1, 'Marker', "x");
hold on; % Hold the current plot
plot(epochs, pconvnet,'color', "#FF00FF", 'LineWidth', 1, 'Marker', "^");
hold on; % Hold the current plot
plot(epochs, pdeeplab,'color', "#4DBEEE", 'LineWidth', 1, 'Marker', "v");


hold off; % Release the hold

xlabel('Epoch');
ylabel('Training Accuracy');
title('Training Accuracy Across Epochs');
legend('WiComNet - 7.8M - 0.0713 - 97.233',....
       'Unet - 31.3M - 0.0766 - 98.227',...
       'Unetp - 42.5M - 0.0754 - 98.07',...
       'UnetE - 42.3M - 0.0835 - 97.844',...
       'Unetpp - 43.5M - 0.0801 - 97.981',...
       'ConvNet - 20.6M - 1.2742 - 39.696',...
       'deeplabv3 - 20.6M - 1.1725 - 46.266',...
       'Location', 'best'); % Add legend for each line
grid on; % Turn on the grid
