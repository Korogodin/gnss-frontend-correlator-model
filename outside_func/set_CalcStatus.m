function set_CalcStatus(h_fig_main, strStat )
%SET_CALCSTATUS ���������� � textbox ������� �������

set(h_fig_main.txt_CalcStatus, 'String', strStat);
drawnow

end

