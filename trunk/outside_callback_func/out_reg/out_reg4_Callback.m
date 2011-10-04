function out_reg4_Callback(hObject, eventdata, handles)
%OUT_REG4_CALLBACK 
% reg4 callback event

globals;
EnableMode(handles, 1);
StepReset(handles);
tmp = str2num(get(hObject, 'String'));
if abs(tmp) > 0
    set(hObject, 'String', '1');
    RG(4) = 1;
else
    RG(4) = 0;
end
set(handles.ed_RG4, 'String', num2str(RG(4)));

end

