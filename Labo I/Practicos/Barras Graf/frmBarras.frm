VERSION 5.00
Begin VB.Form frmBarras 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Barras"
   ClientHeight    =   6300
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   7245
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   6300
   ScaleWidth      =   7245
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame1 
      Caption         =   "Controles"
      Height          =   1215
      Left            =   120
      TabIndex        =   1
      Top             =   4920
      Width           =   6975
      Begin VB.CommandButton cmdGraf 
         Caption         =   "Graficar"
         Height          =   375
         Left            =   120
         TabIndex        =   2
         Top             =   240
         Width           =   2175
      End
   End
   Begin VB.PictureBox pic 
      Height          =   4575
      Left            =   120
      ScaleHeight     =   50
      ScaleMode       =   0  'User
      ScaleWidth      =   5
      TabIndex        =   0
      Top             =   120
      Width           =   6975
   End
End
Attribute VB_Name = "frmBarras"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub cmdGraf_Click()
graficar
End Sub

Private Sub Form_Load()
Randomize Timer
End Sub

Private Sub ejes()
Dim x As Single, y As Single, x2 As Single, y2 As Single

x = 0: y = (pic.ScaleHeight / 2)
x2 = pic.ScaleWidth: y2 = (pic.ScaleHeight / 2)
pic.Line (x, y)-(x2, y2), vbBlue

x = (pic.ScaleWidth / 2): y = 0
x2 = (pic.ScaleWidth / 2): y2 = (pic.ScaleHeight)
pic.Line (x, y)-(x2, y2), vbBlue

End Sub

Private Sub barras(ByRef vec() As Byte)

End Sub
Private Sub numazar(ByRef vec() As Byte)
Dim x As Byte
For x = 0 To 4
    vec(x) = Fix(Rnd * 50) + 1
Next x
End Sub

Private Sub graficar()
Dim vec(4) As Byte
numazar vec()
pic.Cls
ejes
barras vec()
End Sub
