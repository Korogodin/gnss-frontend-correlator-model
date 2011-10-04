function out_cb_RG8_Callback(hObject, eventdata, handles)
%OUT_CB_RG8_CALLBACK 
% cb_RG8 callback event

globals;
EnableMode(handles, 1);
StepReset(handles);
RG_xor(8) = get(hObject, 'Value');
if RG_xor(8)
    set(handles.txt_arr_RG8, 'Visible', 'off');
else
    set(handles.txt_arr_RG8, 'Visible', 'on');
end


end

