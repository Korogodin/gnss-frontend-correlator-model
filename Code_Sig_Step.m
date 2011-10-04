function Code_Sig_Step(handles)
        % Приведение кода к отсчетам сигнала
    globals;
    if Step_Count <= 511
    for i = 1:100
        Code_Sig_Count = Code_Sig_Count + 1;
        MCode_gen_sig(Code_Sig_Count) = (MCode_gen(Step_Count)==0) - (MCode_gen(Step_Count)==1);
    end
    minipllot(handles.axes_DC, 1:Code_Sig_Count, (MCode_gen_sig(1:Code_Sig_Count)<0))
    set(handles.axes_DC, 'XLim', [Code_Sig_Count-2400 Code_Sig_Count+50]);
    set(handles.axes_DC, 'YLim', [-0.2 1.2]);
    end
end
