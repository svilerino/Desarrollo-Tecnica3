VERSION 5.00
Begin VB.Form frmTp4 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Tp4"
   ClientHeight    =   6375
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   10665
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Moveable        =   0   'False
   ScaleHeight     =   6375
   ScaleWidth      =   10665
   StartUpPosition =   2  'CenterScreen
   Begin VB.TextBox txtExponente 
      BackColor       =   &H8000000F&
      Height          =   855
      Left            =   7200
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      TabIndex        =   24
      Top             =   4440
      Width           =   3375
   End
   Begin VB.ListBox lstDivisores 
      BackColor       =   &H8000000F&
      Height          =   2985
      Left            =   7800
      TabIndex        =   23
      Top             =   1080
      Width           =   2415
   End
   Begin VB.ListBox lstDividido 
      BackColor       =   &H8000000F&
      Height          =   2985
      Left            =   5400
      TabIndex        =   22
      Top             =   1080
      Width           =   2175
   End
   Begin VB.CommandButton cmdFactorear 
      Caption         =   "&Factorear"
      Height          =   495
      Left            =   8280
      TabIndex        =   6
      Top             =   360
      Width           =   1935
   End
   Begin VB.TextBox txtFactorear 
      BackColor       =   &H00FFFFFF&
      Height          =   495
      Left            =   6840
      TabIndex        =   5
      Top             =   360
      Width           =   1215
   End
   Begin VB.CommandButton cmdMCM 
      Caption         =   "C&alcular MCM"
      Height          =   495
      Left            =   3120
      TabIndex        =   4
      Top             =   4800
      Width           =   1575
   End
   Begin VB.CommandButton cmdMCD 
      Caption         =   "&Calcular MCD"
      Height          =   495
      Left            =   3120
      TabIndex        =   3
      Top             =   3840
      Width           =   1575
   End
   Begin VB.TextBox txtMCM 
      BackColor       =   &H8000000F&
      Height          =   495
      Left            =   2280
      Locked          =   -1  'True
      TabIndex        =   19
      Top             =   4800
      Width           =   615
   End
   Begin VB.TextBox txtMCD 
      BackColor       =   &H8000000F&
      Height          =   495
      Left            =   2280
      Locked          =   -1  'True
      TabIndex        =   18
      Top             =   3720
      Width           =   615
   End
   Begin VB.CommandButton cmdSimplificar 
      Caption         =   "S&implificar"
      Height          =   495
      Left            =   2640
      TabIndex        =   2
      Top             =   2040
      Width           =   1935
   End
   Begin VB.CommandButton cmdSalir 
      Cancel          =   -1  'True
      Caption         =   "&Salir"
      Height          =   495
      Left            =   4440
      TabIndex        =   7
      Top             =   5640
      Width           =   1935
   End
   Begin VB.TextBox txtSalidaDeno 
      BackColor       =   &H8000000F&
      Height          =   495
      Left            =   1440
      Locked          =   -1  'True
      TabIndex        =   12
      Top             =   2880
      Width           =   495
   End
   Begin VB.TextBox txtSalidaNume 
      BackColor       =   &H8000000F&
      Height          =   495
      Left            =   1440
      Locked          =   -1  'True
      TabIndex        =   11
      Top             =   2160
      Width           =   495
   End
   Begin VB.TextBox txtDeno 
      Height          =   495
      Left            =   1440
      TabIndex        =   1
      Top             =   960
      Width           =   495
   End
   Begin VB.TextBox txtNume 
      Height          =   495
      Left            =   1440
      TabIndex        =   0
      Top             =   240
      Width           =   495
   End
   Begin VB.Line Line12 
      X1              =   5160
      X2              =   10680
      Y1              =   4080
      Y2              =   4080
   End
   Begin VB.Line Line11 
      X1              =   5160
      X2              =   10680
      Y1              =   960
      Y2              =   960
   End
   Begin VB.Line Line10 
      X1              =   7680
      X2              =   7680
      Y1              =   960
      Y2              =   4080
   End
   Begin VB.Label Label10 
      Caption         =   "El factoreo es:"
      Height          =   375
      Left            =   5760
      TabIndex        =   25
      Top             =   4560
      Width           =   1095
   End
   Begin VB.Line Line9 
      X1              =   5160
      X2              =   5160
      Y1              =   0
      Y2              =   5400
   End
   Begin VB.Label Label9 
      Caption         =   "Factorea Numero"
      Height          =   255
      Left            =   5280
      TabIndex        =   21
      Top             =   480
      Width           =   1455
   End
   Begin VB.Line Line8 
      X1              =   0
      X2              =   10680
      Y1              =   5400
      Y2              =   5400
   End
   Begin VB.Label Label8 
      Caption         =   "Ingrese una Fraccion"
      Height          =   255
      Left            =   2520
      TabIndex        =   20
      Top             =   360
      Width           =   1575
   End
   Begin VB.Line Line7 
      X1              =   0
      X2              =   5160
      Y1              =   4560
      Y2              =   4560
   End
   Begin VB.Label Label7 
      Caption         =   "Minimo Comun Multiplo"
      Height          =   255
      Left            =   120
      TabIndex        =   17
      Top             =   4920
      Width           =   1695
   End
   Begin VB.Label Label6 
      Caption         =   "Maximo Comun Divisor"
      Height          =   255
      Left            =   120
      TabIndex        =   16
      Top             =   3840
      Width           =   1695
   End
   Begin VB.Line Line6 
      X1              =   0
      X2              =   5160
      Y1              =   3600
      Y2              =   3600
   End
   Begin VB.Label lblIrreducible 
      Height          =   375
      Left            =   2520
      TabIndex        =   15
      Top             =   2880
      Width           =   2055
   End
   Begin VB.Line Line5 
      X1              =   1320
      X2              =   2040
      Y1              =   2760
      Y2              =   2760
   End
   Begin VB.Line Line4 
      X1              =   120
      X2              =   1080
      Y1              =   2760
      Y2              =   2760
   End
   Begin VB.Label Label5 
      Caption         =   "Denominador"
      Height          =   255
      Left            =   120
      TabIndex        =   14
      Top             =   3000
      Width           =   1095
   End
   Begin VB.Label Label4 
      Caption         =   "Numerador"
      Height          =   255
      Left            =   120
      TabIndex        =   13
      Top             =   2400
      Width           =   1095
   End
   Begin VB.Label Label3 
      Caption         =   "Simplificado"
      Height          =   255
      Left            =   120
      TabIndex        =   10
      Top             =   1920
      Width           =   1575
   End
   Begin VB.Line Line3 
      X1              =   0
      X2              =   5160
      Y1              =   1680
      Y2              =   1680
   End
   Begin VB.Line Line2 
      X1              =   1320
      X2              =   2040
      Y1              =   840
      Y2              =   840
   End
   Begin VB.Line Line1 
      X1              =   120
      X2              =   1200
      Y1              =   840
      Y2              =   840
   End
   Begin VB.Label Label2 
      Caption         =   "Denominador"
      Height          =   255
      Left            =   120
      TabIndex        =   9
      Top             =   960
      Width           =   1215
   End
   Begin VB.Label Label1 
      Caption         =   "Numerador"
      Height          =   255
      Left            =   120
      TabIndex        =   8
      Top             =   240
      Width           =   1335
   End
