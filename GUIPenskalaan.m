function varargout = GUIPenskalaan(varargin)
% GUIPENSKALAAN MATLAB code for GUIPenskalaan.fig
%      GUIPENSKALAAN, by itself, creates a new GUIPENSKALAAN or raises the existing
%      singleton*.
%
%      H = GUIPENSKALAAN returns the handle to a new GUIPENSKALAAN or the handle to
%      the existing singleton*.
%
%      GUIPENSKALAAN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUIPENSKALAAN.M with the given input arguments.
%
%      GUIPENSKALAAN('Property','Value',...) creates a new GUIPENSKALAAN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GUIPenskalaan_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GUIPenskalaan_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GUIPenskalaan

% Last Modified by GUIDE v2.5 27-Sep-2021 17:54:28

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GUIPenskalaan_OpeningFcn, ...
                   'gui_OutputFcn',  @GUIPenskalaan_OutputFcn, ...
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


% --- Executes just before GUIPenskalaan is made visible.
function GUIPenskalaan_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GUIPenskalaan (see VARARGIN)

% Choose default command line output for GUIPenskalaan
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GUIPenskalaan wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GUIPenskalaan_OutputFcn(hObject, eventdata, handles) 
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
axes(handles.axes1)
a = imread('ifaaaa.jpg');
[m,n] = size(a);
skala = 1.5;
for m = 2:m
    for n = 2:n
        hasil1(round(skala*(m-1)-1),round(skala*(n-1))) = a(m-1,n-1);
    end
end
subplot(1,2,1);imshow(a);title('Citra Asli');
subplot(2,2,2);imshow(a);title('Hasil Pengskalaan');
