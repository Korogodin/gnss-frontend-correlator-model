function out_but_RG_Step_Callback(hObject, eventdata, handles)
%OUT_BUT_RG_STEP_CALLBACK 
%   but_RG_Step event

globals;
if Step_Count < 511
    RG_Step(handles);
else
    DoIt();
end

end

