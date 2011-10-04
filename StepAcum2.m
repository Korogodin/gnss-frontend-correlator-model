function StepAcum2(h_fig_main)
% Один клок схемы тактирования схемы формирования синуса/косинуса

global Acum2 phase_Acum2 sin_Acum2 cos_Acum2 position_Acum2 SinCos_MODE Acum2_Brick l t Td

Acum2 = mod(Acum2 + Acum2_Brick, 120);
phase_Acum2 = Acum2 * 2*pi / 120; % 120 - Max Acum2
sin_Acum2(l) = 8*sin(phase_Acum2);
cos_Acum2(l) = 8*cos(phase_Acum2);
if SinCos_MODE == 2
    sin_Acum2(l) = round(sin_Acum2(l));
    cos_Acum2(l) = round(cos_Acum2(l));
end
Acum2_Int = ceil(Acum2);
position_Acum2(4) = Acum2_Int;
set(h_fig_main.txt_Acum2_Front, 'Position', ...
    position_Acum2 - [0 0 0 14]*(Acum2_Int>14) - [0 0 0 13]*(Acum2==14));
set(h_fig_main.txt_Acum2_Bracket, 'Position', position_Acum2);

XLimi = [t(l)-Td*10 t(l)+Td/3];
h = ministtem(h_fig_main.axes_Acum2_Sin, t, sin_Acum2);
set(h,'MarkerSize', 3)
set(h_fig_main.axes_Acum2_Sin, 'XLim', XLimi);
set(h_fig_main.axes_Acum2_Sin, 'YLim', [-8.8 8.8]);

h = ministtem(h_fig_main.axes_Acum2_Cos, t, cos_Acum2);
set(h,'MarkerSize', 3)
set(h_fig_main.axes_Acum2_Cos, 'XLim', XLimi);
set(h_fig_main.axes_Acum2_Cos, 'YLim', [-8.8 8.8]);

end


