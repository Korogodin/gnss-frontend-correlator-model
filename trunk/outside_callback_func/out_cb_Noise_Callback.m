function out_cb_Noise_Callback(hObject, eventdata, handles)
%OUT_CB_NOISE_CALLBACK Outside function for cb_Noise Callback event
% Noise on/off button callback
globals;
noise_onoff =  get(hObject,'Value');
Noise = STD_Noise*randn(1,L);
create_y(handles);

end

