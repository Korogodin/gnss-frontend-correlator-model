function out_cb_RG1_Callback(hObject, eventdata, handles)
%OUT_CB_RG1_CALLBACK 
% cb_RG1 callback event

globals;
EnableMode(handles, 1);
StepReset(handles);
RG_xor(1) = get(hObject, 'Value');
if RG_xor(1)
    set(handles.txt_arr_RG1, 'Visible', 'off');
else
    set(handles.txt_arr_RG1, 'Visible', 'on');
end

end

