function out_reg6_Callback(hObject, eventdata, handles)
%OUT_REG6_CALLBACK 
% reg6 callback event

globals;
EnableMode(handles, 1);
StepReset(handles);
tmp = str2num(get(hObject, 'String'));
if abs(tmp) > 0
    set(hObject, 'String', '1');
    RG(6) = 1;
else
    RG(6) = 0;
end
set(handles.ed_RG6, 'String', num2str(RG(6)));

end

