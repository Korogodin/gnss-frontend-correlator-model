function out_cb_Signal_Callback(hObject, eventdata, handles)
%OUT_CB_SIGNAL_CALLBACK Outside function for cb_Signal Callback event
% Signal on/off button event

globals;
signal_onoff =  get(hObject,'Value');
if signal_onoff
    set(handles.st1, 'Visible', 'off');
    set(handles.st2, 'Visible', 'off');
else
    set(handles.st1, 'Visible', 'on');
    set(handles.st2, 'Visible', 'on');
end
create_y(handles);

end

