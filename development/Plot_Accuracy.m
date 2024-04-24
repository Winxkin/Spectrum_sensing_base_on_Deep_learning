load("Output\128x128\Output.mat")
% Assuming WiComNetA.TrainingAccuracy is a 1x28176 vector
num_epochs = 12;
num_samples = numel(WiComNetA.TrainingAccuracy);
pwicomnetA = [];
pwicomnetB = [];
punet = [];
punetpp = [];
punetp = [];
punetE = [];
punetL2 = [];
pdeeplab = [];
pconvnet = [];

for i = 1:num_epochs
    pwicomnetA = [pwicomnetA, WiComNetA.TrainingAccuracy(i*(num_samples/num_epochs))];
    pwicomnetB = [pwicomnetB, WicomNetB.TrainingAccuracy(i*(num_samples/num_epochs))];
    punet = [punet, Unet.TrainingAccuracy(i*(num_samples/num_epochs))];
    punetpp = [punetpp, Unetpp.TrainingAccuracy(i*(num_samples/num_epochs))];
    punetp = [punetp, Unetp.TrainingAccuracy(i*(num_samples/num_epochs))];
    punetE = [punetE, UnetE.TrainingAccuracy(i*(num_samples/num_epochs))];
    punetL2 = [punetL2, UnetL2.TrainingAccuracy(i*(num_samples/num_epochs))];
    pdeeplab = [pdeeplab, deeplabv3.TrainingAccuracy(i*(num_samples/num_epochs))];
    pconvnet = [pconvnet, ConvNet.TrainingAccuracy(i*(num_samples/num_epochs))];
end

% Plot the accuracies for each epoch
figure;
plot(1:num_epochs, pwicomnetA, '-r', 'LineWidth', 1.5, 'Marker', "square"); % Plot wicomnetA in red
hold on; % Hold the current plot
plot(1:num_epochs, pwicomnetB, '-b', 'LineWidth', 1.5, 'Marker', "diamond"); % Plot unet in blue
hold on; % Hold the current plot
plot(1:num_epochs, punet,'color',	"#A2142F", 'LineWidth', 1.5, 'Marker', "+"); % Plot unet in blue
hold on; % Hold the current plot
plot(1:num_epochs, punetpp,'color', "#0072BD", 'LineWidth', 1.5, 'Marker', "*");
hold on; % Hold the current plot
plot(1:num_epochs, punetp,'color', "#D95319", 'LineWidth', 1.5, 'Marker', "x");
hold on; % Hold the current plot
plot(1:num_epochs, punetE,'color', "#EDB120", 'LineWidth', 1.5, 'Marker', "|");
hold on; % Hold the current plot
plot(1:num_epochs, punetL2,'color', "#7E2F8E", 'LineWidth', 1.5, 'Marker', "o");
hold on; % Hold the current plot
plot(1:num_epochs, pdeeplab,'color', "#FF00FF", 'LineWidth', 1.5, 'Marker', "^");
hold on; % Hold the current plot
plot(1:num_epochs, pconvnet,'color', "#4DBEEE", 'LineWidth', 1.5, 'Marker', "v");


hold off; % Release the hold

xlabel('Epoch');
ylabel('Training Accuracy');
title('Training Accuracy Across Epochs');
legend('WiComNetA - 5M - 0.08 - 96.85',....
       'WiComNetB - 7.8M - 0.08 - 97.03',...
       'Unet - 31.3M - 0.09 - 97.90',...
       'Unetpp - 43.5M - 0.09 - 97.74',...
       'Unetp - 42.5M - 0.18 - 97.20',...
       'UnetE - 43.2M - 0.16 - 97.12',...
       'UnetL2 - 31.3M - 0.15 - 96.76',...
       'deeplabv3 - 20.6M - 1.3 - 42.24',...
       'ConvNet - 20.6M - 1.3 - 42.9',...
       'Location', 'southwest'); % Add legend for each line
grid on; % Turn on the grid
