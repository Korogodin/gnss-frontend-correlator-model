function StepAcum3(h_fig_main)
% Один клок схемы аккумулятора L

global l L position_L_Count

hiii = ceil(45 * l/L);
position_L_Count(4) = hiii;
set(h_fig_main.txt_L_Count_Front, 'Position', position_L_Count);

end


