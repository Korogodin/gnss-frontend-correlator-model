function out_ADC_inf_Callback(hObject, eventdata, handles)
%OUT_ADC_INF_CALLBACK Outside function for ADC_inf Callback event
% ADC inf quantization selection = double type

global AD_MODE
AD_MODE = 1;
create_y(handles);

end

