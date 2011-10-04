function out_ADC_1bit_Callback(hObject, eventdata, handles)
%OUT_ADC_1BIT_CALLBACK Outside function for ADC_1bit Callback event
% ADC 1-bit quantization selection

global AD_MODE
AD_MODE = 2;
create_y(handles);

end

