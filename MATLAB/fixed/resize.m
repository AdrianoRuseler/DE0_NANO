function arg_out = resize(arg,left_index,right_index)


% ,round_style,overflow_style
% X <= resize ( arg => X + 1,
% left_index => X’high,
% right_index => X’low,
% round_style => fixed_truncate (false),
%     fixed_round (true)
% overflow_style => 
% fixed_saturate (true) fixed_wrap (false));

left_index=abs(left_index);
right_index=abs(right_index);


% Default settings for fi object
Fdefault = fimath('RoundingMethod', 'Nearest', ...
    'OverflowAction', 'Saturate', ...
    'ProductMode', 'FullPrecision', ...
    'SumMode', 'FullPrecision');


% arg