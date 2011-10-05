function DoIt(h_fig_main)
%DOIT Рассчитать выходные отсчеты корреляторов для векторной модели
globals;

if (Enable_Mode == 3)... % Mode: Идёт расчет по векторной модели
         ||(Enable_Mode == 4) % Mode: ПСП рассчитана, расчеты по векторной модели завершены, возможна пауза тактовой модели
    EnableMode(h_fig_main, 3); % Mode: Идёт расчет по векторной модели
    set_CalcStatus(h_fig_main, 'Сворачиваем опору и сигнал от АЦП.......');
    k = 0;
    EpsTau = nan(1, N_tau*2 + 1);
    
    ycosop = (y.*cosop)'; % y is ADC output
    ysinop = (y.*sinop)';
    for i = -N_tau:N_tau
        k = k + 1;    
        EpsTau(k) = i/(N_tau/2);
        MCode_Shifted_p = circshift(MCode_gen_sig, [0 i]);
        MCode_Shifted_e = circshift(MCode_gen_sig, [0 i-50]);
        MCode_Shifted_l = circshift(MCode_gen_sig, [0 i+50]);

        Ip(k) = MCode_Shifted_p * ycosop; 
        Qp(k) = MCode_Shifted_p * ysinop;
        Ie(k) = MCode_Shifted_e * ycosop; 
        Qe(k) = MCode_Shifted_e * ysinop;
        Il(k) = MCode_Shifted_l * ycosop; 
        Ql(k) = MCode_Shifted_l * ysinop;
        
        if ~mod(i, fix((2*N_tau+1)/10))
            set_CalcStatus(h_fig_main, ['Сворачиваем опору и сигнал от АЦП...' num2str(round(100*(i+N_tau)/(2*N_tau+1))) '%'] );            
        end
 
    end
    MCode_Shifted_p = MCode_gen_sig; % Оставляем для пошагового режима
    MCode_Shifted_e = circshift(MCode_gen_sig, [0 -4]);
    MCode_Shifted_l = circshift(MCode_gen_sig, [0 +4]);    
 
    plot_IQ(h_fig_main);
    set_CalcStatus(h_fig_main, 'Выходные отсчеты коррелятора рассчитаны для диапозона задержек +/- 2 чипа ДК');
    EnableMode(h_fig_main, 4);
end
