% Correction of checkbox's size in case Linux OS

set(h.cb_RG1, 'BackgroundColor', 'white')
set(h.cb_RG2, 'BackgroundColor', 'white')
set(h.cb_RG3, 'BackgroundColor', 'white')
set(h.cb_RG4, 'BackgroundColor', 'white')
set(h.cb_RG5, 'BackgroundColor', 'white')
set(h.cb_RG6, 'BackgroundColor', 'white')
set(h.cb_RG7, 'BackgroundColor', 'white')
set(h.cb_RG8, 'BackgroundColor', 'white')
set(h.cb_RG9, 'BackgroundColor', 'white')

correction_matrix = [-2 -1 0 0];
set(h.cb_RG1, 'Position', (get(h.cb_RG1, 'Position') + correction_matrix) )
set(h.cb_RG2, 'Position', (get(h.cb_RG2, 'Position') + correction_matrix) )
set(h.cb_RG3, 'Position', (get(h.cb_RG3, 'Position') + correction_matrix) )
set(h.cb_RG4, 'Position', (get(h.cb_RG4, 'Position') + correction_matrix) )
set(h.cb_RG5, 'Position', (get(h.cb_RG5, 'Position') + correction_matrix) )
set(h.cb_RG6, 'Position', (get(h.cb_RG6, 'Position') + correction_matrix) )
set(h.cb_RG7, 'Position', (get(h.cb_RG7, 'Position') + correction_matrix) )
set(h.cb_RG8, 'Position', (get(h.cb_RG8, 'Position') + correction_matrix) )
set(h.cb_RG9, 'Position', (get(h.cb_RG9, 'Position') + correction_matrix) )
