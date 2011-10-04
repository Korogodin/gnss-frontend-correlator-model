function out_cb_RG4_Callback(hObject, eventdata, handles)
%OUT_CB_RG4_CALLBACK 
% cb_RG4 callback event

globals;
EnableMode(handles, 1);
StepReset(handles);
RG_xor(4) = get(hObject, 'Value');
if RG_xor(4)
    set(handles.txt_arr_RG4, 'Visible', 'off');
else
    set(handles.txt_arr_RG4, 'Visible', 'on');
end

end

