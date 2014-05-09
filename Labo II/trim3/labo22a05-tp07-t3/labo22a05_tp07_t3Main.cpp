/***************************************************************
 * Name:      labo22a05_tp07_t3Main.cpp
 * Purpose:   Code for Application Frame
 * Author:    Silver (silverr.92@gmail.com)
 * Created:   2009-11-16
 * Copyright: Silver (facebook: Silver Vilerino)
 * License:
 **************************************************************/

#include "labo22a05_tp07_t3Main.h"
#include <wx/msgdlg.h>
#include <time.h>
#include <stdio.h>
#include <stdlib.h>

//(*InternalHeaders(labo22a05_tp07_t3Frame)
#include <wx/intl.h>
#include <wx/string.h>
//*)

//helper functions
enum wxbuildinfoformat {
    short_f, long_f };

wxString wxbuildinfo(wxbuildinfoformat format)
{
    wxString wxbuild(wxVERSION_STRING);

    if (format == long_f )
    {
#if defined(__WXMSW__)
        wxbuild << _T("-Windows");
#elif defined(__UNIX__)
        wxbuild << _T("-Linux");
#endif

#if wxUSE_UNICODE
        wxbuild << _T("-Unicode build");
#else
        wxbuild << _T("-ANSI build");
#endif // wxUSE_UNICODE
    }

    return wxbuild;
}

//(*IdInit(labo22a05_tp07_t3Frame)
const long labo22a05_tp07_t3Frame::ID_STATICTEXT1 = wxNewId();
const long labo22a05_tp07_t3Frame::ID_TEXTCTRL1 = wxNewId();
const long labo22a05_tp07_t3Frame::ID_PANEL2 = wxNewId();
const long labo22a05_tp07_t3Frame::ID_BUTTON1 = wxNewId();
const long labo22a05_tp07_t3Frame::ID_LISTBOX1 = wxNewId();
const long labo22a05_tp07_t3Frame::ID_STATICTEXT2 = wxNewId();
const long labo22a05_tp07_t3Frame::ID_TEXTCTRL2 = wxNewId();
const long labo22a05_tp07_t3Frame::ID_PANEL1 = wxNewId();
const long labo22a05_tp07_t3Frame::ID_NewGame = wxNewId();
const long labo22a05_tp07_t3Frame::idMenuQuit = wxNewId();
const long labo22a05_tp07_t3Frame::ID_GameHelp = wxNewId();
const long labo22a05_tp07_t3Frame::idMenuAbout = wxNewId();
const long labo22a05_tp07_t3Frame::ID_STATUSBAR1 = wxNewId();
//*)

BEGIN_EVENT_TABLE(labo22a05_tp07_t3Frame,wxFrame)
    //(*EventTable(labo22a05_tp07_t3Frame)
    //*)
END_EVENT_TABLE()

