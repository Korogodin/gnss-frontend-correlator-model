function out_reg1_Callback(hObject, eventdata, handles)
%OUT_REG1_CALLBACK 
% reg1 callback event

globals;
EnableMode(handles, 1);
StepReset(handles);
tmp = str2num(get(hObject, 'String'));
if abs(tmp) > 0
    set(hObject, 'String', '1');
    RG(1) = 1;
else
    RG(1) = 0;
end
set(handles.ed_RG1, 'String', num2str(RG(1)));

end

