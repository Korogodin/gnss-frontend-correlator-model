function out_reg3_Callback(hObject, eventdata, handles)
%OUT_REG3_CALLBACK 
% reg3 callback event

globals;
EnableMode(handles, 1);
StepReset(handles);
tmp = str2num(get(hObject, 'String'));
if abs(tmp) > 0
    set(hObject, 'String', '1');
    RG(3) = 1;
else
    RG(3) = 0;
end
set(handles.ed_RG3, 'String', num2str(RG(3)));

end

