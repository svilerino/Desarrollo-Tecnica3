VERSION 5.00
Begin VB.Form frmTp9 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Tp9"
   ClientHeight    =   6420
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   2085
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   6420
   ScaleWidth      =   2085
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdSalir 
      Cancel          =   -1  'True
      Caption         =   "&Salir"
      Height          =   495
      Left            =   240
      TabIndex        =   11
      Top             =   5760
      Width           =   1695
   End
   Begin VB.CommandButton cmdHacer 
      Caption         =   "&Llenar"
      Height          =   495
      Left            =   240
      TabIndex        =   10
      Top             =   5160
      Width           =   1695
   End
   Begin VB.Label lblSalida 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      BorderStyle     =   1  'Fixed Single
      ForeColor       =   &H80000008&
      Height          =   375
      Index           =   9
      Left            =   240
      TabIndex        =   9
      Top             =   4560
      Width           =   1695
   End
   Begin VB.Label lblSalida 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      BorderStyle     =   1  'Fixed Single
      ForeColor       =   &H80000008&
      Height          =   375
      Index           =   8
      Left            =   240
      TabIndex        =   8
      Top             =   4080
      Width           =   1695
   End
   Begin VB.Label lblSalida 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      BorderStyle     =   1  'Fixed Single
      ForeColor       =   &H80000008&
      Height          =   375
      Index           =   7
      Left            =   240
      TabIndex        =   7
      Top             =   3600
      Width           =   1695
   End
   Begin VB.Label lblSalida 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      BorderStyle     =   1  'Fixed Single
      ForeColor       =   &H80000008&
      Height          =   375
      Index           =   6
      Left            =   240
      TabIndex        =   6
      Top             =   3120
      Width           =   1695
   End
   Begin VB.Label lblSalida 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      BorderStyle     =   1  'Fixed Single
      ForeColor       =   &H80000008&
      Height          =   375
      Index           =   5
      Left            =   240
      TabIndex        =   5
      Top             =   2640
      Width           =   1695
   End
   Begin VB.Label lblSalida 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      BorderStyle     =   1  'Fixed Single
      ForeColor       =   &H80000008&
      Height          =   375
      Index           =   4
      Left            =   240
      TabIndex        =   4
      Top             =   2160
      Width           =   1695
   End
   Begin VB.Label lblSalida 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      BorderStyle     =   1  'Fixed Single
      ForeColor       =   &H80000008&
      Height          =   375
      Index           =   3
      Left            =   240
      TabIndex        =   3
      Top             =   1680
      Width           =   1695
   End
   Begin VB.Label lblSalida 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      BorderStyle     =   1  'Fixed Single
      ForeColor       =   &H80000008&
      Height          =   375
      Index           =   2
      Left            =   240
      TabIndex        =   2
      Top             =   1200
      Width           =   1695
   End
   Begin VB.Label lblSalida 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      BorderStyle     =   1  'Fixed Single
      ForeColor       =   &H80000008&
      Height          =   375
      Index           =   1
      Left            =   240
      TabIndex        =   1
      Top             =   720
      Width           =   1695
   End
   Begin VB.Label lblSalida 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      BorderStyle     =   1  'Fixed Single
      ForeColor       =   &H80000008&
      Height          =   375
      Index           =   0
      Left            =   240
      TabIndex        =   0
      Top             =   240
      Width           =   1695
   End
End
Attribute VB_Name = "frmTp9"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Private Function Repetido(ByRef vector() As Byte, ByVal byteNumero As Byte) As Boolean
Dim byteY As Byte: byteY = 0
Dim boolrepetido As Boolean: boolrepetido = False
Do: DoEvents
    If byteNumero = vector(byteY) Then boolrepetido = True
    byteY = byteY + 1
Loop Until byteY = 9 Or boolrepetido = True
Repetido = boolrepetido
End Function
Private Sub Cargar(ByRef vector() As Byte)
Dim byteX As Byte
'Dim byteY As Byte
Dim byteNumero As Byte
Dim boolrepetido As Boolean
For byteX = 0 To 9
    byteNumero = Fix(((11 - 1) + 1) * Rnd + 1)
    If Not Repetido(vector(), byteNumero) Then
        vector(byteX) = byteNumero
    Else
    Do: DoEvents
        byteNumero = Fix(((11 - 1) + 1) * Rnd + 1)
        'byteY = 0
        If Not Repetido(vector(), byteNumero) Then vector(byteX) = byteNumero
        'byteY = byteY + 1
    Loop While Repetido(vector(), byteNumero) 'Or byteY = 9
    End If
Next byteX
End Sub
Private Sub swap(ByRef vntA As Variant, ByRef vntB As Variant)
Dim vntAux As Variant
vntAux = vntA
vntA = vntB
vntB = vntAux
End Sub
Private Sub Ordenar(ByRef vector() As Byte)
Dim k As Byte
Dim m As Byte
For k = 0 To 8
    For m = k + 1 To 9
        If vector(k) > vector(m) Then swap vector(k), vector(m)
    Next m
Next k
End Sub

Private Sub Mostrar(ByRef vector() As Byte)
Dim byteX
For byteX = 0 To 9
    lblSalida(byteX) = Str(vector(byteX))
Next byteX
End Sub

Private Sub cmdHacer_Click()
Dim byteMiVector(9) As Byte
Cargar byteMiVector()
Ordenar byteMiVector
Mostrar byteMiVector()
End Sub

Private Sub cmdSalir_Click()
Form_Unload 1
End Sub

Private Sub Form_Load()
Randomize Timer
End Sub

Private Sub Form_Unload(Cancel As Integer)
End
End Sub
