function out_but_OneClock_Callback(hObject, eventdata, handles)
%OUT_BUT_ONECLOCK_CALLBACK Generate one clock pulse

globals;
EnableMode(handles, 5);
    l = l + 1;

            h = ministtem(handles.axes_in, t, y);
                set(h,'MarkerSize', 3)
                set(handles.axes_in, 'XLim', [t(l)-Td*10 t(l)+Td/3;]);

            StepAcum1(handles);
            StepAcum2(handles);
            StepAcum3(handles);

            DoIt2;
            
            plotIt2;

            drawnow;

EnableMode(handles, 4);


end

