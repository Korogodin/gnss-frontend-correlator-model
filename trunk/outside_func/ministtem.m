function h = ministtem(hAx, t, y)

h = stem(hAx, t, y);
        set(hAx, 'XTick', []);
        set(hAx, 'YTick', []);
        set(h,'MarkerSize', 3)
        
end

