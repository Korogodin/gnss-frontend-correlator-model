function out_cb_RG7_Callback(hObject, eventdata, handles)
%OUT_CB_RG7_CALLBACK 
% cb_RG7 callback event

globals;
EnableMode(handles, 1);
StepReset(handles);
RG_xor(7) = get(hObject, 'Value');
if RG_xor(7)
    set(handles.txt_arr_RG7, 'Visible', 'off');
else
    set(handles.txt_arr_RG7, 'Visible', 'on');
end


end

