VERSION 5.00
Begin VB.Form frmListas 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Listas"
   ClientHeight    =   2925
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   3660
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2925
   ScaleWidth      =   3660
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdSalir 
      Height          =   195
      Left            =   3240
      TabIndex        =   4
      Top             =   2760
      Visible         =   0   'False
      Width           =   375
   End
   Begin VB.CommandButton cmdBorrar 
      Caption         =   "Borrar"
      Height          =   375
      Left            =   1920
      TabIndex        =   3
      Top             =   120
      Width           =   1575
   End
   Begin VB.ListBox lst2 
      Height          =   2085
      ItemData        =   "Form1.frx":0000
      Left            =   1920
      List            =   "Form1.frx":0010
      Style           =   1  'Checkbox
      TabIndex        =   2
      Top             =   600
      Width           =   1575
   End
   Begin VB.TextBox txt1 
      Height          =   375
      Left            =   120
      TabIndex        =   1
      Top             =   120
      Width           =   1575
   End
   Begin VB.ListBox lst1 
      Height          =   2205
      ItemData        =   "Form1.frx":0035
      Left            =   120
      List            =   "Form1.frx":004E
      Sorted          =   -1  'True
      TabIndex        =   0
      Top             =   600
      Width           =   1575
   End
End
Attribute VB_Name = "frmListas"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub cmdBorrar_Click()
If Not (lst2.ListCount = 0) Then
    Dim n As Integer: n = lst2.ListCount - 1
    Do: DoEvents
        If lst2.Selected(n) Then lst2.RemoveItem n
        n = n - 1
    Loop While Not (n = -1)
End If
End Sub

Private Sub cmdSalir_Click()
Form_unLoad
End Sub

Private Sub Form_unLoad(cancel As Integer)
Unload Me
frmSeleccion.Show
End Sub

Private Sub txt1_Change()
Dim x As Byte, esta As Boolean: x = 0: esta = False
Do: DoEvents
    lst1.ListIndex = x
    If UCase(Left(lst1.Text, Len(txt1.Text))) = UCase(txt1.Text) Then esta = True
    x = x + 1
Loop While Not (x = lst1.ListCount Or esta)
If Not (esta) Then lst1.ListIndex = -1
End Sub
