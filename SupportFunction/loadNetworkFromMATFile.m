function net = loadNetworkFromMATFile(baselineNetwork)
    switch baselineNetwork
      case "custom"
        net = load("specSenseTrainedNetCustom.mat",'net');
      case "resnet18"
        net = load("specSenseTrainedNetResnet18.mat",'net');
      case "resnet50"
        net = load("specSenseTrainedNetResnet50.mat",'net');
      case "mobilenetv2"
        net = load("specSenseTrainedNetMobileNetv2.mat",'net');
      otherwise
        error("Unknown baseline network: " + baselineNetwork)
    end
    net = net.net;
end