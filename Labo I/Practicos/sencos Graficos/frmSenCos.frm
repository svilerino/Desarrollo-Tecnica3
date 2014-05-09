VERSION 5.00
Begin VB.Form frmSenCos 
   AutoRedraw      =   -1  'True
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Seno/Coseno"
   ClientHeight    =   6675
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   7050
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   6675
   ScaleWidth      =   7050
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame2 
      Caption         =   "Otros Graficos"
      Height          =   2175
      Left            =   4920
      TabIndex        =   18
      Top             =   4440
      Width           =   2055
      Begin VB.CommandButton cmdPelota 
         Caption         =   "Pelota Loca"
         Height          =   495
         Left            =   120
         TabIndex        =   22
         Top             =   1440
         Width           =   1095
      End
      Begin VB.CommandButton cmdHiper 
         Caption         =   "Hiperbola Loca"
         Height          =   495
         Left            =   120
         TabIndex        =   21
         Top             =   840
         Width           =   1095
      End
      Begin VB.CommandButton cmdBarras 
         Caption         =   "Barras Estadisticas"
         Height          =   495
         Left            =   120
         TabIndex        =   19
         Top             =   240
         Width           =   1095
      End
   End
   Begin VB.TextBox txtAspecto 
      BackColor       =   &H000080FF&
      Height          =   285
      Left            =   3240
      Locked          =   -1  'True
      TabIndex        =   7
      Top             =   5160
      Width           =   495
   End
   Begin VB.Frame Frame1 
      Caption         =   "Elipses - Circulos - Funciones"
      Height          =   2175
      Left            =   120
      TabIndex        =   1
      Top             =   4440
      Width           =   4695
      Begin VB.CommandButton cmdSen 
         Caption         =   "Sen - Cos"
         Height          =   255
         Left            =   3720
         TabIndex        =   20
         Top             =   240
         Width           =   855
      End
      Begin VB.HScrollBar hsAngFinal 
         Height          =   255
         Left            =   1320
         Max             =   360
         TabIndex        =   17
         Top             =   1800
         Width           =   1575
      End
      Begin VB.HScrollBar hsAngInicial 
         Height          =   255
         Left            =   1320
         Max             =   360
         TabIndex        =   16
         Top             =   1440
         Width           =   1575
      End
      Begin VB.TextBox txtAngFinal 
         BackColor       =   &H0080C0FF&
         Height          =   285
         Left            =   3120
         Locked          =   -1  'True
         TabIndex        =   15
         Text            =   "0"
         Top             =   1800
         Width           =   495
      End
      Begin VB.TextBox txtAngInicial 
         BackColor       =   &H0000C000&
         Height          =   285
         Left            =   3120
         Locked          =   -1  'True
         TabIndex        =   13
         Text            =   "0"
         Top             =   1440
         Width           =   495
      End
      Begin VB.TextBox txtRadio 
         BackColor       =   &H000080FF&
         Height          =   285
         Left            =   3120
         Locked          =   -1  'True
         TabIndex        =   11
         Top             =   1080
         Width           =   495
      End
      Begin VB.HScrollBar hsRadio 
         Height          =   255
         Left            =   1320
         Max             =   25
         Min             =   10
         TabIndex        =   10
         Top             =   1080
         Value           =   10
         Width           =   1575
      End
      Begin VB.TextBox txtFase 
         BackColor       =   &H008080FF&
         Height          =   285
         Left            =   3120
         Locked          =   -1  'True
         TabIndex        =   6
         Top             =   240
         Width           =   495
      End
      Begin VB.HScrollBar hsElipse 
         Height          =   255
         Left            =   1320
         Max             =   20
         Min             =   1
         TabIndex        =   5
         Top             =   720
         Value           =   10
         Width           =   1575
      End
      Begin VB.CommandButton cmdElipse 
         Caption         =   "Elipse"
         Height          =   255
         Left            =   3720
         TabIndex        =   4
         Top             =   720
         Width           =   855
      End
      Begin VB.HScrollBar hsFase 
         Height          =   255
         Left            =   1320
         Max             =   20
         TabIndex        =   3
         Top             =   240
         Width           =   1575
      End
      Begin VB.Line Line1 
         X1              =   0
         X2              =   4680
         Y1              =   600
         Y2              =   600
      End
      Begin VB.Label Label5 
         Caption         =   "Angulo Final"
         Height          =   255
         Left            =   120
         TabIndex        =   14
         Top             =   1800
         Width           =   975
      End
      Begin VB.Label Label4 
         Caption         =   "Angulo Inicial"
         Height          =   255
         Left            =   120
         TabIndex        =   12
         Top             =   1440
         Width           =   1095
      End
      Begin VB.Label Label3 
         Caption         =   "Radio"
         Height          =   255
         Left            =   600
         TabIndex        =   9
         Top             =   1080
         Width           =   615
      End
      Begin VB.Label Label2 
         Caption         =   "Aspecto"
         Height          =   255
         Left            =   600
         TabIndex        =   8
         Top             =   720
         Width           =   615
      End
      Begin VB.Label Label1 
         Caption         =   "Fase"
         Height          =   255
         Left            =   600
         TabIndex        =   2
         Top             =   240
         Width           =   495
      End
   End
   Begin VB.PictureBox Pic 
      BackColor       =   &H00000000&
      ForeColor       =   &H000080FF&
      Height          =   4215
      Left            =   120
      ScaleHeight     =   10
      ScaleMode       =   0  'User
      ScaleWidth      =   10
      TabIndex        =   0
      Top             =   120
      Width           =   6855
   End
