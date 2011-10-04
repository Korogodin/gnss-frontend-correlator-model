function out_sl_FR_CODE_Callback(hObject, eventdata, handles)
%OUT_SL_FR_CODE_CALLBACK Summary of this function goes here

global FR_CODE Fd f0
Fdop = get(hObject,'Value');
set(handles.txt_Fdop, 'String', ['dF = ' num2str(round(Fdop)) ' Hz']);
FR_CODE = f0 + Fdop;
    tmp = get(handles.txt_Acum2_Bracket_FR_CODE, 'Position');
    tmp(4) = (120 / (Fd / FR_CODE));
    set(handles.txt_Acum2_Bracket_FR_CODE, 'Position', tmp);
Gen_opor();
DoIt(handles);

end

