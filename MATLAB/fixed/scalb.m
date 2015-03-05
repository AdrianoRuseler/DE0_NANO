function arg_out=scalb(arg)

% Scalb – Inputs are ufixed or sfixed, with an integer or signed input.  
% The Scalb function moved the index of
% the fixed point number, having the effect
% of multiplying or dividing by a power of two.


% Default settings for fi object
Fdefault = fimath('RoundingMethod', 'Nearest', ...
    'OverflowAction', 'Saturate', ...
    'ProductMode', 'FullPrecision', ...
    'SumMode', 'FullPrecision');