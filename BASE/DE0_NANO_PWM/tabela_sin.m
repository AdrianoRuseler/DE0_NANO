                                                                                       
%%
% Tabela sin para FPGA
fid = fopen('tabela_sin.txt', 'w');


Nbits=11;
max_phase = 2^16-1;

duty=0.858794; % Duty cycle
cmax = 1335; 
med = cmax/2;
amp = med*duty;

fprintf(fid, 'with id select\n');
fprintf(fid, '  sin <= ');

for id=1:1:(cmax)
    idd = fi(id-1,0,Nbits,0);
    fprintf(fid, '		    std_logic_vector(to_unsigned(%i, n_bits_c)) when "%s", \n', round(amp*sin((id-1)/(cmax)*pi*2)+med), idd.bin);
end
    fprintf(fid, '		    std_logic_vector(to_unsigned(0, n_bits_c)) when others;');

fclose(fid);

