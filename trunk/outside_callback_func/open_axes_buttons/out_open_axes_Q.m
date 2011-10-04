function out_open_axes_Q(handles)
%OUT_OPEN_AXES_Q Open separate figure for axes_Q (pushbutton12 callback)

global IQplot
hF = figure;
axesbig = copyobj(handles.axes_Q, hF);
set(hF, 'Position', [403   246   560   420]);
set(axesbig, 'Units', 'Normalized', ...
                   'Position',[0.1300    0.1100    0.7750    0.8150], ...
                       'YTickLabelMode', 'auto');
reset(axesbig);
reset(hF);
grid on
xlabel('t, \tau_{chip}')
switch IQplot
    case 1
        ylabel('Q_p')
    case 2
        ylabel('Q_e')
    case 3
        ylabel('Q_l')
end


end

