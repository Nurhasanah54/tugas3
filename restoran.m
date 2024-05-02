function varargout = restoran(varargin)
% RESTORAN MATLAB code for restoran.fig
%      RESTORAN, by itself, creates a new RESTORAN or raises the existing
%      singleton*.
%
%      H = RESTORAN returns the handle to a new RESTORAN or the handle to
%      the existing singleton*.
%
%      RESTORAN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in RESTORAN.M with the given input arguments.
%
%      RESTORAN('Property','Value',...) creates a new RESTORAN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before restoran_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to restoran_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help restoran

% Last Modified by GUIDE v2.5 02-May-2024 11:25:27

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @restoran_OpeningFcn, ...
                   'gui_OutputFcn',  @restoran_OutputFcn, ...
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


% --- Executes just before restoran is made visible.
function restoran_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to restoran (see VARARGIN)

% Choose default command line output for restoran
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes restoran wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = restoran_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Memilih menu dan menetapkan harga sesuai pilihan
% Memilih menu dan menetapkan harga sesuai pilihan
if get(handles.radiobutton1,'Value')
    menu = 'Bakso';
    harga = 15000;
    
elseif get(handles.radiobutton2,'Value')
    menu = 'Mie Goreng';
    harga = 7000;
    
elseif get(handles.radiobutton3, 'Value')
    menu = 'Gado-gado';
    harga = 12000;
        
elseif get(handles.radiobutton4, 'Value')
    menu = 'Lalapan';
    harga = 15000;
        
else
    menu = 'Tidak ada pilihan';
    harga = 0;
end

% Mengambil jumlah pesanan yang dimasukkan oleh pengguna
jumlahPesanan = str2double(get(handles.edit1, 'String'));

% Menghitung total pembayaran berdasarkan harga per menu dan jumlah pesanan yang dipilih
totalPembayaran = harga * jumlahPesanan;

% Meminta pengguna untuk memasukkan jumlah uang yang diberikan
jumlahUang = str2double(inputdlg('Masukkan jumlah uang yang diberikan oleh pelanggan:', 'Pembayaran', [1 50]));

% Menghitung jumlah kembalian yang harus diberikan kepada pelanggan
kembalian = jumlahUang - totalPembayaran;

% Menampilkan hasil transaksi, termasuk detail menu yang dipilih, jumlah pesanan, total pembayaran, dan kembalian
msgbox(['Anda memilih menu: ' menu ...
    '\nJumlah pesanan: ' num2str(jumlahPesanan) ...
    '\nTotal pembayaran: Rp ' num2str(totalPembayaran) ...
    '\nJumlah uang yang diberikan: Rp ' num2str(jumlahUang) ...
    '\nKembalian: Rp ' num2str(kembalian)], 'Hasil');


% --- Executes on button press in radiobutton1.
function radiobutton1_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton1


% --- Executes on button press in radiobutton2.
function radiobutton2_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton2


% --- Executes on button press in radiobutton3.
function radiobutton3_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton3


% --- Executes on button press in radiobutton4.
function radiobutton4_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton4
