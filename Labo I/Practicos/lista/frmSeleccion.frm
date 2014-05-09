VERSION 5.00
Begin VB.Form frmSeleccion 
   BorderStyle     =   3  'Fixed Dialog
   ClientHeight    =   3870
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   2475
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3870
   ScaleWidth      =   2475
   StartUpPosition =   2  'CenterScreen
   Begin VB.Frame Frame1 
      Caption         =   "Seleccione"
      Height          =   3615
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   2295
      Begin VB.CommandButton cmdListas 
         Caption         =   "&Listas"
         Height          =   375
         Left            =   120
         TabIndex        =   1
         Top             =   360
         Width           =   1935
      End
   End
End
Attribute VB_Name = "frmSeleccion"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub cmdListas_Click()
Unload Me
frmListas.Show
End Sub
