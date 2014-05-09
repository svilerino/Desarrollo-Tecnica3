/***************************************************************
 * Name:      labo22a05_tp_wx_dc_t3Main.cpp
 * Purpose:   Code for Application Frame
 * Author:    Silver (silverr.92@gmail.com)
 * Created:   2009-11-20
 * Copyright: Silver (facebook: Silver Vilerino)
 * License:
 **************************************************************/

#include "labo22a05_tp_wx_dc_t3Main.h"
#include <wx/msgdlg.h>

//(*InternalHeaders(labo22a05_tp_wx_dc_t3Frame)
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

//(*IdInit(labo22a05_tp_wx_dc_t3Frame)
const long labo22a05_tp_wx_dc_t3Frame::ID_PANEL2 = wxNewId();
const long labo22a05_tp_wx_dc_t3Frame::ID_PANEL1 = wxNewId();
const long labo22a05_tp_wx_dc_t3Frame::idMenuQuit = wxNewId();
const long labo22a05_tp_wx_dc_t3Frame::idMenuAbout = wxNewId();
const long labo22a05_tp_wx_dc_t3Frame::ID_STATUSBAR1 = wxNewId();
//*)

BEGIN_EVENT_TABLE(labo22a05_tp_wx_dc_t3Frame,wxFrame)
    //(*EventTable(labo22a05_tp_wx_dc_t3Frame)
    //*)
END_EVENT_TABLE()

labo22a05_tp_wx_dc_t3Frame::labo22a05_tp_wx_dc_t3Frame(wxWindow* parent,wxWindowID id)
{
    //(*Initialize(labo22a05_tp_wx_dc_t3Frame)
    wxMenuItem* MenuItem2;
    wxMenuItem* MenuItem1;
    wxMenu* Menu1;
    wxMenuBar* MenuBar1;
    wxMenu* Menu2;

    Create(parent, id, wxEmptyString, wxDefaultPosition, wxDefaultSize, wxDEFAULT_FRAME_STYLE, _T("id"));
    Panel1 = new wxPanel(this, ID_PANEL1, wxPoint(160,168), wxDefaultSize, wxTAB_TRAVERSAL, _T("ID_PANEL1"));
    Panel2 = new wxPanel(Panel1, ID_PANEL2, wxPoint(16,16), wxSize(368,224), wxTAB_TRAVERSAL, _T("ID_PANEL2"));
    MenuBar1 = new wxMenuBar();
    Menu1 = new wxMenu();
    MenuItem1 = new wxMenuItem(Menu1, idMenuQuit, _("Quit\tAlt-F4"), _("Quit the application"), wxITEM_NORMAL);
    Menu1->Append(MenuItem1);
    MenuBar1->Append(Menu1, _("&File"));
    Menu2 = new wxMenu();
    MenuItem2 = new wxMenuItem(Menu2, idMenuAbout, _("About\tF1"), _("Show info about this application"), wxITEM_NORMAL);
    Menu2->Append(MenuItem2);
    MenuBar1->Append(Menu2, _("Help"));
    SetMenuBar(MenuBar1);
    StatusBar1 = new wxStatusBar(this, ID_STATUSBAR1, 0, _T("ID_STATUSBAR1"));
    int __wxStatusBarWidths_1[1] = { -1 };
    int __wxStatusBarStyles_1[1] = { wxSB_NORMAL };
    StatusBar1->SetFieldsCount(1,__wxStatusBarWidths_1);
    StatusBar1->SetStatusStyles(1,__wxStatusBarStyles_1);
    SetStatusBar(StatusBar1);

    Panel1->Connect(ID_PANEL1,wxEVT_PAINT,(wxObjectEventFunction)&labo22a05_tp_wx_dc_t3Frame::OnPanel1Paint,0,this);
    Connect(idMenuQuit,wxEVT_COMMAND_MENU_SELECTED,(wxObjectEventFunction)&labo22a05_tp_wx_dc_t3Frame::OnQuit);
    Connect(idMenuAbout,wxEVT_COMMAND_MENU_SELECTED,(wxObjectEventFunction)&labo22a05_tp_wx_dc_t3Frame::OnAbout);
    //*)
}

labo22a05_tp_wx_dc_t3Frame::~labo22a05_tp_wx_dc_t3Frame()
{
    //(*Destroy(labo22a05_tp_wx_dc_t3Frame)
    //*)
}

void labo22a05_tp_wx_dc_t3Frame::OnQuit(wxCommandEvent& event)
{
    Close();
}

void labo22a05_tp_wx_dc_t3Frame::OnAbout(wxCommandEvent& event)
{
    wxString msg = wxbuildinfo(long_f);
    wxMessageBox(msg, _("Welcome to..."));
}

void labo22a05_tp_wx_dc_t3Frame::OnPanel1Paint(wxPaintEvent& event)
{
    wxPaintDC dc( Panel1 );
    dc.DrawLine(0,0,200,200);
}

