                                                                                       
%% Integrador


Nin = 13;  % numero de bits da parte inteira excluindo sinal de entrada
Nout = 30;  % numero de bits da parte inteira excluindo sinal de saida

N16= 16;


MAX=536870911;
int_data=4832;
% int_data => std_logic_vector(to_unsigned(4832, 13))  -- daonde vem esse numero?

theta_pll = fi(0:int_data:MAX,0,Nout,0);

thasum=fi(-32767,1,17,0);
thbsum=fi(-10922,1,17,0);
thcsum=fi(10922,1,17,0);
 

th17bits=fi(bitsrl(theta_pll,13),1,17,0);

th_ai=th17bits+thasum;
th_bi=th17bits+thbsum; 
th_ci=th17bits+thcsum;



theta_a = fi(th_ai,1,16,0);
theta_b = fi(th_bi,1,16,0);
theta_c = fi(th_ci,1,16,0);



%% Tabela sin para FPGA
fid = fopen('tabela_sin.txt', 'w');


Nbits=11; % log2(1335) = 10.3826
max_phase = 2^16-1;

duty=0.858794; % Duty cycle
cmax = 1335;
med = cmax/2;
amp = med*duty;



fprintf(fid, 'with id select\n');
fprintf(fid, '  sin <= ');

for id=1:1:2^Nbits
    idd = fi(id-1,0,Nbits,0);
    plotar(id)=round(amp*sin((id-1)/(cmax)*pi*2)+med);
    fprintf(fid, '		    std_logic_vector(to_unsigned(%u, n_bits_c)) when "%s", \n', round(amp*sin((id-1)/(cmax)*pi*2)+med), idd.bin);
end


fprintf(fid, '		    std_logic_vector(to_unsigned(0, n_bits_c)) when others;');

fclose(fid);

%%

duty=0.858794; % Duty cycle
cmax = 1335;
med = cmax/2;
amp = med;
% amp = med*duty;


Nbits=11; % log2(1335) = 10.3826

id=0:1:2^Nbits-1;
idfi = fi(id,0,Nbits,0);

wt=id*2*pi/(2^Nbits)
y=sin(wt);



senofi=fi(y,0,16,0)

seno=round(amp*y+med);



%% Escreve no arquivo .txt
fid = fopen('tabelaDuty_sin.txt', 'w');

fprintf(fid, 'with id select\n');
fprintf(fid, '  sin <= ');


for k=1:2^Nbits
    id = idfi(k);
    fprintf(fid, '		    std_logic_vector(to_unsigned(%u, n_bits_c)) when "%s", \n', seno(k), id.bin);
end


fprintf(fid, '		    std_logic_vector(to_unsigned(0, n_bits_c)) when others;');

fclose(fid);