End
Attribute VB_Name = "frmTp4"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdFactorear_Click()
lstDividido.Clear
lstDivisores.Clear
Dim integerNume As Integer: integerNume = Val(txtFactorear.Text)
Dim integerDivisor As Integer: integerDivisor = 1
'Dim byteFor As Byte
'Dim strSalida As String
txtExponente.Text = txtFactorear.Text & "="
Do: DoEvents
    If integerNume Mod integerDivisor = 0 Then
        lstDividido.AddItem Str(integerNume / (integerDivisor))
        If Not integerDivisor = 1 Then
            lstDivisores.AddItem Str(integerDivisor)
            txtExponente.Text = txtExponente.Text & Trim(Str(integerDivisor) & ".")
        End If
        integerNume = integerNume / integerDivisor
        integerDivisor = 1
    End If
integerDivisor = integerDivisor + 1
Loop While integerDivisor <= integerNume
'For byteFor = 1 To (Len(txtExponente.Text)) - 1
 '   strSalida = strSalida & Mid(txtExponente.Text, byteFor, 1)
'Next byteFor
'txtExponente.Text = strSalida
txtExponente.Text = Left(txtExponente.Text, (Len(txtExponente.Text)) - 1)
End Sub

Private Sub cmdMCD_Click()
Dim integerDeno As Integer: integerDeno = Val(txtDeno.Text)
Dim integerNume As Integer: integerNume = Val(txtNume.Text)
Dim integerDivi As Integer: integerDivi = 1
Dim integerMenor As Integer
Dim integerMCD As Integer
Do: DoEvents
    If integerNume < integerDeno Then
        integerMenor = integerNume
    Else
        integerMenor = integerDeno
    End If
    If integerNume Mod integerDivi = 0 And integerDeno Mod integerDivi = 0 Then
        integerMCD = integerDivi
    End If
integerDivi = integerDivi + 1
Loop While Not integerDivi > integerMenor
txtMCD.Text = Str(integerMCD)
End Sub

Private Sub cmdMCM_Click()
Dim integerDeno As Integer: integerDeno = Val(txtDeno.Text)
Dim integerNume As Integer: integerNume = Val(txtNume.Text)
Dim integerDivi As Integer: integerDivi = 1
Dim integerMenor As Integer
Dim integerMCD As Integer
Do: DoEvents
    If integerNume < integerDeno Then
        integerMenor = integerNume
    Else
        integerMenor = integerDeno
    End If
    If integerNume Mod integerDivi = 0 And integerDeno Mod integerDivi = 0 Then
        integerMCD = integerDivi
    End If
integerDivi = integerDivi + 1
Loop While Not integerDivi > integerMenor
txtMCM.Text = Str((integerDeno * integerNume) / integerMCD)
End Sub

Private Sub cmdSalir_Click()
End
End Sub

Private Sub cmdSimplificar_Click()
If Val(txtNume.Text) = 0 Or Val(txtDeno.Text) = 0 Or Val(txtFactorear.Text) = 0 Then MsgBox "Ingrese un NUMERO!"
lblIrreducible.Caption = ""
Dim integerDeno As Integer: integerDeno = Val(txtDeno.Text)
Dim integerNume As Integer: integerNume = Val(txtNume.Text)
Dim integerDivi As Integer: integerDivi = 2
Dim integerMenor As Integer
Do: DoEvents
    If integerNume < integerDeno Then
        integerMenor = integerNume
    Else
        integerMenor = integerDeno
    End If
    If integerNume Mod integerDivi = 0 And integerDeno Mod integerDivi = 0 Then
        integerNume = integerNume / integerDivi
        integerDeno = integerDeno / integerDivi
    Else
        integerDivi = integerDivi + 1
    End If
Loop While Not integerDivi > integerMenor
txtSalidaNume.Text = Str(integerNume)
txtSalidaDeno.Text = Str(integerDeno)
If Val(txtDeno.Text) = integerDeno And Val(txtNume.Text) = integerNume Then
    MsgBox "fraccion irreducible !!", vbCritical, "Simplificacion de Fraccion"
    lblIrreducible.Caption = "fraccion irreducible !!"
End If
End Sub

