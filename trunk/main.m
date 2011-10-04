clear all
clc
close all

addpath( [pwd '/lists'] );
globals;
additional_paths;

if (ispc) % if system is Win
    h_fig_main = guihandles(fig_main);
elseif (isunix)
    h_fig_main = guihandles(fig_main_L);
    set_linux_fonts;
    set_linux_cb_size;
end

Enable_Mode = 1; % ПСП не рассчитана, производится установка параметров
EnableMode(h_fig_main, Enable_Mode);

Tc = 0.001; % Время накопления в корреляторах
L = 51100; % Точек с тактом Td на одном периоде коррелирования
Td = Tc / L; Fd = 1 / Td;
t = (1:L)*Td; % Время на одном интервале коррелирования
f0 = 6e6; FR_CODE = f0; 
Acum2_Brick = 120 / (Fd / FR_CODE); % Высота кирпича для данной частоты

d_phase = rand(1,1)*2*pi; % Начальная фаза принимаемого сигнала
d_phase = 0;
A = 1; S = A*cos(2*pi*f0*t + d_phase); signal_onoff = 1; noise_onoff = 0; jitter_onoff = 0;
Jitter = 2*A*cos(2*pi*(f0-100000)*t);
qcno_dB = 45; qcno = 10^(qcno_dB/10); 
STD_Noise = A / sqrt(4 * qcno * Td); % СКО шума
Noise = STD_Noise*randn(1,L); 
AD_MODE = 1; % 1 - режим АЦП
YP4_BAND = 1; % Полоса УПЧ
IQplot = 1; % Что выводим на плот

load MCode.mat

% EpsFreq = 0; % Ошибка по частоте
Gen_opor(); % Генерируем вектора опорных колебаний
create_y(h_fig_main); % Генерим сигнал, пропускаем через УПЧ, рисуем
set_CalcStatus(h_fig_main, 'Следуйте плану проведения лабораторной работы');

MCode_gen = nan(1,511); 
MCode_gen_sig = nan(1,L);
Step_Count = 1; Code_Sig_Count = 0;
RG_xor = zeros(1, 9); 
RG = zeros(1,9);

l = 0;

Acum1 = 0;
DL_CODE = 1;
overflow_Acum1 = nan(1,L);
position_Acum1 = get(h_fig_main.txt_Acum1_Front, 'Position');

Acum2 = 0;
sin_Acum2 = nan(1,L);
cos_Acum2 = nan(1,L);
SinCos_MODE = 1; 
position_Acum2 = get(h_fig_main.txt_Acum2_Front, 'Position');

position_L_Count = get(h_fig_main.txt_L_Count_Front, 'Position');

Ilsum = 0; Ipsum = 0; Iesum = 0; Qlsum = 0; Qpsum = 0; Qesum = 0; 
Ilsum_l = nan(1,L); Ipsum_l = nan(1,L); Iesum_l = nan(1,L); Qlsum_l = nan(1,L); Qpsum_l = nan(1,L); Qesum_l = nan(1,L);
Il_do = nan(1,L); Ip_do = nan(1,L); Ie_do = nan(1,L); Ql_do = nan(1,L); Qp_do = nan(1,L); Qe_do = nan(1,L);