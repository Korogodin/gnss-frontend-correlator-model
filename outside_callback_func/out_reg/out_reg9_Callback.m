function out_reg9_Callback(hObject, eventdata, handles)
%OUT_RE9_CALLBACK 
% reg9 callback event

globals;
EnableMode(handles, 1);
StepReset(handles);
tmp = str2num(get(hObject, 'String'));
if abs(tmp) > 0
    set(hObject, 'String', '1');
    RG(9) = 1;
else
    RG(9) = 0;
end
set(handles.ed_RG9, 'String', num2str(RG(9)));

end

