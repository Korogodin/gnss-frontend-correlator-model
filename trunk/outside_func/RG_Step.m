function RG_Step(handles)
    globals;

    
    XORR = 0;
    for i = 1:9
        if RG_xor(i) 
            XORR = xor(XORR, RG(i));
        end
    end
    
    for i = 9:-1:2
        RG(i) = RG(i-1);
    end
    RG(1) = XORR;
    
    set(handles.reg1, 'String', num2str(RG(1)));
    set(handles.reg2, 'String', num2str(RG(2)));
    set(handles.reg3, 'String', num2str(RG(3)));
    set(handles.reg4, 'String', num2str(RG(4)));
    set(handles.reg5, 'String', num2str(RG(5)));
    set(handles.reg6, 'String', num2str(RG(6)));
    set(handles.reg7, 'String', num2str(RG(7)));
    set(handles.reg8, 'String', num2str(RG(8)));
    set(handles.reg9, 'String', num2str(RG(9)));    

    
    Step_Count = Step_Count + 1;
    MCode_gen(Step_Count) = RG(7);
    set(handles.st_StepCounter, 'String', num2str(Step_Count));
    
    Code_Sig_Step(handles);