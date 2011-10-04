function out_but_OnOffClock_Callback(hObject, eventdata, handles)
%OUT_BUT_ONOFFCLOCK_CALLBACK Switching on/off scheme clock

globals;
if get(handles.but_OnOffClock, 'Value')
    EnableMode(handles, 6);
    for l = (l+1):L
        if Enable_Mode == 6
            h = ministtem(handles.axes_in, t, y);
                set(h,'MarkerSize', 3)
                set(handles.axes_in, 'XLim', [t(l)-Td*10 t(l)+Td/3;]);

            StepAcum1(handles);
            StepAcum2(handles);
            StepAcum3(handles);

            DoIt2;
            
            plotIt2;

            drawnow;
        else
            l = l - 1;
            break;
        end
    end
else
    EnableMode(handles, 4);
end

end