End
Attribute VB_Name = "frmSenCos"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Private Type Coordenada
    x As Single
    y As Single
End Type

Private Sub EjesBarras()
Dim coor As Coordenada
Dim origen As Coordenada
'origen.x = Pic.ScaleWidth / 2
'origen.y = Pic.ScaleHeight / 2
For origen.y = 0 To 10 Step 0.5
Pic.DrawWidth = 5
Pic.PSet (0, origen.y), vbBlue
Pic.DrawWidth = 1
Pic.Print Str(9 - origen.y)
For coor.x = 0 To 10 Step 0.01
    Pic.PSet (coor.x, origen.y), vbGreen
Next coor.x
Next origen.y

For origen.x = 0 To 10 Step 0.5
Pic.DrawWidth = 5
Pic.PSet (origen.x, Pic.ScaleHeight - 1), vbBlue
Pic.DrawWidth = 1
Pic.Print Str(origen.x)
For coor.y = 0 To 10 Step 0.01
    Pic.PSet (origen.x, coor.y), vbGreen
Next coor.y
Next origen.x
End Sub

Private Sub Ejes()
Dim coor As Coordenada
Dim origen As Coordenada
origen.x = Pic.ScaleWidth / 2
origen.y = Pic.ScaleHeight / 2

For coor.x = 0 To 10 Step 0.001
    Pic.PSet (coor.x, origen.y), vbYellow
Next coor.x



For coor.y = 0 To 10 Step 0.001
    Pic.PSet (origen.x, coor.y), vbYellow
Next coor.y

End Sub


Private Sub cmdCos_Click()
GraficarCoSeno
End Sub

Private Sub cmdBarras_Click()
Dim vec(7) As Single
numazar vec()
Pic.Cls
EjesBarras
graficarBarras vec()
End Sub

Private Sub cmdElipse_Click()
Pic.Cls
Elipse hsElipse.Value / 10, hsRadio.Value / 10, Val(txtAngInicial.Text), Val(txtAngFinal.Text)
End Sub

Private Sub cmdHiper_Click()
Pic.Cls
Hiperbola
End Sub

Private Sub cmdPelota_Click()
Pic.Cls
pelota
End Sub

Private Sub cmdSen_Click()
Pic.Cls
Circunferenciatrig
GraficarSeno
GraficarCoSeno
End Sub

Private Sub GraficarSeno()
Ejes

Dim coor As Coordenada
Dim origen As Coordenada
origen.x = Pic.ScaleWidth / 2
origen.y = Pic.ScaleHeight / 2
Dim pi As Single
pi = 4 * Atn(1)

For coor.x = -5 To 5 Step 0.01
    coor.y = -(Sin(coor.x + Val((hsFase.Value / 10) * pi)))
    
    If Pic.Point(coor.x + origen.x, coor.y + origen.y) = vbYellow Then
        Pic.DrawWidth = 5
        Pic.PSet (coor.x + origen.x, coor.y + origen.y), vbCyan
        Pic.DrawWidth = 1
        Pic.Print "( " & Trim(Str(Round(coor.x, 2))) & "  ;  " & Trim(Str(Round(-coor.y, 2))) & " )"
    Else
        Pic.PSet (coor.x + origen.x, coor.y + origen.y), vbBlue
    End If
    
Next coor.x


End Sub

Private Sub GraficarCoSeno()
Ejes

