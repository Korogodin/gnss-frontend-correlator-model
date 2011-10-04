function set_CalcStatus(h_fig_main, strStat )
%SET_CALCSTATUS Записываем в textbox статуса строчку

set(h_fig_main.txt_CalcStatus, 'String', strStat);
drawnow

end

