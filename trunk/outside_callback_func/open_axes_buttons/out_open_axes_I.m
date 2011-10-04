function out_open_axes_I(handles)
%OUT_OPEN_AXES_I Open separate figure for axes_I (pushbutton11 callback)

global IQplot
hF = figure;
axesbig = copyobj(handles.axes_I, hF);
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
        ylabel('I_p')
    case 2
        ylabel('I_e')
    case 3
        ylabel('I_l')
end


end

