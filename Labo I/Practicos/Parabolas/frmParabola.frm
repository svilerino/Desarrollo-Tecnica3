VERSION 5.00
Begin VB.Form frmParabola 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Parabolas"
   ClientHeight    =   7380
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   8940
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   7380
   ScaleWidth      =   8940
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.HScrollBar CentroY 
      Height          =   255
      LargeChange     =   20
      Left            =   2520
      Max             =   400
      SmallChange     =   10
      TabIndex        =   5
      Top             =   6720
      Value           =   200
      Width           =   2415
   End
   Begin VB.Frame Frame1 
      Caption         =   "Controles"
      Height          =   1455
      Left            =   240
      TabIndex        =   1
      Top             =   5880
      Width           =   8655
      Begin VB.HScrollBar CorrY 
         Height          =   255
         Left            =   5040
         Max             =   10
         Min             =   -10
         TabIndex        =   10
         Top             =   840
         Width           =   2535
      End
      Begin VB.HScrollBar CorrX 
         Height          =   255
         Left            =   5040
         Max             =   10
         Min             =   -10
         TabIndex        =   9
         Top             =   360
         Width           =   2535
      End
      Begin VB.HScrollBar CentroX 
         Height          =   255
         LargeChange     =   5
         Left            =   2280
         Max             =   40
         SmallChange     =   2
         TabIndex        =   4
         Top             =   360
         Value           =   20
         Width           =   2415
      End
      Begin VB.CommandButton cmdParabola1 
         Caption         =   "Y= X^2"
         Height          =   375
         Left            =   120
         TabIndex        =   3
         Top             =   720
         Width           =   1815
      End
      Begin VB.CommandButton cmdEjes 
         Caption         =   "Ejes Cartesianos"
         Height          =   375
         Left            =   120
         TabIndex        =   2
         Top             =   240
         Width           =   1815
      End
      Begin VB.Label Label3 
         Caption         =   "Eje Y"
         Height          =   255
         Left            =   2400
         TabIndex        =   8
         Top             =   600
         Width           =   495
      End
      Begin VB.Label Label1 
         Caption         =   "Eje X"
         Height          =   255
         Left            =   2400
         TabIndex        =   6
         Top             =   120
         Width           =   495
      End
   End
   Begin VB.PictureBox Pbox 
      Height          =   5535
      Left            =   120
      ScaleHeight     =   200
      ScaleMode       =   0  'User
      ScaleWidth      =   20
      TabIndex        =   0
      Top             =   120
      Width           =   8655
   End
   Begin VB.Label Label2 
      Caption         =   "Eje X"
      Height          =   255
      Left            =   2520
      TabIndex        =   7
      Top             =   6480
      Width           =   495
   End
End
Attribute VB_Name = "frmParabola"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Private Type Coordenada
    X As Single
    Y As Single
End Type

Private Sub GraficarEjes(ByRef Centro As Coordenada)
Pbox.Cls
Dim coor As Coordenada
Dim Origen As Coordenada
Origen.X = Centro.X / 2
Origen.Y = Centro.Y / 2

For coor.X = 0 To 20 Step 0.01
    Pbox.PSet (coor.X, Origen.Y), vbBlue
Next coor.X

For coor.Y = 0 To 200 Step 0.5
    Pbox.PSet (Origen.X, coor.Y), vbBlue
Next coor.Y

End Sub

Private Sub Parabola(ByRef Centro As Coordenada, ByRef corrimiento As Coordenada)
Dim coor As Coordenada
Dim Origen As Coordenada
Dim corr As Coordenada
cmdEjes_Click

Origen.X = Centro.X / 2
Origen.Y = Centro.Y / 2

corr.X = corrimiento.X
corr.Y = corrimiento.Y * 10

For coor.X = -20 To 20 Step 0.001
    coor.Y = -((coor.X) ^ 2) + corr.Y + Origen.Y
    If Pbox.Point(coor.X + corr.X + Origen.X, coor.Y) = vbBlue Then
        Pbox.DrawWidth = 5
        Pbox.PSet (coor.X + corr.X + Origen.X, coor.Y), vbGreen
        Pbox.DrawWidth = 1
        Pbox.Print "( " & Trim(Str(Fix(coor.X + corr.X + Origen.X))) & ";" & Trim(Str(Fix(coor.Y))); " )"
    Else
        Pbox.PSet (coor.X + corr.X + Origen.X, coor.Y), vbRed
    End If
Next coor.X
End Sub

Private Sub cmdEjes_Click()
Dim Centro As Coordenada
Centro.X = CentroX.Value
Centro.Y = CentroY.Value
GraficarEjes Centro
End Sub

Private Sub cmdParabola1_Click()
Dim Centro As Coordenada, corrimiento As Coordenada
Centro.X = CentroX.Value
Centro.Y = CentroY.Value
corrimiento.X = CorrX.Value
corrimiento.Y = CorrY.Value
Parabola Centro, corrimiento
End Sub
