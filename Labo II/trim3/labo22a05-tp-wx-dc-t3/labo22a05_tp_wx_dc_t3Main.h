/***************************************************************
 * Name:      labo22a05_tp_wx_dc_t3Main.h
 * Purpose:   Defines Application Frame
 * Author:    Silver (silverr.92@gmail.com)
 * Created:   2009-11-20
 * Copyright: Silver (facebook: Silver Vilerino)
 * License:
 **************************************************************/

#ifndef LABO22A05_TP_WX_DC_T3MAIN_H
#define LABO22A05_TP_WX_DC_T3MAIN_H

//(*Headers(labo22a05_tp_wx_dc_t3Frame)
#include <wx/menu.h>
#include <wx/panel.h>
#include <wx/frame.h>
#include <wx/statusbr.h>
//*)

class labo22a05_tp_wx_dc_t3Frame: public wxFrame
{
    public:

        labo22a05_tp_wx_dc_t3Frame(wxWindow* parent,wxWindowID id = -1);
        virtual ~labo22a05_tp_wx_dc_t3Frame();

    private:

        //(*Handlers(labo22a05_tp_wx_dc_t3Frame)
        void OnQuit(wxCommandEvent& event);
        void OnAbout(wxCommandEvent& event);
        void OnPanel1Paint(wxPaintEvent& event);
        //*)

        //(*Identifiers(labo22a05_tp_wx_dc_t3Frame)
        static const long ID_PANEL2;
        static const long ID_PANEL1;
        static const long idMenuQuit;
        static const long idMenuAbout;
        static const long ID_STATUSBAR1;
        //*)

        //(*Declarations(labo22a05_tp_wx_dc_t3Frame)
        wxPanel* Panel1;
        wxStatusBar* StatusBar1;
        wxPanel* Panel2;
        //*)

        DECLARE_EVENT_TABLE()
};

#endif // LABO22A05_TP_WX_DC_T3MAIN_H
