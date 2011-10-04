function out_cb_RG9_Callback(hObject, eventdata, handles)
%OUT_CB_RG9_CALLBACK 
% cb_RG9 callback event

globals;
EnableMode(handles, 1);
StepReset(handles);
RG_xor(9) = get(hObject, 'Value');
if RG_xor(9)
    set(handles.txt_arr_RG9, 'Visible', 'off');
else
    set(handles.txt_arr_RG9, 'Visible', 'on');
end


end

