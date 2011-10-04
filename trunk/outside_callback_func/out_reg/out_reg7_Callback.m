function out_reg7_Callback(hObject, eventdata, handles)
%OUT_RE7_CALLBACK 
% reg7 callback event

globals;
EnableMode(handles, 1);
StepReset(handles);
tmp = str2num(get(hObject, 'String'));
if abs(tmp) > 0
    set(hObject, 'String', '1');
    RG(7) = 1;
else
    RG(7) = 0;
end
set(handles.ed_RG7, 'String', num2str(RG(7)));

end

