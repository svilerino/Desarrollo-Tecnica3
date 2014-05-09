VERSION 5.00
Begin VB.Form frmDrag 
   Caption         =   "Form1"
   ClientHeight    =   6150
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   8100
   LinkTopic       =   "Form1"
   ScaleHeight     =   6150
   ScaleWidth      =   8100
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdDrag 
      Height          =   975
      Left            =   1800
      TabIndex        =   0
      Top             =   1560
      Width           =   2295
   End
End
Attribute VB_Name = "frmDrag"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Private Drag As Boolean
Private Sub cmdDrag_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
Drag = True
End Sub

Private Sub cmdDrag_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
If (Drag) Then
    With cmdDrag
        .Move .Left + X, .Top + Y
    End With
End If
End Sub

Private Sub cmdDrag_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
Drag = False
Beep
End Sub

