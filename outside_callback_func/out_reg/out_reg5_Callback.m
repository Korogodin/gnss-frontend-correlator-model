function out_reg5_Callback(hObject, eventdata, handles)
%OUT_REG5_CALLBACK 
% reg5 callback event

globals;
EnableMode(handles, 1);
StepReset(handles);
tmp = str2num(get(hObject, 'String'));
if abs(tmp) > 0
    set(hObject, 'String', '1');
    RG(5) = 1;
else
    RG(5) = 0;
end
set(handles.ed_RG5, 'String', num2str(RG(5)));

end

