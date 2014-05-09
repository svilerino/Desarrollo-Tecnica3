VERSION 5.00
Begin VB.Form frmTp8 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Tp8"
   ClientHeight    =   4200
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   5865
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Moveable        =   0   'False
   ScaleHeight     =   4200
   ScaleWidth      =   5865
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton cmdSalir 
      Cancel          =   -1  'True
      Caption         =   "&Salir"
      Height          =   375
      Left            =   4200
      TabIndex        =   28
      Top             =   3720
      Width           =   1455
   End
   Begin VB.CommandButton cmdHacer 
      Caption         =   "Hacer"
      Height          =   375
      Left            =   480
      TabIndex        =   8
      Top             =   3720
      Width           =   1455
   End
   Begin VB.Line Line18 
      X1              =   4440
      X2              =   4440
      Y1              =   3480
      Y2              =   600
   End
   Begin VB.Line Line17 
      X1              =   5640
      X2              =   5640
      Y1              =   3480
      Y2              =   600
   End
   Begin VB.Line Line16 
      X1              =   480
      X2              =   5640
      Y1              =   600
      Y2              =   600
   End
   Begin VB.Label Label4 
      Caption         =   "Repetidos > a <"
      Height          =   375
      Left            =   4440
      TabIndex        =   37
      Top             =   120
      Width           =   1335
   End
   Begin VB.Line Line15 
      X1              =   4320
      X2              =   4320
      Y1              =   3480
      Y2              =   600
   End
   Begin VB.Line Line14 
      X1              =   480
      X2              =   480
      Y1              =   3480
      Y2              =   600
   End
   Begin VB.Line Line13 
      X1              =   3120
      X2              =   3120
      Y1              =   3480
      Y2              =   600
   End
   Begin VB.Line Line12 
      X1              =   1800
      X2              =   1800
      Y1              =   3480
      Y2              =   600
   End
   Begin VB.Line Line11 
      X1              =   3000
      X2              =   3000
      Y1              =   3480
      Y2              =   600
   End
   Begin VB.Line Line10 
      X1              =   1680
      X2              =   1680
      Y1              =   3480
      Y2              =   600
   End
   Begin VB.Line Line9 
      X1              =   480
      X2              =   5640
      Y1              =   960
      Y2              =   960
   End
   Begin VB.Line Line8 
      X1              =   480
      X2              =   4320
      Y1              =   960
      Y2              =   960
   End
   Begin VB.Line Line7 
      X1              =   480
      X2              =   5640
      Y1              =   1320
      Y2              =   1320
   End
   Begin VB.Line Line6 
      X1              =   480
      X2              =   5640
      Y1              =   1680
      Y2              =   1680
   End
   Begin VB.Line Line5 
      X1              =   480
      X2              =   5640
      Y1              =   3480
      Y2              =   3480
   End
   Begin VB.Line Line4 
      X1              =   480
      X2              =   5640
      Y1              =   2040
      Y2              =   2040
   End
   Begin VB.Line Line3 
      X1              =   480
      X2              =   5640
      Y1              =   2400
      Y2              =   2400
   End
   Begin VB.Line Line2 
      X1              =   480
      X2              =   5640
      Y1              =   2760
      Y2              =   2760
   End
   Begin VB.Line Line1 
      X1              =   480
      X2              =   5640
      Y1              =   3120
      Y2              =   3120
   End
   Begin VB.Label lblSalida 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Height          =   375
      Index           =   23
      Left            =   3120
      TabIndex        =   27
      Top             =   3120
      Width           =   1215
   End
   Begin VB.Label lblSalida 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Height          =   375
      Index           =   22
      Left            =   3120
      TabIndex        =   26
      Top             =   2760
      Width           =   1215
   End
   Begin VB.Label lblSalida 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Height          =   375
      Index           =   21
      Left            =   3120
      TabIndex        =   25
      Top             =   2400
      Width           =   1215
   End
   Begin VB.Label lblSalida 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Height          =   375
      Index           =   20
      Left            =   3120
      TabIndex        =   24
      Top             =   2040
      Width           =   1215
   End
   Begin VB.Label lblSalida 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Height          =   375
      Index           =   19
      Left            =   3120
      TabIndex        =   23
      Top             =   1680
      Width           =   1215
   End
   Begin VB.Label lblSalida 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Height          =   375
      Index           =   18
      Left            =   3120
      TabIndex        =   22
      Top             =   1320
      Width           =   1215
   End
   Begin VB.Label lblSalida 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Height          =   375
      Index           =   17
      Left            =   3120
      TabIndex        =   21
      Top             =   960
      Width           =   1215
   End
   Begin VB.Label lblSalida 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Height          =   375
      Index           =   16
      Left            =   3120
      TabIndex        =   20
      Top             =   600
      Width           =   1215
   End
   Begin VB.Label Label3 
      Caption         =   "Vector Original"
      Height          =   375
      Left            =   3120
      TabIndex        =   19
      Top             =   120
      Width           =   1095
   End
   Begin VB.Label Label2 
      Caption         =   "Repeticiones"
      Height          =   375
      Left            =   1920
      TabIndex        =   18
      Top             =   120
      Width           =   1095
   End
   Begin VB.Label Label1 
      Caption         =   "Vector ordenado"
      Height          =   375
      Left            =   480
      TabIndex        =   17
      Top             =   120
      Width           =   1335
   End
   Begin VB.Label lblSalida 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Height          =   375
      Index           =   15
      Left            =   1800
      TabIndex        =   16
      Top             =   3120
      Width           =   1215
   End
   Begin VB.Label lblSalida 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Height          =   375
      Index           =   14
      Left            =   1800
      TabIndex        =   15
      Top             =   2760
      Width           =   1215
   End
   Begin VB.Label lblSalida 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Height          =   375
      Index           =   13
      Left            =   1800
      TabIndex        =   14
      Top             =   2400
      Width           =   1215
   End
   Begin VB.Label lblSalida 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Height          =   375
      Index           =   12
      Left            =   1800
      TabIndex        =   13
      Top             =   2040
      Width           =   1215
   End
   Begin VB.Label lblSalida 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Height          =   375
      Index           =   11
      Left            =   1800
      TabIndex        =   12
      Top             =   1680
      Width           =   1215
   End
   Begin VB.Label lblSalida 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Height          =   375
      Index           =   10
      Left            =   1800
      TabIndex        =   11
      Top             =   1320
      Width           =   1215
   End
   Begin VB.Label lblSalida 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Height          =   375
      Index           =   9
      Left            =   1800
      TabIndex        =   10
      Top             =   960
      Width           =   1215
   End
   Begin VB.Label lblSalida 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Height          =   375
      Index           =   8
      Left            =   1800
      TabIndex        =   9
      Top             =   600
      Width           =   1215
   End
   Begin VB.Label lblSalida 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Height          =   375
      Index           =   7
      Left            =   480
      TabIndex        =   7
      Top             =   3120
      Width           =   1215
   End
   Begin VB.Label lblSalida 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Height          =   375
      Index           =   6
      Left            =   480
      TabIndex        =   6
      Top             =   2760
      Width           =   1215
   End
   Begin VB.Label lblSalida 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Height          =   375
      Index           =   5
      Left            =   480
      TabIndex        =   5
      Top             =   2400
      Width           =   1215
   End
   Begin VB.Label lblSalida 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Height          =   375
      Index           =   4
      Left            =   480
      TabIndex        =   4
      Top             =   2040
      Width           =   1215
   End
   Begin VB.Label lblSalida 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Height          =   375
      Index           =   3
      Left            =   480
      TabIndex        =   3
      Top             =   1680
      Width           =   1215
   End
   Begin VB.Label lblSalida 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Height          =   375
      Index           =   2
      Left            =   480
      TabIndex        =   2
      Top             =   1320
      Width           =   1215
   End
   Begin VB.Label lblSalida 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Height          =   375
      Index           =   1
      Left            =   480
      TabIndex        =   1
      Top             =   960
      Width           =   1215
   End
   Begin VB.Label lblSalida 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Height          =   375
      Index           =   0
      Left            =   480
      TabIndex        =   0
      Top             =   600
      Width           =   1215
   End
   Begin VB.Label lblSalida 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Height          =   375
      Index           =   30
      Left            =   4440
      TabIndex        =   35
      Top             =   2760
      Width           =   1215
   End
   Begin VB.Label lblSalida 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Height          =   375
      Index           =   29
      Left            =   4440
      TabIndex        =   34
      Top             =   2400
      Width           =   1215
   End
   Begin VB.Label lblSalida 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Height          =   375
      Index           =   28
      Left            =   4440
      TabIndex        =   33
      Top             =   2040
      Width           =   1215
   End
   Begin VB.Label lblSalida 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Height          =   375
      Index           =   27
      Left            =   4440
      TabIndex        =   32
      Top             =   1680
      Width           =   1215
   End
   Begin VB.Label lblSalida 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Height          =   375
      Index           =   26
      Left            =   4440
      TabIndex        =   31
      Top             =   1320
      Width           =   1215
   End
   Begin VB.Label lblSalida 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Height          =   375
      Index           =   25
      Left            =   4440
      TabIndex        =   30
      Top             =   960
      Width           =   1215
   End
   Begin VB.Label lblSalida 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Height          =   375
      Index           =   24
      Left            =   4440
      TabIndex        =   29
      Top             =   600
      Width           =   1215
   End
   Begin VB.Label lblSalida 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Height          =   375
      Index           =   31
      Left            =   4440
      TabIndex        =   36
      Top             =   3120
      Width           =   1215
   End
