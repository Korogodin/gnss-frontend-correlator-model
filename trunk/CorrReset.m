function CorrReset(handles)
%CORRRESET Summary of this function goes here
%   Detailed explanation goes here
globals;
l = 0;
Acum1 = 0; Acum2 = 0; 
ed_RG = RG;
set(handles.ed_RG1, 'String', num2str(RG(1)));
set(handles.ed_RG2, 'String', num2str(RG(2)));
set(handles.ed_RG3, 'String', num2str(RG(3)));
set(handles.ed_RG4, 'String', num2str(RG(4)));
set(handles.ed_RG5, 'String', num2str(RG(5)));
set(handles.ed_RG6, 'String', num2str(RG(6)));
set(handles.ed_RG7, 'String', num2str(RG(7)));
set(handles.ed_RG8, 'String', num2str(RG(8)));
set(handles.ed_RG9, 'String', num2str(RG(9)));

position_Acum1(4) = 1;
set(handles.txt_Acum1_Front, 'Position', position_Acum1);
set(handles.txt_Acum1_Bracket, 'Position', position_Acum1);
position_Acum2(4) = 1;
set(handles.txt_Acum2_Front, 'Position', position_Acum2);
set(handles.txt_Acum2_Bracket, 'Position', position_Acum2);
position_L_Count(4) = 1;
set(handles.txt_L_Count_Front, 'Position', position_L_Count);

Ilsum = 0; Ipsum = 0; Iesum = 0; Qlsum = 0; Qpsum = 0; Qesum = 0; 
Ilsum_l = nan(1,L); Ipsum_l = nan(1,L); Iesum_l = nan(1,L); Qlsum_l = nan(1,L); Qpsum_l = nan(1,L); Qesum_l = nan(1,L);
Il_do = nan(1,L); Ip_do = nan(1,L); Ie_do = nan(1,L); Ql_do = nan(1,L); Qp_do = nan(1,L); Qe_do = nan(1,L);


end

