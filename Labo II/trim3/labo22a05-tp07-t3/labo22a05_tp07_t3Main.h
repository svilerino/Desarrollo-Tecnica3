/***************************************************************
 * Name:      labo22a05_tp07_t3Main.h
 * Purpose:   Defines Application Frame
 * Author:    Silver (silverr.92@gmail.com)
 * Created:   2009-11-16
 * Copyright: Silver (facebook: Silver Vilerino)
 * License:
 **************************************************************/

#ifndef LABO22A05_TP07_T3MAIN_H
#define LABO22A05_TP07_T3MAIN_H

//(*Headers(labo22a05_tp07_t3Frame)
#include <wx/stattext.h>
#include <wx/menu.h>
#include <wx/textctrl.h>
#include <wx/listbox.h>
#include <wx/panel.h>
#include <wx/button.h>
#include <wx/frame.h>
#include <wx/statusbr.h>
//*)

class labo22a05_tp07_t3Frame: public wxFrame
{
    public:

        labo22a05_tp07_t3Frame(wxWindow* parent,wxWindowID id = -1);
        virtual ~labo22a05_tp07_t3Frame();

    private:

        bool esRepetido(int,int,int*);

        //(*Handlers(labo22a05_tp07_t3Frame)
        void OnQuit(wxCommandEvent& event);
        void OnAbout(wxCommandEvent& event);
        void OnButton1Click(wxCommandEvent& event);
        //*)
        void NewGame(wxCommandEvent& event);
        void GameHelp(wxCommandEvent& event);

        //(*Identifiers(labo22a05_tp07_t3Frame)
        static const long ID_STATICTEXT1;
        static const long ID_TEXTCTRL1;
        static const long ID_PANEL2;
        static const long ID_BUTTON1;
        static const long ID_LISTBOX1;
        static const long ID_STATICTEXT2;
        static const long ID_TEXTCTRL2;
        static const long ID_PANEL1;
        static const long ID_NewGame;
        static const long idMenuQuit;
        static const long ID_GameHelp;
        static const long idMenuAbout;
        static const long ID_STATUSBAR1;
        //*)

        //(*Declarations(labo22a05_tp07_t3Frame)
        wxTextCtrl* txtNewNum;
        wxTextCtrl* txtNum;
        wxButton* cmdGo;
        wxListBox* lstResult;
        wxMenuItem* MenuItem4;
        wxStaticText* lbl1;
        wxPanel* Panel1;
        wxMenuItem* MenuItem3;
        wxStatusBar* StatusBar1;
        wxPanel* Panel2;
        wxStaticText* lbl2;
        //*)

        DECLARE_EVENT_TABLE()
};

#endif // LABO22A05_TP07_T3MAIN_H