End
Attribute VB_Name = "frmTp8"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Private Sub Cargar(ByRef vector() As Byte)
Dim byteX As Byte
For byteX = 0 To 7
    vector(byteX) = Fix((0 - 10 + 1) * Rnd + 10)
Next byteX
End Sub
Private Sub Original(ByRef vector() As Byte, ByRef vector2() As Byte)
Dim byteX As Byte
For byteX = 0 To 7
    vector2(byteX) = vector(byteX)
Next byteX
End Sub
Private Sub Mostrar(ByRef vector() As Byte, ByRef Vectorrepeticion() As Byte, ByRef vectororiginal() As Byte, ByRef vectorordenado() As Byte)
Dim byteX As Byte
For byteX = 0 To 7
    lblSalida(byteX).Caption = Val(vector(byteX))
Next byteX
For byteX = 8 To 15
    lblSalida(byteX).Caption = Vectorrepeticion(byteX - 8)
Next byteX
For byteX = 16 To 23
    lblSalida(byteX).Caption = vectororiginal(byteX - 16)
Next byteX
For byteX = 24 To 31
    lblSalida(byteX).Caption = vectorordenado(byteX - 24)
Next byteX
End Sub
Private Sub Masrepetido(ByRef vector() As Byte, ByRef Vectorrepeticion() As Byte)
Dim byteX As Byte
Dim byteY As Byte
For byteX = 0 To 7
    For byteY = 0 To 7
        If vector(byteY) = vector(byteX) Then Vectorrepeticion(byteX) = Vectorrepeticion(byteX) + 1
    Next byteY
