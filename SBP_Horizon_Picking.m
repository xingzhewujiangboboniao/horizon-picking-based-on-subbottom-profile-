function varargout = SBP_Horizon_Picking(varargin)
% SBP_HORIZON_PICKING MATLAB code for SBP_Horizon_Picking.fig
%      SBP_HORIZON_PICKING, by itself, creates a new SBP_HORIZON_PICKING or raises the existing
%      singleton*.
%
%      H = SBP_HORIZON_PICKING returns the handle to a new SBP_HORIZON_PICKING or the handle to
%      the existing singleton*.
%
%      SBP_HORIZON_PICKING('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SBP_HORIZON_PICKING.M with the given input arguments.
%
%      SBP_HORIZON_PICKING('Property','Value',...) creates a new SBP_HORIZON_PICKING or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before SBP_Horizon_Picking_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to SBP_Horizon_Picking_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help SBP_Horizon_Picking

% Last Modified by GUIDE v2.5 20-Oct-2019 19:01:07

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @SBP_Horizon_Picking_OpeningFcn, ...
                   'gui_OutputFcn',  @SBP_Horizon_Picking_OutputFcn, ...
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


% --- Executes just before SBP_Horizon_Picking is made visible.
function SBP_Horizon_Picking_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to SBP_Horizon_Picking (see VARARGIN)

% Choose default command line output for SBP_Horizon_Picking
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes SBP_Horizon_Picking wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = SBP_Horizon_Picking_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Read1;


function Enve_Th_Edit_Callback(hObject, eventdata, handles)
% hObject    handle to Enve_Th_Edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
EnvTh=get(handles.Enve_Th_Edit,'String');
fid=fopen(['EnvTh.txt'],'w');
fprintf(fid, EnvTh);
fclose(fid);
% Hints: get(hObject,'String') returns contents of Enve_Th_Edit as text
%        str2double(get(hObject,'String')) returns contents of Enve_Th_Edit as a double


% --- Executes during object creation, after setting all properties.
function Enve_Th_Edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Enve_Th_Edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Seg_Edit_Callback(hObject, eventdata, handles)
% hObject    handle to Seg_Edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Seg=get(handles.Seg_Edit,'String');
fid=fopen(['Seg.txt'],'w');
fprintf(fid,Seg);
fclose(fid);
% Hints: get(hObject,'String') returns contents of Seg_Edit as text
%        str2double(get(hObject,'String')) returns contents of Seg_Edit as a double


% --- Executes during object creation, after setting all properties.
function Seg_Edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Seg_Edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Picking.
function Picking_Callback(hObject, eventdata, handles)
% hObject    handle to Picking (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Picking1;
    

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Read2;


function Enve_Th2_Callback(hObject, eventdata, handles)
% hObject    handle to Enve_Th2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Enve_Th2 as text
%        str2double(get(hObject,'String')) returns contents of Enve_Th2 as a double


% --- Executes during object creation, after setting all properties.
function Enve_Th2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Enve_Th2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Picking2.
function Picking2_Callback(hObject, eventdata, handles)
% hObject    handle to Picking2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Picking2;


function Remove_Edit_Callback(hObject, eventdata, handles)
% hObject    handle to Remove_Edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Remov=get(handles.Remove_Edit,'String');
fid=fopen(['Remov.txt'],'w');
fprintf(fid,Remov);
fclose(fid);
% Hints: get(hObject,'String') returns contents of Remove_Edit as text
%        str2double(get(hObject,'String')) returns contents of Remove_Edit as a double


% --- Executes during object creation, after setting all properties.
function Remove_Edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Remove_Edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Effect_range_Edit_Callback(hObject, eventdata, handles)
% hObject    handle to Effect_range_Edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Effect_range=get(handles.Effect_range_Edit,'String');
fid=fopen(['Effect_range.txt'],'w');
fprintf(fid,Effect_range);
fclose(fid);
% Hints: get(hObject,'String') returns contents of Effect_range_Edit as text
%        str2double(get(hObject,'String')) returns contents of Effect_range_Edit as a double


% --- Executes during object creation, after setting all properties.
function Effect_range_Edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Effect_range_Edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Thickness=get(handles.edit6,'String');
fid=fopen(['Thickness.txt'],'w');
fprintf(fid,Thickness);
fclose(fid);
% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
