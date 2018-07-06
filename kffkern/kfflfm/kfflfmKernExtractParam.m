function [params, names] = kfflfmKernExtractParam(kern)

% KFFLFMKERNEXTRACTPARAM Extract params from the KFFLFM kernel structure.
% FORMAT
% DESC Extract parameters from the kernel Fourier features for LFM into a 
% vector of parameters for optimisation.
% ARG kern : the kernel structure containing the parameters to be
% extracted.
% RETURN param : vector of parameters extracted from the kernel. 
%
% FORMAT
% DESC Extract parameters from the kernel Fourier features for LFM into a 
% vector of parameters for optimisation.
% ARG kern : the kernel structure containing the parameters to be
% extracted.
% RETURN param : vector of parameters extracted from the kernel. 
% RETURN names : cell array of strings containing parameter names.
%
% SEEALSO kfflfmKernParamInit, kfflfmKernExpandParam
%
% COPYRIGHT : Mauricio A. Alvarez, 2017

% KERN

if nargout > 1
    [params, names] = lfmKernExtractParam(kern);
else
    params = lfmKernExtractParam(kern);
end