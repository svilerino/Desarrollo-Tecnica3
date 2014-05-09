VERSION 5.00
Begin VB.Form frmInit 
   BorderStyle     =   3  'Fixed Dialog
   ClientHeight    =   3090
   ClientLeft      =   45
   ClientTop       =   45
   ClientWidth     =   4680
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Moveable        =   0   'False
   ScaleHeight     =   3090
   ScaleLeft       =   20
   ScaleMode       =   0  'User
   ScaleTop        =   20
   ScaleWidth      =   4680
   StartUpPosition =   2  'CenterScreen
   Begin VB.Label Label1 
      Caption         =   "Presione una tecla para continuar"
      Height          =   255
      Left            =   1080
      TabIndex        =   1
      Top             =   2760
      Width           =   2535
   End
   Begin VB.Label lblInfo 
      Height          =   2175
      Left            =   360
      TabIndex        =   0
      Top             =   240
      Width           =   3975
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
Me.Caption = "Sistema de Colegio Version BETA: " & App.Major & "." & App.Minor & "." & App.Revision
lblInfo.Caption = "Sistema de Comercio realizado por Vileriño Silvio para el profesor Jorge Bottaro, 4to 2da. Ma. Sanchez de Thompson , Tecnica nº 3. DEº9,Capital,Bs.As., Argentina"
End Sub
