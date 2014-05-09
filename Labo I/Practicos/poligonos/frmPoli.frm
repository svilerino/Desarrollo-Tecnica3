VERSION 5.00
Begin VB.Form frmPoligonos 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Poligonos"
   ClientHeight    =   9285
   ClientLeft      =   2685
   ClientTop       =   1110
   ClientWidth     =   8280
   FillStyle       =   0  'Solid
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   9285
   ScaleWidth      =   8280
   Begin VB.HScrollBar hsStep 
      Height          =   255
      Left            =   5760
      Max             =   250
      Min             =   10
      TabIndex        =   6
      Top             =   8400
      Value           =   250
      Width           =   2295
   End
   Begin VB.TextBox txtVertices 
      Height          =   285
      Left            =   3600
      TabIndex        =   3
      Text            =   "5"
      Top             =   8760
      Width           =   1335
   End
   Begin VB.TextBox txtRadio 
      Height          =   285
      Left            =   3600
      TabIndex        =   2
      Text            =   "3000"
      Top             =   8280
      Width           =   1335
   End
   Begin VB.CommandButton cmdDo 
      Caption         =   "Poligonos"
      Height          =   495
      Left            =   240
      TabIndex        =   1
      Top             =   8400
      Width           =   2175
   End
   Begin VB.PictureBox pic 
      AutoRedraw      =   -1  'True
      BackColor       =   &H00000000&
      FillStyle       =   0  'Solid
      Height          =   8000
      Left            =   120
      ScaleHeight     =   8000
      ScaleMode       =   0  'User
      ScaleWidth      =   8000
      TabIndex        =   0
      Top             =   120
      Width           =   8000
   End
   Begin VB.Label Label2 
      Caption         =   "Lados"
      Height          =   255
      Left            =   2520
      TabIndex        =   5
      Top             =   8760
      Width           =   975
   End
   Begin VB.Label Label1 
      Caption         =   "Radio"
      Height          =   255
      Left            =   2520
      TabIndex        =   4
      Top             =   8280
      Width           =   975
   End
End
Attribute VB_Name = "frmPoligonos"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub cmdDo_Click()
Dim x As Single
'For x = 1 To 360 Step 0.025
x = 1
'DoEvents
Poligono x * 4 * Atn(1)
'BorraPoligono x * 4 * Atn(1)
'Next x

'pic.Circle (pic.ScaleWidth / 2, pic.ScaleHeight / 2), Val(txtRadio.Text), vbBlue


End Sub

Private Sub BorraPoligono(ByVal fase As Single)
Dim ai As Single, af As Single
Dim punto As Single, puntoviejo As Single
Dim x As Single, y As Single
Dim pi As Single
Dim radio As Single
Dim vertices As Single
Dim cont As Long

af = 0
pi = 4 * Atn(1)
radio = Val(txtRadio.Text)
vertices = Val(txtVertices.Text)


For cont = 1 To vertices
    DoEvents
    punto = punto + (360 / vertices)
    x = radio * Cos(Radian(punto + fase)) + pic.ScaleWidth / 2
    y = radio * Sin(Radian(punto + fase)) + pic.ScaleHeight / 2
    pic.DrawWidth = 5
    pic.PSet (x, y), vbBlack
    pic.DrawWidth = 1
    pic.Line (radio * Cos(Radian(puntoviejo + fase)) + pic.ScaleWidth / 2, radio * Sin(Radian(puntoviejo + fase)) + pic.ScaleHeight / 2)-(x, y), vbBlack
    puntoviejo = punto
Next cont

End Sub


Private Sub Poligono(ByVal fase As Single)
Dim ai As Single, af As Single
Dim punto As Single, puntoviejo As Single
Dim x As Single, y As Single
Dim pi As Single
Dim radio As Single
Dim vertices As Single
Dim cont As Long

af = 0
pi = 4 * Atn(1)
radio = Val(txtRadio.Text)
vertices = Val(txtVertices.Text)

pic.Circle (pic.ScaleWidth / 2, pic.ScaleHeight / 2), radio, vbBlue
For cont = 1 To vertices
    DoEvents
    punto = punto + (360 / vertices)
    x = radio * Cos(Radian(punto + fase)) + pic.ScaleWidth / 2
    y = radio * Sin(Radian(punto + fase)) + pic.ScaleHeight / 2
    pic.DrawWidth = 5
    pic.PSet (x, y), vbRed
    pic.DrawWidth = 1
    pic.Line (radio * Cos(Radian(puntoviejo + fase)) + pic.ScaleWidth / 2, radio * Sin(Radian(puntoviejo + fase)) + pic.ScaleHeight / 2)-(x, y), vbGreen
    puntoviejo = punto
Next cont

End Sub


Private Function Radian(ByVal Grado As Single) As Single
Radian = (Grado * 4 * Atn(1)) / 180
End Function


