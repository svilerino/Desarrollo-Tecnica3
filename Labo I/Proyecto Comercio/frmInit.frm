VERSION 5.00
Begin VB.Form frmInit 
   BorderStyle     =   3  'Fixed Dialog
   ClientHeight    =   3690
   ClientLeft      =   45
   ClientTop       =   45
   ClientWidth     =   7740
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Moveable        =   0   'False
   ScaleHeight     =   3690
   ScaleWidth      =   7740
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.Timer tmrExit 
      Enabled         =   0   'False
      Interval        =   2500
      Left            =   120
      Top             =   480
   End
   Begin VB.Label Label2 
      Caption         =   "Presione Una Tecla Para Continuar"
      Height          =   375
      Left            =   1200
      TabIndex        =   2
      Top             =   2880
      Width           =   5895
   End
   Begin VB.Label Info 
      Height          =   1095
      Left            =   600
      TabIndex        =   1
      Top             =   1560
      Width           =   6855
   End
   Begin VB.Label Label1 
      Caption         =   "Iniciando..."
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   24
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   1320
      TabIndex        =   0
      Top             =   600
      Width           =   6015
   End
End
Attribute VB_Name = "frmInit"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub Form_KeyPress(KeyAscii As Integer)
Unload Me
End Sub

Private Sub Form_Load()
Me.Caption = "Sistema de Comercio, Version BETA: " & App.Major & "." & App.Minor & "." & App.Revision
Info.Caption = "Sistema de Comercio, Version BETA: " & App.Major & "." & App.Minor & "." & App.Revision & "   -   Diseñado y programado en Visual Basic 6.0 por Vileriño Silvio - silvernw@gmail.com, 4to 2da. 2008. Maria Sanchez de thompson. Tecnica nº 3 DE 9, CAP.FED ,BSAS, Argentina"
End Sub

Private Sub tmrExit_Timer()
tmrExit.Enabled = False
Unload Me
End Sub
