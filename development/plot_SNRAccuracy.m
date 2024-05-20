
% Assuming WiComNetA.TrainingAccuracy is a 1x28176 vector

SNRs = [-5 0 5 10 15 20 25 30];

pwicomnet = [0.36953 0.83025 0.95363 0.95736 0.96019 0.9592 0.95999 0.96421] * 100;
punet = [0.6433	0.93323	0.97062	0.97422	0.97554	0.97577	0.97869	0.97737] * 100;
punetpp = [0.61435	0.92859	0.96592	0.9699	0.97189	0.96974	0.97362	0.97281] * 100;
punetp = [0.65794	0.93313	0.96877	0.97081	0.97409	0.97246	0.97521	0.97379] * 100;
punetE = [0.65718	0.92531	0.96462	0.96643	0.97024	0.96695	0.9713	0.97211] * 100;
pdeeplab = [0.23959	0.38916	0.44452	0.44481	0.44365	0.44565	0.44389	0.44756] * 100;
pconvnet = [0.32923	0.37868	0.40207	0.40214	0.40523	0.405	0.40585	0.40411] * 100;


% Plot the accuracies for each epoch
figure;
plot(SNRs, pwicomnet, '-b', 'LineWidth', 1, 'Marker', "square"); % Plot wicomnetA in red
hold on; % Hold the current plot
plot(SNRs, punet,'color',	"#00FF00", 'LineWidth', 1, 'Marker', "+"); % Plot unet in blue
hold on; % Hold the current plot
plot(SNRs, punetp,'color', "#0072BD", 'LineWidth', 1, 'Marker', "*");
hold on; % Hold the current plot
plot(SNRs, punetE,'color', "#EDB120", 'LineWidth', 1, 'Marker', "o");
hold on; % Hold the current plot
plot(SNRs, punetpp,'color', "#D95319", 'LineWidth', 1, 'Marker', "x");
hold on; % Hold the current plot
plot(SNRs, pconvnet,'color', "#FF00FF", 'LineWidth', 1, 'Marker', "^");
hold on; % Hold the current plot
plot(SNRs, pdeeplab,'color', "#4DBEEE", 'LineWidth', 1, 'Marker', "v");


hold off; % Release the hold

xlabel('SNR (dB)');
ylabel('Accuracy (%)');
title('Accuracy under different noise levels');
legend('SpecSenseNet* - 7.8M - 0.0713 - 97.233',....
       'Unet - 31.3M - 0.0766 - 98.227',...
       'Unetp - 42.5M - 0.0754 - 98.07',...
       'UnetE - 42.3M - 0.0835 - 97.844',...
       'Unetpp - 43.5M - 0.0801 - 97.981',...
       'ConvNet - 20.6M - 1.2742 - 39.696',...
       'deeplabv3 - 20.6M - 1.1725 - 46.266',...
       'Location', 'best'); % Add legend for each line
grid on; % Turn on the grid
