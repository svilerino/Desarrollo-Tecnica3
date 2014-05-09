VERSION 5.00
Begin VB.Form frmPolares 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Graficos Polares"
   ClientHeight    =   8505
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   9555
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   8505
   ScaleWidth      =   9555
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame1 
      Caption         =   "Figuras Locas"
      Height          =   1335
      Left            =   120
      TabIndex        =   13
      Top             =   7080
      Width           =   9375
      Begin VB.Timer tmrRoseta 
         Enabled         =   0   'False
         Interval        =   250
         Left            =   1920
         Top             =   720
      End
      Begin VB.Timer tmrCardioide 
         Enabled         =   0   'False
         Interval        =   250
         Left            =   1920
         Top             =   240
      End
      Begin VB.CommandButton cmdRoseta 
         Caption         =   "Rosetas"
         Height          =   375
         Left            =   240
         TabIndex        =   15
         Top             =   720
         Width           =   1455
      End
      Begin VB.CommandButton cmdCardioide 
         Caption         =   "Cardioide"
         Height          =   375
         Left            =   240
         TabIndex        =   14
         Top             =   240
         Width           =   1455
      End
   End
   Begin VB.TextBox txtValor 
      Height          =   285
      Index           =   4
      Left            =   2160
      TabIndex        =   7
      Text            =   "290"
      Top             =   6600
      Width           =   375
   End
   Begin VB.TextBox txtValor 
      Height          =   285
      Index           =   3
      Left            =   1680
      TabIndex        =   6
      Text            =   "120"
      Top             =   6600
      Width           =   375
   End
   Begin VB.TextBox txtValor 
      Height          =   285
      Index           =   2
      Left            =   1200
      TabIndex        =   5
      Text            =   "60"
      Top             =   6600
      Width           =   375
   End
   Begin VB.TextBox txtValor 
      Height          =   285
      Index           =   1
      Left            =   720
      TabIndex        =   4
      Text            =   "30"
      Top             =   6600
      Width           =   375
   End
   Begin VB.Frame frmControles 
      Caption         =   "Grafico de Torta"
      Height          =   1575
      Left            =   120
      TabIndex        =   1
      Top             =   5400
      Width           =   9375
      Begin VB.ListBox lstGrados 
         Height          =   1230
         Left            =   7680
         TabIndex        =   12
         Top             =   240
         Width           =   1575
      End
      Begin VB.ListBox lstAngulos 
         Height          =   1230
         Left            =   6000
         TabIndex        =   11
         Top             =   240
         Width           =   1575
      End
      Begin VB.ListBox lstProporcion 
         Height          =   1230
         Left            =   4320
         TabIndex        =   10
         Top             =   240
         Width           =   1575
      End
      Begin VB.ListBox lstPorcentajes 
         Height          =   1230
         Left            =   2640
         TabIndex        =   9
         Top             =   240
         Width           =   1575
      End
      Begin VB.CommandButton cmdTortaCircle 
         Caption         =   "Graficar Circle"
         Height          =   375
         Left            =   480
         TabIndex        =   8
         Top             =   720
         Width           =   1695
      End
      Begin VB.TextBox txtValor 
         Height          =   285
         Index           =   0
         Left            =   120
         TabIndex        =   3
         Text            =   "0"
         Top             =   1200
         Width           =   375
      End
      Begin VB.CommandButton cmdTorta 
         Caption         =   "&Graficar Pset"
         Height          =   375
         Left            =   480
         TabIndex        =   2
         Top             =   240
         Width           =   1695
      End
   End
   Begin VB.PictureBox pic 
      AutoRedraw      =   -1  'True
      FillColor       =   &H00C0E0FF&
      FillStyle       =   4  'Upward Diagonal
      Height          =   5295
      Left            =   120
      ScaleHeight     =   10
      ScaleMode       =   0  'User
      ScaleWidth      =   10
      TabIndex        =   0
      Top             =   120
      Width           =   9375
   End
End
Attribute VB_Name = "frmPolares"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Type Coordenada
    x As Single
    Y As Single
End Type

Private Sub subCardioide()
pic.Cls
Ejes
Cardioide
End Sub

Private Sub cmdCardioide_Click()
tmrCardioide.Enabled = Not (tmrCardioide.Enabled)
End Sub

Private Sub subRoseta()
pic.Cls
Ejes
Roseta
End Sub

Private Sub cmdRoseta_Click()
tmrRoseta.Enabled = Not (tmrRoseta.Enabled)
End Sub

Private Sub cmdTorta_Click()
pic.Cls
lstGrados.Clear
lstAngulos.Clear
lstProporcion.Clear
lstPorcentajes.Clear
TortaLine
End Sub

Private Sub cmdTortaCircle_Click()
pic.Cls
lstGrados.Clear
lstProporcion.Clear
lstPorcentajes.Clear
lstAngulos.Clear
TortaCircle
End Sub

Private Sub Form_Load()
With pic
    .BackColor = vbBlack
    .ScaleHeight = 40
    .ScaleWidth = 40
End With
Randomize Timer
End Sub

Private Sub Ejes()
Dim origen As Coordenada
origen.x = pic.ScaleWidth / 2
origen.Y = pic.ScaleHeight / 2

    pic.Line (origen.x, 0)-(origen.x, pic.ScaleHeight), vbRed
    pic.Line (0, origen.Y)-(pic.ScaleWidth, origen.Y), vbRed
    
