function ed_RG_Step(handles)
    globals;

    
    XORR = 0;
    for i = 1:9
        if RG_xor(i) 
            XORR = xor(XORR, ed_RG(i));
        end
    end
    
    for i = 9:-1:2
        ed_RG(i) = ed_RG(i-1);
    end
    ed_RG(1) = XORR;
    
    set(handles.ed_RG1, 'String', num2str(ed_RG(1)));
    set(handles.ed_RG2, 'String', num2str(ed_RG(2)));
    set(handles.ed_RG3, 'String', num2str(ed_RG(3)));
    set(handles.ed_RG4, 'String', num2str(ed_RG(4)));
    set(handles.ed_RG5, 'String', num2str(ed_RG(5)));
    set(handles.ed_RG6, 'String', num2str(ed_RG(6)));
    set(handles.ed_RG7, 'String', num2str(ed_RG(7)));
    set(handles.ed_RG8, 'String', num2str(ed_RG(8)));
    set(handles.ed_RG9, 'String', num2str(ed_RG(9)));    
   
    Code_Sig_Step(handles);