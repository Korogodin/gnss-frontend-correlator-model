function StepReset(handles)
    
    globals;
    Step_Count = 1; % Step Reset
    Code_Sig_Count = 0;
    set(handles.st_StepCounter, 'String', '1');
    MCode_gen = nan(1, 511);
    MCode_gen_sig = nan(1, 51100);
    MCode_gen(1) = RG(7);
    Code_Sig_Step(handles);

end

