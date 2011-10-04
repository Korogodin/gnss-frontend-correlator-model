   % выводим коррел€ционные суммы в тактовой модели
   
            XLim1 = [t(l)-Td*10 t(l)+Td/3];
            ministtem(handles.axes_Ie_do, t, Ie_do); 
                    set(handles.axes_Ie_do, 'XLim', XLim1);
            ministtem(handles.axes_Qe_do, t, Qe_do); 
                    set(handles.axes_Qe_do, 'XLim', XLim1);
            ministtem(handles.axes_Ip_do, t, Ip_do); 
                    set(handles.axes_Ip_do, 'XLim', XLim1);
            ministtem(handles.axes_Qp_do, t, Qp_do); 
                    set(handles.axes_Qp_do, 'XLim', XLim1);
            ministtem(handles.axes_Il_do, t, Il_do); 
                    set(handles.axes_Il_do, 'XLim', XLim1);
            ministtem(handles.axes_Ql_do, t, Ql_do); 
                    set(handles.axes_Ql_do, 'XLim', XLim1);
            XLim2 = [0 t(l)+Td];            
            minipllot(handles.axes_Ie, t, Iesum_l); 
                set(handles.axes_Ie, 'XLim', XLim2);
            minipllot(handles.axes_Qe, t, Qesum_l); 
                set(handles.axes_Qe, 'XLim', XLim2);    
            minipllot(handles.axes_Ip, t, Ipsum_l); 
                set(handles.axes_Ip, 'XLim', XLim2);    
            minipllot(handles.axes_Qp, t, Qpsum_l); 
                set(handles.axes_Qp, 'XLim', XLim2);    
            minipllot(handles.axes_Il, t, Ilsum_l);     
                set(handles.axes_Il, 'XLim', XLim2);    
            minipllot(handles.axes_Ql, t, Qlsum_l);     
                set(handles.axes_Ql, 'XLim', XLim2);