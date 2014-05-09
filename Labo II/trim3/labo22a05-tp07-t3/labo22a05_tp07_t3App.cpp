/***************************************************************
 * Name:      labo22a05_tp07_t3App.cpp
 * Purpose:   Code for Application Class
 * Author:    Silver (silverr.92@gmail.com)
 * Created:   2009-11-16
 * Copyright: Silver (facebook: Silver Vilerino)
 * License:
 **************************************************************/

#include "labo22a05_tp07_t3App.h"

//(*AppHeaders
#include "labo22a05_tp07_t3Main.h"
#include <wx/image.h>
//*)

IMPLEMENT_APP(labo22a05_tp07_t3App);

bool labo22a05_tp07_t3App::OnInit()
{
    //(*AppInitialize
    bool wxsOK = true;
    wxInitAllImageHandlers();
    if ( wxsOK )
    {
    	labo22a05_tp07_t3Frame* Frame = new labo22a05_tp07_t3Frame(0);
    	Frame->Show();
    	SetTopWindow(Frame);
    }
    //*)
    return wxsOK;

}