Next byteX
End Sub
Private Sub swap(ByRef vntA As Variant, ByRef vntB As Variant)
Dim vntAux As Variant
vntAux = vntA
vntA = vntB
vntB = vntAux
End Sub
Private Sub Ordenar_repeticion(ByRef vector() As Byte, ByRef vector2() As Byte)
Dim byteX As Byte
Dim byteY As Byte
For byteX = 0 To 6
    For byteY = byteX + 1 To 7
        If vector(byteY) > vector(byteX) Then
            swap vector(byteY), vector(byteX)
            swap vector2(byteY), vector2(byteX)
        End If
    Next byteY
Next byteX
End Sub
Private Sub Ordenar_repetidos(ByRef vector() As Byte, ByRef vectorrep() As Byte, ByRef vectorsalida() As Byte)
Dim byteX As Byte
Dim cont As Byte
For byteX = 0 To 7
    If vectorrep(byteX) > 1 Then
        vectorsalida(cont) = vector(byteX)
        cont = cont + 1
    End If
Next byteX
Dim byteY As Byte
For byteX = 0 To 6
    For byteY = byteX + 1 To 7
        If vectorsalida(byteY) < vectorsalida(byteX) Then
            swap vectorsalida(byteY), vectorsalida(byteX)
        End If
    Next byteY
Next byteX
End Sub

Private Sub cmdHacer_Click()
Dim vector1(7) As Byte
Dim vector2(7) As Byte
Dim Vectorrepeticion(7) As Byte
Dim vectorordenados(7) As Byte
Cargar vector1()
Original vector1(), vector2()
Masrepetido vector1(), Vectorrepeticion()
Ordenar_repeticion Vectorrepeticion(), vector1()
Ordenar_repetidos vector1(), Vectorrepeticion(), vectorordenados()
Mostrar vector1(), Vectorrepeticion(), vector2(), vectorordenados()
End Sub

Private Sub cmdSalir_Click()
Form_Unload 0
End Sub

Private Sub Form_Load()
Randomize Timer
End Sub

Private Sub Form_Unload(Cancel As Integer)
End
End Sub

