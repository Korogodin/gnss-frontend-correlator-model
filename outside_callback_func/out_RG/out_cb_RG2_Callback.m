function out_cb_RG2_Callback(hObject, eventdata, handles)
%OUT_CB_RG2_CALLBACK 
% cb_RG2 callback event

globals;
EnableMode(handles, 1);
StepReset(handles);
RG_xor(2) = get(hObject, 'Value');
if RG_xor(2)
    set(handles.txt_arr_RG2, 'Visible', 'off');
else
    set(handles.txt_arr_RG2, 'Visible', 'on');
end

end

