function out_cb_RG3_Callback(hObject, eventdata, handles)
%OUT_CB_RG3_CALLBACK 
% cb_RG3 callback event

globals;
EnableMode(handles, 1);
StepReset(handles);
RG_xor(3) = get(hObject, 'Value');
if RG_xor(3)
    set(handles.txt_arr_RG3, 'Visible', 'off');
else
    set(handles.txt_arr_RG3, 'Visible', 'on');
end

end

