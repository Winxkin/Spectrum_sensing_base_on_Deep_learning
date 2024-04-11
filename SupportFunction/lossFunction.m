function loss = lossFunction(ypred,yactual,weights)
% Compute weighted cross-entropy loss.
cdim = find(dims(ypred) == 'C');
loss = crossentropy(ypred,yactual,weights,WeightsFormat="C",NormalizationFactor="none");
wn = shiftdim(weights(:)',-(cdim-2));
wnT = extractdata(yactual).*wn;
normFac = sum(wnT(:))+eps('single');
loss = loss/normFac;
end