labo22a05_tp07_t3Frame::labo22a05_tp07_t3Frame(wxWindow* parent,wxWindowID id)
{
    //(*Initialize(labo22a05_tp07_t3Frame)
    wxMenuItem* MenuItem2;
    wxMenuItem* MenuItem1;
    wxMenu* Menu1;
    wxMenuBar* MenuBar1;
    wxMenu* Menu2;

    Create(parent, id, wxEmptyString, wxDefaultPosition, wxDefaultSize, wxDEFAULT_FRAME_STYLE, _T("id"));
    SetClientSize(wxSize(400,328));
    Panel1 = new wxPanel(this, ID_PANEL1, wxPoint(152,184), wxDefaultSize, wxTAB_TRAVERSAL, _T("ID_PANEL1"));
    Panel1->SetBackgroundColour(wxColour(29,105,222));
    Panel2 = new wxPanel(Panel1, ID_PANEL2, wxPoint(8,32), wxSize(176,80), wxTAB_TRAVERSAL, _T("ID_PANEL2"));
    Panel2->SetBackgroundColour(wxColour(29,105,227));
    lbl1 = new wxStaticText(Panel2, ID_STATICTEXT1, _("Ingrese Número"), wxPoint(32,0), wxDefaultSize, 0, _T("ID_STATICTEXT1"));
    txtNum = new wxTextCtrl(Panel2, ID_TEXTCTRL1, wxEmptyString, wxPoint(16,16), wxSize(144,24), 0, wxDefaultValidator, _T("ID_TEXTCTRL1"));
    txtNum->SetMaxLength(4);
    txtNum->SetBackgroundColour(wxColour(160,160,160));
    cmdGo = new wxButton(Panel1, ID_BUTTON1, _("Go!"), wxPoint(48,128), wxDefaultSize, 0, wxDefaultValidator, _T("ID_BUTTON1"));
    cmdGo->SetBackgroundColour(wxColour(160,160,160));
    lstResult = new wxListBox(Panel1, ID_LISTBOX1, wxPoint(192,32), wxSize(200,192), 0, 0, 0, wxDefaultValidator, _T("ID_LISTBOX1"));
    lstResult->SetBackgroundColour(wxColour(160,160,160));
    lbl2 = new wxStaticText(Panel1, ID_STATICTEXT2, _("Numero generado:"), wxPoint(8,232), wxDefaultSize, 0, _T("ID_STATICTEXT2"));
    txtNewNum = new wxTextCtrl(Panel1, ID_TEXTCTRL2, wxEmptyString, wxPoint(136,224), wxDefaultSize, 0, wxDefaultValidator, _T("ID_TEXTCTRL2"));
    txtNewNum->SetMaxLength(4);
    txtNewNum->Disable();
    MenuBar1 = new wxMenuBar();
    Menu1 = new wxMenu();
    MenuItem3 = new wxMenuItem(Menu1, ID_NewGame, _("&Nuevo"), _("Nueva Partida."), wxITEM_NORMAL);
    Menu1->Append(MenuItem3);
    MenuItem1 = new wxMenuItem(Menu1, idMenuQuit, _("&Salir\tAlt-F4"), _("Sale de la aplicacion."), wxITEM_NORMAL);
    Menu1->Append(MenuItem1);
    MenuBar1->Append(Menu1, _("&Juego"));
    Menu2 = new wxMenu();
    MenuItem4 = new wxMenuItem(Menu2, ID_GameHelp, _("&Juego"), _("Muestra las reglas del juego."), wxITEM_NORMAL);
    Menu2->Append(MenuItem4);
    MenuItem2 = new wxMenuItem(Menu2, idMenuAbout, _("&Acerca de...\tF1"), _("Informacion sobre la aplicacion."), wxITEM_NORMAL);
    Menu2->Append(MenuItem2);
    MenuBar1->Append(Menu2, _("Help"));
    SetMenuBar(MenuBar1);
    StatusBar1 = new wxStatusBar(this, ID_STATUSBAR1, 0, _T("ID_STATUSBAR1"));
    int __wxStatusBarWidths_1[1] = { -1 };
    int __wxStatusBarStyles_1[1] = { wxSB_NORMAL };
    StatusBar1->SetFieldsCount(1,__wxStatusBarWidths_1);
    StatusBar1->SetStatusStyles(1,__wxStatusBarStyles_1);
    SetStatusBar(StatusBar1);

    Connect(ID_BUTTON1,wxEVT_COMMAND_BUTTON_CLICKED,(wxObjectEventFunction)&labo22a05_tp07_t3Frame::OnButton1Click);
    Connect(idMenuQuit,wxEVT_COMMAND_MENU_SELECTED,(wxObjectEventFunction)&labo22a05_tp07_t3Frame::OnQuit);
    Connect(idMenuAbout,wxEVT_COMMAND_MENU_SELECTED,(wxObjectEventFunction)&labo22a05_tp07_t3Frame::OnAbout);
    //*)
    Connect(ID_GameHelp,wxEVT_COMMAND_MENU_SELECTED,(wxObjectEventFunction)&labo22a05_tp07_t3Frame::GameHelp);
    Connect(ID_NewGame,wxEVT_COMMAND_MENU_SELECTED,(wxObjectEventFunction)&labo22a05_tp07_t3Frame::NewGame);
}

