function out_cb_RG6_Callback(hObject, eventdata, handles)
%OUT_CB_RG6_CALLBACK 
% cb_RG6 callback event

globals;
EnableMode(handles, 1);
StepReset(handles);
RG_xor(6) = get(hObject, 'Value');
if RG_xor(6)
    set(handles.txt_arr_RG6, 'Visible', 'off');
else
    set(handles.txt_arr_RG6, 'Visible', 'on');
end


end

