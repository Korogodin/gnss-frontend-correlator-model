function StepAcum1(h_fig_main)
% Один клок схемы тактирования схемы формирования ДК

global Acum1 DL_CODE overflow_Acum1 position_Acum1 l t Td

if DL_CODE >= (100 - Acum1)
    overflow_Acum1(l) = 1;
    ed_RG_Step(h_fig_main);
else
    overflow_Acum1(l) = 0;
end

Acum1 = mod(Acum1 + DL_CODE, 100);
position_Acum1(4) = Acum1 + (Acum1==0)*1;
set(h_fig_main.txt_Acum1_Front, 'Position', position_Acum1 - [0 0 0 1]*(Acum1>1));
set(h_fig_main.txt_Acum1_Bracket, 'Position', position_Acum1);

bar(h_fig_main.axes_Acum1, -t, overflow_Acum1);
set(h_fig_main.axes_Acum1, 'XTick', []);
set(h_fig_main.axes_Acum1, 'YTick', []);
set(h_fig_main.axes_Acum1, 'XLim', [-t(l) -t(l)+Td*25]);
set(h_fig_main.axes_Acum1, 'YLim', [-0.2 1.2]);
end

