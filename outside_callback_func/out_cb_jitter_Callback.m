function out_cb_jitter_Callback(hObject, eventdata, handles)
%OUT_CB_JITTER_CALLBACK Switching on/off additive jitter

global jitter_onoff
jitter_onoff =  get(hObject,'Value');
if jitter_onoff
   set(handles.txt_Jitter, 'Visible', 'off');
else
   set(handles.txt_Jitter, 'Visible', 'on');
end
%Noise = STD_Noise*randn(1,L);
create_y(handles);

end

