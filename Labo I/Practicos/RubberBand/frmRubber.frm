VERSION 5.00
Begin VB.Form frmRubber 
   Caption         =   "Form1"
   ClientHeight    =   7440
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   9405
   DrawWidth       =   2
   LinkTopic       =   "Form1"
   ScaleHeight     =   100
   ScaleMode       =   0  'User
   ScaleWidth      =   100
   StartUpPosition =   3  'Windows Default
End
Attribute VB_Name = "frmRubber"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Private Type coordenada
    X As Single
    Y As Single
End Type
Private coor(1) As coordenada
Private bool As Boolean

Private Sub Form_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
Me.Cls
bool = True
coor(0).X = X
coor(0).Y = Y
End Sub

Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
If (bool) Then
    Me.Cls
    coor(1).X = X
    coor(1).Y = Y
    Me.Line (coor(0).X, coor(0).Y)-(coor(1).X, coor(1).Y), vbRed, B
    Me.PSet (coor(1).X, coor(1).Y)
    Me.Print Str(X) & "   ;   " & Str(Y)
End If
End Sub

Private Sub Form_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
bool = False
Me.Cls
End Sub
