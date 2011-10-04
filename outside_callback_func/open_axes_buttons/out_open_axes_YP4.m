function out_open_axes_YP4(handles)
%OUT_OPEN_AXES_YP4 Open separate figure for axes_YP4 (pushbutton9 callback)

global f0
hF = figure;
axesbig = copyobj(handles.axes_YP4, hF);
set(hF, 'Position', [403   246   560   420]);
set(axesbig, 'Units', 'Normalized', ...
                   'Position',[0.1300    0.1100    0.7750    0.8150], ...
                       'YTickLabelMode', 'auto');
reset(axesbig);
reset(hF);
xlim(axesbig, [0 2*f0]);
grid on
xlabel('f, Гц')
ylabel('|fft(y)|, dB')


end

