function varargout = fig_main_L(varargin)
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


function cb_Signal_Callback(hObject, eventdata, handles)
out_cb_Signal_Callback(hObject, eventdata, handles)


function cb_Noise_Callback(hObject, eventdata, handles)
out_cb_Noise_Callback(hObject, eventdata, handles)


% --- Executes on button press in rb_ADC_inf.
function rb_ADC_inf_Callback(hObject, eventdata, handles)
out_ADC_inf_Callback(hObject, eventdata, handles)


% --- Executes on button press in rb_ADC_1bit.
function rb_ADC_1bit_Callback(hObject, eventdata, handles)
out_rb_ADC_1bit_Callback(hObject, eventdata, handles)


% --- Executes on button press in rb_YP4_Inf.
function rb_YP4_Inf_Callback(hObject, eventdata, handles)
out_rb_YP4_Inf_Callback(hObject, eventdata, handles);


% --- Executes on button press in rb_YP4_2df.
function rb_YP4_2df_Callback(hObject, eventdata, handles)
out_rb_YP4_2df_Callback(hObject, eventdata, handles);


% --- Executes on button press in rb_YP4_3.
function rb_YP4_3_Callback(hObject, eventdata, handles)
out_rb_YP4_3_Callback(hObject, eventdata, handles);


function reg1_Callback(hObject, eventdata, handles)
out_reg1_Callback(hObject, eventdata, handles);


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
out_reg4_Callback(hObject, eventdata, handles);


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
out_reg5_Callback(hObject, eventdata, handles);

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
out_reg6_Callback(hObject, eventdata, handles);


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
out_reg7_Callback(hObject, eventdata, handles);

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
out_reg8_Callback(hObject, eventdata, handles);

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
out_reg9_Callback(hObject, eventdata, handles);

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
out_cb_RG1_Callback(hObject, eventdata, handles);

% --- Executes on button press in cb_RG2.
function cb_RG2_Callback(hObject, eventdata, handles)
out_cb_RG2_Callback(hObject, eventdata, handles);


% --- Executes on button press in cb_RG3.
function cb_RG3_Callback(hObject, eventdata, handles)
out_cb_RG3_Callback(hObject, eventdata, handles);


% --- Executes on button press in cb_RG4.
function cb_RG4_Callback(hObject, eventdata, handles)
out_cb_RG4_Callback(hObject, eventdata, handles);


% --- Executes on button press in cb_RG5.
function cb_RG5_Callback(hObject, eventdata, handles)
out_cb_RG5_Callback(hObject, eventdata, handles);


% --- Executes on button press in cb_RG6.
function cb_RG6_Callback(hObject, eventdata, handles)
out_cb_RG6_Callback(hObject, eventdata, handles);


% --- Executes on button press in cb_RG7.
function cb_RG7_Callback(hObject, eventdata, handles)
out_cb_RG7_Callback(hObject, eventdata, handles);


% --- Executes on button press in cb_RG8.
function cb_RG8_Callback(hObject, eventdata, handles)
out_cb_RG8_Callback(hObject, eventdata, handles);


% --- Executes on button press in cb_RG9.
function cb_RG9_Callback(hObject, eventdata, handles)
out_cb_RG9_Callback(hObject, eventdata, handles);


% --- Executes on button press in but_RG_Step.
function but_RG_Step_Callback(hObject, eventdata, handles)
out_but_RG_Step_Callback(hObject, eventdata, handles);


% --- Executes on button press in but_CalcAll.
function but_CalcAll_Callback(hObject, eventdata, handles)
out_but_CalcAll_Callback(hObject, eventdata, handles);


function reg2_Callback(hObject, eventdata, handles)
out_reg2_Callback(hObject, eventdata, handles);

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
out_reg3_Callback(hObject, eventdata, handles);

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


% --- Executes on selection change in pop_IQ.
function pop_IQ_Callback(hObject, eventdata, handles)
out_pop_IQ_Callback(hObject, eventdata, handles);

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
% Атавизм? Atavism?
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
out_sl_FR_CODE_Callback(hObject, eventdata, handles);


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
out_rb_SinCos_Inf_Callback(hObject, eventdata, handles);


% --- Executes on button press in rb_SinCos_4bita.
function rb_SinCos_4bita_Callback(hObject, eventdata, handles)
out_rb_SinCos_4bita_Callback(hObject, eventdata, handles)


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
out_but_OnOffClock_Callback(hObject, eventdata, handles);


% --- Executes on button press in but_OneClock.
function but_OneClock_Callback(hObject, eventdata, handles)
out_but_OneClock_Callback(hObject, eventdata, handles);



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
out_cb_jitter_Callback(hObject, eventdata, handles);


% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
out_open_axes_YP4(handles);


% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
out_open_axes_ADC(handles);


% --- Executes on button press in pushbutton11.
function pushbutton11_Callback(hObject, eventdata, handles)
out_open_axes_I(handles);


% --- Executes on button press in pushbutton12.
function pushbutton12_Callback(hObject, eventdata, handles)
out_open_axes_Q(handles);
