VERSION 5.00
Begin VB.MDIForm mdiMenu 
   BackColor       =   &H8000000C&
   Caption         =   "Administracion de Pacientes"
   ClientHeight    =   3090
   ClientLeft      =   165
   ClientTop       =   855
   ClientWidth     =   4680
   LinkTopic       =   "MDIForm1"
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.Menu mnuPacientes 
      Caption         =   "&Pacientes"
   End
   Begin VB.Menu mnuHisto 
      Caption         =   "&Historias Clinicas"
   End
   Begin VB.Menu mnuConsu 
      Caption         =   "&Consultas"
   End
   Begin VB.Menu mnuSalir 
      Caption         =   "&Salir"
   End
End
Attribute VB_Name = "mdiMenu"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub MDIForm_Unload(Cancel As Integer)
End
End Sub

Private Sub mnuConsu_Click()
frmConsulta.Show
End Sub

Private Sub mnuHisto_Click()
frmHistorias.Show
End Sub

Private Sub mnuPacientes_Click()
frmPacientes.Show
End Sub

Private Sub mnuSalir_Click()
MDIForm_Unload 0
End Sub
