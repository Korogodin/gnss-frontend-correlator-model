function out_reg8_Callback(hObject, eventdata, handles)
%OUT_RE8_CALLBACK 
% reg8 callback event

globals;
EnableMode(handles, 1);
StepReset(handles);
tmp = str2num(get(hObject, 'String'));
if abs(tmp) > 0
    set(hObject, 'String', '1');
    RG(8) = 1;
else
    RG(8) = 0;
end
set(handles.ed_RG8, 'String', num2str(RG(8)));

end

