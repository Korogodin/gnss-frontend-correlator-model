function out_but_CalcAll_Callback(hObject, eventdata, handles)
%OUT_BUT_CALCALL_CALLBACK Calculate All button event

globals;
EnableMode(handles, 2);
set_CalcStatus(handles, 'Идёт расчёт ПСП дальномерного кода...');
while Step_Count < 512
    RG_Step(handles);
    drawnow;
end
set_CalcStatus(handles, 'Расчёт ПСП дальномерного кода успешно завершен');
ed_RG = RG;
CorrReset(handles);
EnableMode(handles, 3);
DoIt(handles);

end

