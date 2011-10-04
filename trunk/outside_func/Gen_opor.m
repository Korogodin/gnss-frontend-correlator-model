function Gen_opor()
% Генератор опорных син/кос
global t cosop sinop SinCos_MODE FR_CODE

cosop = 8*cos(2*pi*(FR_CODE)*t);
sinop = 8*sin(2*pi*(FR_CODE)*t);

if SinCos_MODE == 2
    cosop = round(cosop);
    sinop = round(sinop);
end

end

