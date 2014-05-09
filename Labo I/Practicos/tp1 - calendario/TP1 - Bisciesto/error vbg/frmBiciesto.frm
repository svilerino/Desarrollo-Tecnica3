VERSION 5.00
Begin VB.Form frmBiciesto 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Trabajo practico 1"
   ClientHeight    =   3045
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   5910
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Moveable        =   0   'False
   ScaleHeight     =   3045
   ScaleWidth      =   5910
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton cmdAnio 
      Caption         =   "Calcular "
      Height          =   495
      Left            =   480
      TabIndex        =   1
      Top             =   1080
      Width           =   2055
   End
   Begin VB.TextBox txtAnio 
      Height          =   375
      Left            =   600
      TabIndex        =   0
      Text            =   "<Introduzca un año aqui>"
      Top             =   360
      Width           =   1935
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Height          =   855
      Left            =   240
      TabIndex        =   2
      Top             =   1920
      Width           =   5415
   End
End
Attribute VB_Name = "frmBiciesto"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub cmdAnio_Click()
Dim intAnio As Integer
intAnio = Val(txtAnio.Text)
If

intAnio / 400 = intAnio \ 400 Then
MsgBox "divisible por 400"

End If
End Sub

Private Sub txtAnio_Click()
txtAnio.Text = ""
End Sub

