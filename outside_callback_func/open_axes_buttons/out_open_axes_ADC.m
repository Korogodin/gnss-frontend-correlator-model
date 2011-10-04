function out_open_axes_ADC(handles)
%OUT_OPEN_AXES_ADC Open separate figure for axes_ADC (pushbutton10 callback)

hF = figure;
axesbig = copyobj(handles.axes_ADC, hF);
set(hF, 'Position', [403   246   560   420]);
set(axesbig, 'Units', 'Normalized', ...
                   'Position',[0.1300    0.1100    0.7750    0.8150], ...
                       'YTickLabelMode', 'auto');
reset(axesbig);
reset(hF);
grid on
xlabel('t, c')
ylabel('y')


end

