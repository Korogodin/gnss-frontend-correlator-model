function out_cb_RG5_Callback(hObject, eventdata, handles)
%OUT_CB_RG5_CALLBACK 
% cb_RG5 callback event

globals;
EnableMode(handles, 1);
StepReset(handles);
RG_xor(5) = get(hObject, 'Value');
if RG_xor(5)
    set(handles.txt_arr_RG5, 'Visible', 'off');
else
    set(handles.txt_arr_RG5, 'Visible', 'on');
end


end