Dim coor As Coordenada
Dim origen As Coordenada
origen.x = Pic.ScaleWidth / 2
origen.y = Pic.ScaleHeight / 2
Dim pi As Single
pi = 4 * Atn(1)



For coor.x = -5 To 5 Step 0.001
        coor.y = -(Cos(coor.x + Val((hsFase.Value / 10) * pi)))
    
    If Pic.Point(coor.x + origen.x, coor.y + origen.y) = vbYellow Then
        Pic.DrawWidth = 5
        Pic.PSet (coor.x + origen.x, coor.y + origen.y), vbCyan
        Pic.DrawWidth = 1
        Pic.Print "( " & Trim(Str(Round(coor.x, 2))) & "  ;  " & Trim(Str(Round(-coor.y, 2))) & " )"
    Else
        Pic.PSet (coor.x + origen.x, coor.y + origen.y), vbGreen
    End If
    
Next coor.x


End Sub


Private Sub Form_Load()
Randomize Timer
End Sub

Private Sub hsAngFinal_Change()
txtAngFinal.Text = Str(hsAngFinal.Value)
End Sub

Private Sub hsAngInicial_Change()
txtAngInicial.Text = Str(hsAngInicial.Value)
End Sub

Private Sub hsElipse_Change()
txtAspecto.Text = Str(hsElipse.Value / 10)
End Sub

Private Sub hsFase_Change()
txtFase.Text = Str(hsFase.Value / 10)
End Sub

Private Sub numazar(ByRef vec() As Single)
Dim x As Byte
For x = 0 To 7
    vec(x) = Round((Rnd * 9), 3)
Next x
End Sub

Private Sub graficarBarras(ByRef vec() As Single)
Dim x As Byte
For x = 1 To 8
    Pic.Line (x, 9 - vec(x - 1))-(x + 1, 9), RGB(Fix(255 * Rnd), Fix(255 * Rnd), Fix(255 * Rnd)), BF
    Pic.PSet (x, 9 - vec(x - 1))
    Pic.Print Str(vec(x - 1))
    
Next x
End Sub

Private Sub Elipse(ByVal Aspecto As Single, ByVal Radio As Single, ByVal anginicial As Integer, ByVal angfinal As Integer)
Dim origen As Coordenada
origen.x = Pic.ScaleWidth / 2
origen.y = Pic.ScaleHeight / 2
Pic.DrawWidth = 5
Pic.PSet (origen.x, origen.y), vbBlue
Pic.DrawWidth = 1
Pic.Circle (origen.x, origen.y), Radio, vbGreen, gradtorad(anginicial), gradtorad(angfinal), Aspecto
End Sub

Private Function gradtorad(ByVal grados As Integer) As Single
gradtorad = (grados * (4 * Atn(1)) / 180)
End Function

Private Sub hsRadio_Change()
txtRadio.Text = Str(hsRadio.Value / 10)
End Sub

Private Sub Circunferenciatrig()
Pic.Circle (Pic.ScaleWidth / 2, Pic.ScaleHeight / 2), 0.6, vbMagenta
End Sub

Private Sub Hiperbola()
Dim x As Byte
For x = 1 To 10
    Pic.Line (x, 0)-(10, x), RGB(Fix(255 * Rnd), Fix(255 * Rnd), Fix(255 * Rnd))
    Pic.Line (x, 10)-(0, x), RGB(Fix(255 * Rnd), Fix(255 * Rnd), Fix(255 * Rnd))
Next x

For x = 1 To 10
    Pic.Line (10 - x, 0)-(0, x), RGB(Fix(255 * Rnd), Fix(255 * Rnd), Fix(255 * Rnd))
    Pic.Line (10 - x, 10)-(10, x), RGB(Fix(255 * Rnd), Fix(255 * Rnd), Fix(255 * Rnd))
Next x
End Sub

Private Sub pelota()
Dim x As Single
Pic.DrawWidth = 5

For x = 0 To 10 Step 0.001
    Pic.Cls
    Pic.Circle (x, x), 1, vbBlue, , , Rnd * 2
Next x

For x = 10 To 0 Step -0.001
    Pic.Cls
    Pic.Circle (x, x), 1, vbBlue, , , Rnd * 2
Next x

For x = 0 To 10 Step 0.001
    Pic.Cls
    Pic.Circle (10 - x, 10 - x), 1, vbBlue, , , Rnd * 2
Next x






Pic.DrawWidth = 1
End Sub