labo22a05_tp07_t3Frame::~labo22a05_tp07_t3Frame()
{
    //(*Destroy(labo22a05_tp07_t3Frame)
    //*)
}

void labo22a05_tp07_t3Frame::OnQuit(wxCommandEvent& event)
{
    Close();
}

void labo22a05_tp07_t3Frame::NewGame(wxCommandEvent& event)
{
    srand(time(NULL));
    //txtnum,lstResult
    txtNewNum->Clear();
    txtNum->Clear();
    lstResult->Clear();
    wxString msg=_("");
    int a=0;
    int *numero=new int[4];
    for(a=0;a<4;a++){
        do{
        numero[a]=rand() % 5;
        }while(esRepetido(numero[a],a,numero));
        msg <<numero[a];
    }
    wxMessageBox(_("Nueva Partida."), _("Buenos, Malos y Regulares"));
    txtNewNum->SetValue(msg);
    delete numero;

}

void labo22a05_tp07_t3Frame::GameHelp(wxCommandEvent& event)
{
    wxMessageBox(_("El juego consiste en tratar\nde averiguar un numero\nen 10 intentos o menos\nAcierto en posicion y\nvalor : Bueno\nAcierto solo en valor : Regular\nSin Acierto: Malo\n\nDeveloped by Silver 2009.-"), _("Buenos, Malos y Regulares"));
}

void labo22a05_tp07_t3Frame::OnAbout(wxCommandEvent& event)
{
    wxString msg = wxbuildinfo(long_f);
    msg <<_("\nDeveloped by Silver 2009.-");
    wxMessageBox(msg, _("Buenos, Malos y Regulares"));
}

void labo22a05_tp07_t3Frame::OnButton1Click(wxCommandEvent& event)
{
    wxString ingresado=txtNum->GetValue();
    wxString generado=txtNewNum->GetValue();
    wxString aux=_("");
    int Buenos=0,Malos=0,Regulares=0,a=0,b=0;
    static int intentos;
    wxArrayString strings;
    for(a=0;a<4;a++){
        for(b=0;b<4;b++){
            if(ingresado.Mid(a,1).IsSameAs(generado.Mid(b,1),false)){
                if(a==b){
                    //bueno
                    Buenos++;
                }else{
                    //Regular
                    Regulares++;
                }
            }
        }
    }
    Malos=4-(Buenos+Regulares);

    aux=_("Numero: ");
    aux <<ingresado;
    strings.Add(aux);

    aux=_("\nBuenos: ");
    aux <<Buenos;
    strings.Add(aux);

    aux=_("\nMalos: ");
    aux <<Malos;
    strings.Add(aux);

    aux=_("\nRegulares: ");
    aux <<Regulares;
    strings.Add(aux);

    aux=_("\nIntentos: ");
    aux <<intentos;
    strings.Add(aux);


    lstResult->Set(strings);

    if(Buenos==4){
        intentos=10;
    }
    if(intentos<10){
        intentos++;
    }else{
        intentos=0;
        txtNewNum->Clear();
        txtNum->Clear();
        lstResult->Clear();
        if(Buenos==4){
            wxMessageBox(_("Ganaste."), _("Buenos, Malos y Regulares"));
        }else{
            wxMessageBox(_("Perdiste."), _("Buenos, Malos y Regulares"));
        }
    }

}

bool labo22a05_tp07_t3Frame::esRepetido(int num,int posi,int *vec){
    int a=0;
    bool flag=false;
    for(a=0;a<posi;a++){
        if (vec[a]==num)
            flag=true;
    }
    return(flag);
}

