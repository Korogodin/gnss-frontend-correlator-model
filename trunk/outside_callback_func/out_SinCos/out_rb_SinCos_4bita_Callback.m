function out_rb_SinCos_4bita_Callback(hObject, eventdata, handles)
%OUT_RB_SINCOS_INF_CALLBACK Sin/cos quantization choice
global SinCos_MODE
SinCos_MODE = 2;
Gen_opor();
DoIt(handles);

end

