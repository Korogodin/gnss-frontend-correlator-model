function create_y(h_fig_main)
%CREATE_Y Summary of this function goes here
%   Detailed explanation goes here
globals;
set_CalcStatus(h_fig_main, 'Идёт расчет процессов во фронтенде');
siggg = signal_onoff*MCode_real_sig.*S;
%     siggg_r = circshift(siggg, [0 30]);
%     siggg_r(1:30) = 0; 
%     siggg = siggg + siggg_r;
y_YP4 = siggg + noise_onoff*Noise + Jitter*jitter_onoff;
if YP4_BAND == 2
    for l = 1:L
        Okno(l) = ((f0 - 3e6)/Fd*L < l)&&((f0 + 3e6)/Fd*L > l) || ((Fd-f0 - 3e6)/Fd*L < l)&&((Fd-f0 + 3e6)/Fd*L > l);
    end
    y_YP4 = real(ifft(Okno.*fft(y_YP4)));
elseif YP4_BAND == 3
    for l = 1:L
        Okno(l) = ((f0 - 8e6)/Fd*L < l)&&((f0 + 8e6)/Fd*L > l) || ((Fd-f0 - 8e6)/Fd*L < l)&&((Fd-f0 + 8e6)/Fd*L > l);
%         Okno(l) = ((f0 - 0.5e6)/Fd*L < l)&&((f0 + 0.5e6)/Fd*L > l) || ((Fd-f0 - 0.5e6)/Fd*L < l)&&((Fd-f0 + 0.5e6)/Fd*L > l);        
    end
    y_YP4 = real(ifft(Okno.*fft(y_YP4)));
end
plot_YP4(h_fig_main);


if AD_MODE == 1
    y = y_YP4;
elseif AD_MODE == 2
    y = 2*((y_YP4 > 0) - 0.5);
end
plot_ADC(h_fig_main);

set_CalcStatus(h_fig_main, 'Процессы во фронтенде успешно смоделированы');
DoIt(h_fig_main);

end

