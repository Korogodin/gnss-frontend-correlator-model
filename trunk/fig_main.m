function varargout = fig_main(varargin)
% FIG_MAIN M-file for fig_main.fig
%      FIG_MAIN, by itself, creates a new FIG_MAIN or raises the existing
%      singleton*.
%
%      H = FIG_MAIN returns the handle to a new FIG_MAIN or the handle to
%      the existing singleton*.
%
%      FIG_MAIN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FIG_MAIN.M with the given input arguments.
%
%      FIG_MAIN('Property','Value',...) creates a new FIG_MAIN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before fig_main_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to fig_main_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help fig_main

% Last Modified by GUIDE v2.5 10-Oct-2010 22:28:02

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @fig_main_OpeningFcn, ...
                   'gui_OutputFcn',  @fig_main_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before fig_main is made visible.
function fig_main_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to fig_main (see VARARGIN)

% Choose default command line output for fig_main
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes fig_main wait for user response (see UIRESUME)
% uiwait(handles.fig_main);

fig_main_pictureData = imread('images/fig_main.png');
Img=image(fig_main_pictureData, 'Parent', handles.axes_Pic1);
set(handles.axes_Pic1, 'XTick', []);
set(handles.axes_Pic1, 'YTick', []);
set(handles.axes_YP4, 'XTick', []);
set(handles.axes_YP4, 'YTick', []);
set(handles.axes_ADC, 'XTick', []);
set(handles.axes_ADC, 'YTick', []);
set(handles.axes_DC, 'XTick', []);
set(handles.axes_DC, 'YTick', []);
set(handles.axes_Acum1, 'XTick', []);
set(handles.axes_Acum1, 'YTick', []);
set(handles.axes_Acum2_Cos, 'XTick', []);
set(handles.axes_Acum2_Cos, 'YTick', []);
set(handles.axes_Acum2_Sin, 'XTick', []);
set(handles.axes_Acum2_Sin, 'YTick', []);
set(handles.axes_in, 'XTick', []);
set(handles.axes_in, 'YTick', []);
set(handles.axes_Ie, 'XTick', []);
set(handles.axes_Ie, 'YTick', []);
set(handles.axes_Qe, 'XTick', []);
set(handles.axes_Qe, 'YTick', []);
set(handles.axes_Ip, 'XTick', []);
set(handles.axes_Ip, 'YTick', []);
set(handles.axes_Qp, 'XTick', []);
set(handles.axes_Qp, 'YTick', []);
set(handles.axes_Il, 'XTick', []);
set(handles.axes_Il, 'YTick', []);
set(handles.axes_Ql, 'XTick', []);
set(handles.axes_Ql, 'YTick', []);
set(handles.axes_Ie_do, 'XTick', []);
set(handles.axes_Ie_do, 'YTick', []);
set(handles.axes_Qe_do, 'XTick', []);
set(handles.axes_Qe_do, 'YTick', []);
set(handles.axes_Ip_do, 'XTick', []);
set(handles.axes_Ip_do, 'YTick', []);
set(handles.axes_Qp_do, 'XTick', []);
set(handles.axes_Qp_do, 'YTick', []);
set(handles.axes_Il_do, 'XTick', []);
set(handles.axes_Il_do, 'YTick', []);
set(handles.axes_Ql_do, 'XTick', []);
set(handles.axes_Ql_do, 'YTick', []);
set(handles.axes_Pic1, 'Position', [0 0 1119 606]);

% --- Outputs from this function are returned to the command line.
function varargout = fig_main_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅ checkbox пїЅпїЅпїЅ/пїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅ
function cb_Signal_Callback(hObject, eventdata, handles)
% hObject    handle to cb_Signal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of cb_Signal

globals;
signal_onoff =  get(hObject,'Value');
if signal_onoff
    set(handles.st1, 'Visible', 'off');
    set(handles.st2, 'Visible', 'off');
else
    set(handles.st1, 'Visible', 'on');
    set(handles.st2, 'Visible', 'on');
end
create_y(handles);



