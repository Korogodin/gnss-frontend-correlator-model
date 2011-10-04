function out_reg2_Callback(hObject, eventdata, handles)
%OUT_REG2_CALLBACK 
% reg2 callback event

globals;
EnableMode(handles, 1);
StepReset(handles);
tmp = str2num(get(hObject, 'String'));
if abs(tmp) > 0
    set(hObject, 'String', '1');
    RG(2) = 1;
else
    RG(2) = 0;
end
set(handles.ed_RG2, 'String', num2str(RG(2)));

end

