function arg_out = to_ufixed(arg,left_index,right_index)

% To_ufixed (real) Inputs: arg (real) , left_index and right_index (integer) OR size_res (ufixed).
% Parameters: round_style : Boolean, saturate_style � Converts a real into a �ufixed�. If the input is
% negative then and error is produced and 0 is returned.

left_index=abs(left_index);
right_index=abs(right_index);

% Default settings for fi object
Fdefault = fimath('RoundingMethod', 'Nearest', ...
    'OverflowAction', 'Saturate', ...
    'ProductMode', 'FullPrecision', ...
    'SumMode', 'FullPrecision');


arg_out = fi(arg,0,left_index+right_index+1,right_index,Fdefault);