% --- пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅ checkbox пїЅпїЅпїЅ/пїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅ
function cb_Noise_Callback(hObject, eventdata, handles)
% hObject    handle to cb_Noise (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of cb_Noise

globals;
noise_onoff =  get(hObject,'Value');
%Noise = STD_Noise*randn(1,L);
create_y(handles);


% --- Executes on button press in rb_ADC_inf.
function rb_ADC_inf_Callback(hObject, eventdata, handles)
% hObject    handle to rb_ADC_inf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of rb_ADC_inf
global AD_MODE
AD_MODE = 1;
create_y(handles);


% --- Executes on button press in rb_ADC_1bit.
function rb_ADC_1bit_Callback(hObject, eventdata, handles)
% hObject    handle to rb_ADC_1bit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of rb_ADC_1bit
global AD_MODE
AD_MODE = 2;
create_y(handles);



% --- Executes on button press in rb_YP4_Inf.
function rb_YP4_Inf_Callback(hObject, eventdata, handles)
% hObject    handle to rb_YP4_Inf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of rb_YP4_Inf

globals;
YP4_BAND = 1;
create_y(handles);


% --- Executes on button press in rb_YP4_2df.
function rb_YP4_2df_Callback(hObject, eventdata, handles)
% hObject    handle to rb_YP4_2df (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of rb_YP4_2df
globals;
YP4_BAND = 2;
create_y(handles);


% --- Executes on button press in rb_YP4_3.
function rb_YP4_3_Callback(hObject, eventdata, handles)
% hObject    handle to rb_YP4_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of rb_YP4_3
globals;
YP4_BAND = 3;
create_y(handles);



function reg1_Callback(hObject, eventdata, handles)
% hObject    handle to reg1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of reg1 as text
%        str2double(get(hObject,'String')) returns contents of reg1 as a double
globals;
EnableMode(handles, 1);
StepReset(handles);
tmp = str2num(get(hObject, 'String'));
if abs(tmp) > 0
    set(hObject, 'String', '1');
    RG(1) = 1;
else
    RG(1) = 0;
end
set(handles.ed_RG1, 'String', num2str(RG(1)));


% --- Executes during object creation, after setting all properties.
function reg1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to reg1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function reg4_Callback(hObject, eventdata, handles)
% hObject    handle to reg4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of reg4 as text
%        str2double(get(hObject,'String')) returns contents of reg4 as a double
globals;
EnableMode(handles, 1);
StepReset(handles);
tmp = str2num(get(hObject, 'String'));
if abs(tmp) > 0
    set(hObject, 'String', '1');
    RG(4) = 1;
else
    RG(4) = 0;
end
set(handles.ed_RG4, 'String', num2str(RG(4)));

% --- Executes during object creation, after setting all properties.
function reg4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to reg4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function reg5_Callback(hObject, eventdata, handles)
% hObject    handle to reg5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of reg5 as text
%        str2double(get(hObject,'String')) returns contents of reg5 as a double
globals;
EnableMode(handles, 1);
StepReset(handles);
tmp = str2num(get(hObject, 'String'));
if abs(tmp) > 0
    set(hObject, 'String', '1');
    RG(5) = 1;
else
    RG(5) = 0;
end
set(handles.ed_RG5, 'String', num2str(RG(5)));

% --- Executes during object creation, after setting all properties.
function reg5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to reg5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function reg6_Callback(hObject, eventdata, handles)
% hObject    handle to reg6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of reg6 as text
%        str2double(get(hObject,'String')) returns contents of reg6 as a double
globals;
EnableMode(handles, 1);
StepReset(handles);
tmp = str2num(get(hObject, 'String'));
if abs(tmp) > 0
    set(hObject, 'String', '1');
    RG(6) = 1;
else
    RG(6) = 0;
end
set(handles.ed_RG6, 'String', num2str(RG(6)));

% --- Executes during object creation, after setting all properties.
function reg6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to reg6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function reg7_Callback(hObject, eventdata, handles)
% hObject    handle to reg7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of reg7 as text
%        str2double(get(hObject,'String')) returns contents of reg7 as a double
globals;
EnableMode(handles, 1);
StepReset(handles);
tmp = str2num(get(hObject, 'String'));
if abs(tmp) > 0
    set(hObject, 'String', '1');
    RG(7) = 1;
else
    RG(7) = 0;
end
set(handles.ed_RG7, 'String', num2str(RG(7)));

% --- Executes during object creation, after setting all properties.
function reg7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to reg7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function reg8_Callback(hObject, eventdata, handles)
% hObject    handle to reg8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of reg8 as text
%        str2double(get(hObject,'String')) returns contents of reg8 as a double
globals;
EnableMode(handles, 1);
StepReset(handles);
tmp = str2num(get(hObject, 'String'));
if abs(tmp) > 0
    set(hObject, 'String', '1');
    RG(8) = 1;
else
    RG(8) = 0;
end
set(handles.ed_RG8, 'String', num2str(RG(8)));

% --- Executes during object creation, after setting all properties.
function reg8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to reg8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function reg9_Callback(hObject, eventdata, handles)
% hObject    handle to reg9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of reg9 as text
%        str2double(get(hObject,'String')) returns contents of reg9 as a double
globals;
EnableMode(handles, 1);
StepReset(handles);
tmp = str2num(get(hObject, 'String'));
if abs(tmp) > 0
    set(hObject, 'String', '1');
    RG(9) = 1;
else
    RG(9) = 0;
end
set(handles.ed_RG9, 'String', num2str(RG(9)));

% --- Executes during object creation, after setting all properties.
function reg9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to reg9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end





% --- Executes on button press in cb_RG1.
function cb_RG1_Callback(hObject, eventdata, handles)
% hObject    handle to cb_RG1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of cb_RG1
globals;
EnableMode(handles, 1);
StepReset(handles);
RG_xor(1) = get(hObject, 'Value');
if RG_xor(1)
    set(handles.txt_arr_RG1, 'Visible', 'off');
else
    set(handles.txt_arr_RG1, 'Visible', 'on');
end

% --- Executes on button press in cb_RG2.
function cb_RG2_Callback(hObject, eventdata, handles)
% hObject    handle to cb_RG2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of cb_RG2
globals;
EnableMode(handles, 1);
StepReset(handles);
RG_xor(2) = get(hObject, 'Value');
if RG_xor(2)
    set(handles.txt_arr_RG2, 'Visible', 'off');
else
    set(handles.txt_arr_RG2, 'Visible', 'on');
end


% --- Executes on button press in cb_RG3.
function cb_RG3_Callback(hObject, eventdata, handles)
% hObject    handle to cb_RG3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of cb_RG3
globals;
EnableMode(handles, 1);
StepReset(handles);
RG_xor(3) = get(hObject, 'Value');
if RG_xor(3)
    set(handles.txt_arr_RG3, 'Visible', 'off');
else
    set(handles.txt_arr_RG3, 'Visible', 'on');
end


% --- Executes on button press in cb_RG4.
function cb_RG4_Callback(hObject, eventdata, handles)
% hObject    handle to cb_RG4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of cb_RG4
globals;
EnableMode(handles, 1);
StepReset(handles);
RG_xor(4) = get(hObject, 'Value');
if RG_xor(4)
    set(handles.txt_arr_RG4, 'Visible', 'off');
else
    set(handles.txt_arr_RG4, 'Visible', 'on');
end


% --- Executes on button press in cb_RG5.
function cb_RG5_Callback(hObject, eventdata, handles)
% hObject    handle to cb_RG5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of cb_RG5
globals;
EnableMode(handles, 1);
StepReset(handles);
RG_xor(5) = get(hObject, 'Value');
if RG_xor(5)
    set(handles.txt_arr_RG5, 'Visible', 'off');
else
    set(handles.txt_arr_RG5, 'Visible', 'on');
end


% --- Executes on button press in cb_RG6.
function cb_RG6_Callback(hObject, eventdata, handles)
% hObject    handle to cb_RG6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of cb_RG6
globals;
EnableMode(handles, 1);
StepReset(handles);
RG_xor(6) = get(hObject, 'Value');
if RG_xor(6)
    set(handles.txt_arr_RG6, 'Visible', 'off');
else
    set(handles.txt_arr_RG6, 'Visible', 'on');
end


% --- Executes on button press in cb_RG7.
function cb_RG7_Callback(hObject, eventdata, handles)
% hObject    handle to cb_RG7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of cb_RG7
globals;
EnableMode(handles, 1);
StepReset(handles);
RG_xor(7) = get(hObject, 'Value');
if RG_xor(7)
    set(handles.txt_arr_RG7, 'Visible', 'off');
else
    set(handles.txt_arr_RG7, 'Visible', 'on');
end


% --- Executes on button press in cb_RG8.
function cb_RG8_Callback(hObject, eventdata, handles)
% hObject    handle to cb_RG8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of cb_RG8
globals;
EnableMode(handles, 1);
StepReset(handles);
RG_xor(8) = get(hObject, 'Value');
if RG_xor(8)
    set(handles.txt_arr_RG8, 'Visible', 'off');
else
    set(handles.txt_arr_RG8, 'Visible', 'on');
end


% --- Executes on button press in cb_RG9.
function cb_RG9_Callback(hObject, eventdata, handles)
% hObject    handle to cb_RG9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of cb_RG9
globals;
EnableMode(handles, 1);
StepReset(handles);
RG_xor(9) = get(hObject, 'Value');
if RG_xor(9)
    set(handles.txt_arr_RG9, 'Visible', 'off');
else
    set(handles.txt_arr_RG9, 'Visible', 'on');
end


% --- Executes on button press in but_RG_Step.
function but_RG_Step_Callback(hObject, eventdata, handles)
% hObject    handle to but_RG_Step (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
globals;
if Step_Count < 511
    RG_Step(handles);
else
    DoIt();
end



% --- Executes on button press in but_CalcAll.
function but_CalcAll_Callback(hObject, eventdata, handles)
% hObject    handle to but_CalcAll (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
globals;
EnableMode(handles, 2);
set_CalcStatus(handles, 'Идёт расчёт ПСП дальномерного кода...');
while Step_Count < 512
    RG_Step(handles);
    drawnow;
end
set_CalcStatus(handles, 'Расчёт ПСП дальномерного кода успешно завершен');
ed_RG = RG;
CorrReset(handles);
EnableMode(handles, 3);
DoIt(handles);




function reg2_Callback(hObject, eventdata, handles)
% hObject    handle to reg2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of reg2 as text
%        str2double(get(hObject,'String')) returns contents of reg2 as a double
globals;
EnableMode(handles, 1);
StepReset(handles);
tmp = str2num(get(hObject, 'String'));
if abs(tmp) > 0
    set(hObject, 'String', '1');
    RG(2) = 1;
else
    RG(2) = 0;
end
set(handles.ed_RG2, 'String', num2str(RG(2)));

% --- Executes during object creation, after setting all properties.
function reg2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to reg2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function reg3_Callback(hObject, eventdata, handles)
% hObject    handle to reg3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of reg3 as text
%        str2double(get(hObject,'String')) returns contents of reg3 as a double
globals;
EnableMode(handles, 1);
StepReset(handles);
tmp = str2num(get(hObject, 'String'));
if abs(tmp) > 0
    set(hObject, 'String', '1');
    RG(3) = 1;
else
    RG(3) = 0;
end
set(handles.ed_RG3, 'String', num2str(RG(3)));

% --- Executes during object creation, after setting all properties.
function reg3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to reg3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function StepReset(handles)
    globals;
    Step_Count = 1; % Step Reset
    Code_Sig_Count = 0;
    set(handles.st_StepCounter, 'String', '1');
    MCode_gen = nan(1, 511);
    MCode_gen_sig = nan(1, 51100);
    MCode_gen(1) = RG(7);
    Code_Sig_Step(handles);



% --- Executes on selection change in pop_IQ.
function pop_IQ_Callback(hObject, eventdata, handles)
% hObject    handle to pop_IQ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns pop_IQ contents as cell array
%        contents{get(hObject,'Value')} returns selected item from pop_IQ
globals;
IQplot = get(hObject, 'Value');
plot_IQ(handles);

% --- Executes during object creation, after setting all properties.
function pop_IQ_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pop_IQ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on mouse press over axes background.
function axes_YP4_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to axes_YP4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over rb_ADC_inf.
function rb_ADC_inf_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to rb_ADC_inf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global l
l = l + 1;
StepAcum1(handles);
StepAcum2(handles);
StepAcum3(handles);


% --- Executes on slider movement.
function sl_FR_CODE_Callback(hObject, eventdata, handles)
% hObject    handle to sl_FR_CODE (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
global FR_CODE Fd f0
Fdop = get(hObject,'Value');
set(handles.txt_Fdop, 'String', ['dF = ' num2str(round(Fdop)) ' Гц']);
FR_CODE = f0 + Fdop;
    tmp = get(handles.txt_Acum2_Bracket_FR_CODE, 'Position');
    tmp(4) = (120 / (Fd / FR_CODE));
    set(handles.txt_Acum2_Bracket_FR_CODE, 'Position', tmp);
Gen_opor();
DoIt(handles);

% --- Executes during object creation, after setting all properties.
function sl_FR_CODE_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sl_FR_CODE (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in rb_SinCos_Inf.
function rb_SinCos_Inf_Callback(hObject, eventdata, handles)
% hObject    handle to rb_SinCos_Inf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of rb_SinCos_Inf
global SinCos_MODE
SinCos_MODE = 1;
Gen_opor();
DoIt(handles);

% --- Executes on button press in rb_SinCos_4bita.
function rb_SinCos_4bita_Callback(hObject, eventdata, handles)
% hObject    handle to rb_SinCos_4bita (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of rb_SinCos_4bita
global SinCos_MODE
SinCos_MODE = 2;
Gen_opor();
DoIt(handles);


% --- Executes when user attempts to close fig_main.
function fig_main_CloseRequestFcn(hObject, eventdata, handles)
% hObject    handle to fig_main (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: delete(hObject) closes the figure
delete(hObject);


% --- Executes during object deletion, before destroying properties.
function fig_main_DeleteFcn(hObject, eventdata, handles)
% hObject    handle to fig_main (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in but_CorrReset.
function but_CorrReset_Callback(hObject, eventdata, handles)
% hObject    handle to but_CorrReset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
CorrReset(handles);

% --- Executes on button press in but_OnOffClock.
function but_OnOffClock_Callback(hObject, eventdata, handles)
% hObject    handle to but_OnOffClock (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
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

% --- Executes on button press in but_OneClock.
function but_OneClock_Callback(hObject, eventdata, handles)
% hObject    handle to but_OneClock (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
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



function ed_RG1_Callback(hObject, eventdata, handles)
% hObject    handle to ed_RG1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed_RG1 as text
%        str2double(get(hObject,'String')) returns contents of ed_RG1 as a double


% --- Executes during object creation, after setting all properties.
function ed_RG1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed_RG1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed_RG2_Callback(hObject, eventdata, handles)
% hObject    handle to ed_RG2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed_RG2 as text
%        str2double(get(hObject,'String')) returns contents of ed_RG2 as a double


% --- Executes during object creation, after setting all properties.
function ed_RG2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed_RG2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed_RG3_Callback(hObject, eventdata, handles)
% hObject    handle to ed_RG3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed_RG3 as text
%        str2double(get(hObject,'String')) returns contents of ed_RG3 as a double


% --- Executes during object creation, after setting all properties.
function ed_RG3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed_RG3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed_RG4_Callback(hObject, eventdata, handles)
% hObject    handle to ed_RG4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed_RG4 as text
%        str2double(get(hObject,'String')) returns contents of ed_RG4 as a double


% --- Executes during object creation, after setting all properties.
function ed_RG4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed_RG4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed_RG5_Callback(hObject, eventdata, handles)
% hObject    handle to ed_RG5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed_RG5 as text
%        str2double(get(hObject,'String')) returns contents of ed_RG5 as a double


% --- Executes during object creation, after setting all properties.
function ed_RG5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed_RG5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed_RG6_Callback(hObject, eventdata, handles)
% hObject    handle to ed_RG6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed_RG6 as text
%        str2double(get(hObject,'String')) returns contents of ed_RG6 as a double


% --- Executes during object creation, after setting all properties.
function ed_RG6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed_RG6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed_RG7_Callback(hObject, eventdata, handles)
% hObject    handle to ed_RG7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed_RG7 as text
%        str2double(get(hObject,'String')) returns contents of ed_RG7 as a double


% --- Executes during object creation, after setting all properties.
function ed_RG7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed_RG7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed_RG8_Callback(hObject, eventdata, handles)
% hObject    handle to ed_RG8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed_RG8 as text
%        str2double(get(hObject,'String')) returns contents of ed_RG8 as a double


% --- Executes during object creation, after setting all properties.
function ed_RG8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed_RG8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed_RG9_Callback(hObject, eventdata, handles)
% hObject    handle to ed_RG9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed_RG9 as text
%        str2double(get(hObject,'String')) returns contents of ed_RG9 as a double


% --- Executes during object creation, after setting all properties.
function ed_RG9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed_RG9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function fig_main_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fig_main (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on mouse press over figure background.
function fig_main_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to fig_main (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function edit20_Callback(hObject, eventdata, handles)
% hObject    handle to reg1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of reg1 as text
%        str2double(get(hObject,'String')) returns contents of reg1 as a double


% --- Executes during object creation, after setting all properties.
function edit20_CreateFcn(hObject, eventdata, handles)
% hObject    handle to reg1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit21_Callback(hObject, eventdata, handles)
% hObject    handle to reg2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of reg2 as text
%        str2double(get(hObject,'String')) returns contents of reg2 as a double


% --- Executes during object creation, after setting all properties.
function edit21_CreateFcn(hObject, eventdata, handles)
% hObject    handle to reg2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit22_Callback(hObject, eventdata, handles)
% hObject    handle to reg3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of reg3 as text
%        str2double(get(hObject,'String')) returns contents of reg3 as a double


% --- Executes during object creation, after setting all properties.
function edit22_CreateFcn(hObject, eventdata, handles)
% hObject    handle to reg3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit23_Callback(hObject, eventdata, handles)
% hObject    handle to reg4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of reg4 as text
%        str2double(get(hObject,'String')) returns contents of reg4 as a double


% --- Executes during object creation, after setting all properties.
function edit23_CreateFcn(hObject, eventdata, handles)
% hObject    handle to reg4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit24_Callback(hObject, eventdata, handles)
% hObject    handle to reg5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of reg5 as text
%        str2double(get(hObject,'String')) returns contents of reg5 as a double


% --- Executes during object creation, after setting all properties.
function edit24_CreateFcn(hObject, eventdata, handles)
% hObject    handle to reg5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit25_Callback(hObject, eventdata, handles)
% hObject    handle to reg6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of reg6 as text
%        str2double(get(hObject,'String')) returns contents of reg6 as a double


% --- Executes during object creation, after setting all properties.
function edit25_CreateFcn(hObject, eventdata, handles)
% hObject    handle to reg6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit26_Callback(hObject, eventdata, handles)
% hObject    handle to reg7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of reg7 as text
%        str2double(get(hObject,'String')) returns contents of reg7 as a double


% --- Executes during object creation, after setting all properties.
function edit26_CreateFcn(hObject, eventdata, handles)
% hObject    handle to reg7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit27_Callback(hObject, eventdata, handles)
% hObject    handle to reg8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of reg8 as text
%        str2double(get(hObject,'String')) returns contents of reg8 as a double


% --- Executes during object creation, after setting all properties.
function edit27_CreateFcn(hObject, eventdata, handles)
% hObject    handle to reg8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit28_Callback(hObject, eventdata, handles)
% hObject    handle to reg9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of reg9 as text
%        str2double(get(hObject,'String')) returns contents of reg9 as a double


% --- Executes during object creation, after setting all properties.
function edit28_CreateFcn(hObject, eventdata, handles)
% hObject    handle to reg9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in cb_RG1.
function checkbox12_Callback(hObject, eventdata, handles)
% hObject    handle to cb_RG1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of cb_RG1


% --- Executes on button press in cb_RG2.
function checkbox13_Callback(hObject, eventdata, handles)
% hObject    handle to cb_RG2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of cb_RG2


% --- Executes on button press in cb_RG3.
function checkbox14_Callback(hObject, eventdata, handles)
% hObject    handle to cb_RG3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of cb_RG3


% --- Executes on button press in cb_RG4.
function checkbox15_Callback(hObject, eventdata, handles)
% hObject    handle to cb_RG4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of cb_RG4


% --- Executes on button press in cb_RG5.
function checkbox16_Callback(hObject, eventdata, handles)
% hObject    handle to cb_RG5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of cb_RG5


% --- Executes on button press in cb_RG6.
function checkbox17_Callback(hObject, eventdata, handles)
% hObject    handle to cb_RG6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of cb_RG6


% --- Executes on button press in cb_RG7.
function checkbox18_Callback(hObject, eventdata, handles)
% hObject    handle to cb_RG7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of cb_RG7


% --- Executes on button press in cb_RG8.
function checkbox19_Callback(hObject, eventdata, handles)
% hObject    handle to cb_RG8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of cb_RG8


% --- Executes on button press in cb_RG9.
function checkbox20_Callback(hObject, eventdata, handles)
% hObject    handle to cb_RG9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of cb_RG9


% --- Executes on button press in but_CalcAll.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to but_CalcAll (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in cb_jitter.
function cb_jitter_Callback(hObject, eventdata, handles)
% hObject    handle to cb_jitter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of cb_jitter
global jitter_onoff
jitter_onoff =  get(hObject,'Value');
if jitter_onoff
   set(handles.txt_Jitter, 'Visible', 'off');
else
   set(handles.txt_Jitter, 'Visible', 'on');
end
%Noise = STD_Noise*randn(1,L);
create_y(handles);


% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global f0
hF = figure;
axesbig = copyobj(handles.axes_YP4, hF);
set(hF, 'Position', [403   246   560   420]);
set(axesbig, 'Units', 'Normalized', ...
                   'Position',[0.1300    0.1100    0.7750    0.8150], ...
                       'YTickLabelMode', 'auto');
reset(axesbig);
reset(hF);
xlim(axesbig, [0 2*f0]);
grid on
xlabel('f, Гц')
ylabel('|fft(y)|, В/Гц')


% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
hF = figure;
axesbig = copyobj(handles.axes_ADC, hF);
set(hF, 'Position', [403   246   560   420]);
set(axesbig, 'Units', 'Normalized', ...
                   'Position',[0.1300    0.1100    0.7750    0.8150], ...
                       'YTickLabelMode', 'auto');
reset(axesbig);
reset(hF);
grid on
xlabel('t, с')
ylabel('y')


% --- Executes on button press in pushbutton11.
function pushbutton11_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global IQplot
hF = figure;
axesbig = copyobj(handles.axes_I, hF);
set(hF, 'Position', [403   246   560   420]);
set(axesbig, 'Units', 'Normalized', ...
                   'Position',[0.1300    0.1100    0.7750    0.8150], ...
                       'YTickLabelMode', 'auto');
reset(axesbig);
reset(hF);
grid on
xlabel('t, \tau_{chip}')
switch IQplot
    case 1
        ylabel('I_p')
    case 2
        ylabel('I_e')
    case 3
        ylabel('I_l')
end


% --- Executes on button press in pushbutton12.
function pushbutton12_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global IQplot
hF = figure;
axesbig = copyobj(handles.axes_Q, hF);
set(hF, 'Position', [403   246   560   420]);
set(axesbig, 'Units', 'Normalized', ...
                   'Position',[0.1300    0.1100    0.7750    0.8150], ...
                       'YTickLabelMode', 'auto');
reset(axesbig);
reset(hF);
grid on
xlabel('t, \tau_{chip}')
switch IQplot
    case 1
        ylabel('Q_p')
    case 2
        ylabel('Q_e')
    case 3
        ylabel('Q_l')
end
