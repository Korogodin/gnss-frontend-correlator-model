function DoIt(h_fig_main)
%DOIT Рассчитать выходные отсчеты корреляторов для векторной модели
globals;

if (Enable_Mode == 3)||(Enable_Mode == 4)
    EnableMode(h_fig_main, 3);
    set_CalcStatus(h_fig_main, 'Сворачиваем опору и сигнал от АЦП.......');
    k = 0;
    EpsTau = nan(1,401);
    Iee = nan(1,401);
    Qee = nan(1,401);
    Ill = nan(1,401);
    Qll = nan(1,401);
    Ieee = nan(1,401);
    Qeee = nan(1,401);
    Illl = nan(1,401);
    Qlll = nan(1,401);    
    for i = -200:200
    k = k + 1;    
    EpsTau(k) = i/100;
    MCode_Shifted_p = circshift(MCode_gen_sig, [0 i]);
    MCode_Shifted_e = circshift(MCode_gen_sig, [0 i-4]);
    MCode_Shifted_l = circshift(MCode_gen_sig, [0 i+4]);
    MCode_Shifted_ee = circshift(MCode_gen_sig, [0 i-2*4]);
    MCode_Shifted_ll = circshift(MCode_gen_sig, [0 i+2*4]);    
    MCode_Shifted_eee = circshift(MCode_gen_sig, [0 i-3*4]);
    MCode_Shifted_lll = circshift(MCode_gen_sig, [0 i+3*4]);
    Ip(k) = cosop * (MCode_Shifted_p .* y)';
    Qp(k) = sinop * (MCode_Shifted_p .* y)';
    Ie(k) = cosop * (MCode_Shifted_e .* y)';
    Qe(k) = sinop * (MCode_Shifted_e .* y)';
    Il(k) = cosop * (MCode_Shifted_l .* y)';
    Ql(k) = sinop * (MCode_Shifted_l .* y)';
    Ill(k) = cosop * (MCode_Shifted_ll .* y)';
    Qll(k) = sinop * (MCode_Shifted_ll .* y)';
    Iee(k) = cosop * (MCode_Shifted_ee .* y)';
    Qee(k) = sinop * (MCode_Shifted_ee .* y)';    
    Illl(k) = cosop * (MCode_Shifted_lll .* y)';
    Qlll(k) = sinop * (MCode_Shifted_lll .* y)';
    Ieee(k) = cosop * (MCode_Shifted_eee .* y)';
    Qeee(k) = sinop * (MCode_Shifted_eee .* y)';    
    end
    MCode_Shifted_p = MCode_gen_sig;
    MCode_Shifted_e = circshift(MCode_gen_sig, [0 -4]);
    MCode_Shifted_l = circshift(MCode_gen_sig, [0 +4]);    
    MCode_Shifted_ee = circshift(MCode_gen_sig, [0 -2*4]);
    MCode_Shifted_ll = circshift(MCode_gen_sig, [0 +2*4]);    
    MCode_Shifted_eee = circshift(MCode_gen_sig, [0 -3*4]);
    MCode_Shifted_lll = circshift(MCode_gen_sig, [0 +3*4]);    
    plot_IQ(h_fig_main);
    set_CalcStatus(h_fig_main, 'Выходные отсчеты коррелятора рассчитаны для диапозона задержек +/- 2 чипа ДК');
    EnableMode(h_fig_main, 4);
end