End Sub

Private Sub TortaCircle()
Dim SumaValores As Single: SumaValores = 0
Dim x As Byte
Dim Proporciones(4) As Single
Dim Porcentajes(4) As Single
Dim Angulos(4) As Single
Dim anguloInicial As Single
Dim angulofinal As Single

'calculo suma total
For x = 0 To 4
    SumaValores = SumaValores + Val(txtValor(x).Text)
Next x

'Calculo Proporciones de Circulo
    
For x = 0 To 4
    Proporciones(x) = (Val(txtValor(x).Text)) / SumaValores
    lstProporcion.AddItem Str(Val(txtValor(x).Text)) & " ; " & Str(Proporciones(x)) & " * PI"
Next x

'Calculo Porcentajes

For x = 0 To 4
    Porcentajes(x) = (Val(txtValor(x).Text) * 100) / SumaValores
    lstPorcentajes.AddItem Str(Val(txtValor(x).Text)) & " ; " & Str(Porcentajes(x))
Next x

'calculo Angulos
For x = 0 To 4
    Angulos(x) = Proporciones(x) * 2 * (4 * Atn(1))
    lstAngulos.AddItem Str(Angulos(x))
    lstGrados.AddItem radiangrado(Angulos(x))
Next x

anguloInicial = 0.000000000001
For x = 0 To 4
    angulofinal = anguloInicial + Angulos(x)
    pic.Circle (pic.ScaleWidth / 2, pic.ScaleHeight / 2), 10, vbGreen, -anguloInicial, -angulofinal
    anguloInicial = angulofinal
Next x

End Sub

Private Sub TortaLine()
Dim SumaValores As Single: SumaValores = 0
Dim x As Byte
Dim Proporciones(4) As Single
Dim Porcentajes(4) As Single
Dim Angulos(4) As Single
Dim anguloInicial As Single
Dim angulofinal As Single
Dim color As Byte: color = 0

'calculo suma total
For x = 0 To 4
    SumaValores = SumaValores + Val(txtValor(x).Text)
Next x

'Calculo Proporciones de Circulo
    
For x = 0 To 4
    Proporciones(x) = (Val(txtValor(x).Text)) / SumaValores
    lstProporcion.AddItem Str(Val(txtValor(x).Text)) & " ; " & Str(Proporciones(x)) & " * PI"
Next x

'Calculo Porcentajes

For x = 0 To 4
    Porcentajes(x) = (Val(txtValor(x).Text) * 100) / SumaValores
    lstPorcentajes.AddItem Str(Val(txtValor(x).Text)) & " ; " & Str(Porcentajes(x))
Next x

'calculo Angulos
For x = 0 To 4
    Angulos(x) = Proporciones(x) * 2 * (4 * Atn(1))
    lstAngulos.AddItem Str(Angulos(x))
    lstGrados.AddItem radiangrado(Angulos(x))
Next x

anguloInicial = 0.000000000001
For x = 0 To 4
    angulofinal = anguloInicial + Angulos(x)
    pic.Circle (pic.ScaleWidth / 2, pic.ScaleHeight / 2), 10, vbGreen, anguloInicial, angulofinal
    pic.Line (pic.ScaleWidth / 2, pic.ScaleHeight / 2)-(10 * Sin(angulofinal) + pic.ScaleWidth / 2, -10 * Cos(angulofinal) + pic.ScaleHeight / 2), vbWhite
    anguloInicial = angulofinal
Next x

End Sub

Private Function gradoRadian(ByVal Grados As Single) As Single
gradoRadian = (Grados * (4 * Atn(1))) / 180
End Function
Private Function radiangrado(ByVal Radian As Single) As Single
radiangrado = (Radian / (4 * Atn(1))) * 180
End Function

Private Sub Cardioide()
Dim coor As Coordenada
Dim pol As Coordenada
Dim radio As Single

Dim origen As Coordenada
Dim pi As Single: pi = 4 * Atn(1)
origen.x = pic.ScaleWidth / 1 * Rnd
origen.Y = pic.ScaleHeight / 1 * Rnd

For pol.x = 0 To 2 * pi Step 0.0025
    radio = 1 + Cos(pol.x)
    coor.x = 5 * radio * Sin(pol.x) + origen.x
    coor.Y = 5 * radio * Cos(pol.x) + origen.Y

    pic.PSet (coor.x, coor.Y), vbWhite
Next pol.x

End Sub

Private Sub Roseta()

Dim coor As Coordenada
Dim pol As Coordenada
Dim radio As Single
Dim n As Byte: n = Fix(Rnd * 100)

Dim origen As Coordenada
Dim pi As Single: pi = 4 * Atn(1)
origen.x = pic.ScaleWidth / 1 * Rnd
origen.Y = pic.ScaleHeight / 1 * Rnd

For pol.x = 0 To 2 * pi Step 0.0025
    pol.Y = Rnd * pi
    radio = 1 - Cos(n * pol.x + pol.Y)
    coor.x = 5 * radio * Sin(pol.x) + origen.x
    coor.Y = 5 * radio * Cos(pol.x) + origen.Y

    pic.PSet (coor.x, coor.Y), vbRed
Next pol.x

End Sub

Private Sub tmrCardioide_Timer()
subCardioide
End Sub

Private Sub tmrRoseta_Timer()
subRoseta
End Sub
