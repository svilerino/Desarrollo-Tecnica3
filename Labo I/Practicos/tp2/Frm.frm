VERSION 5.00
Begin VB.Form Frmtp2 
   BackColor       =   &H00C0C000&
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Numeros Primos"
   ClientHeight    =   7935
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   6585
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Moveable        =   0   'False
   ScaleHeight     =   7935
   ScaleWidth      =   6585
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.TextBox txtCantAmigos 
      BackColor       =   &H00C0C000&
      Height          =   495
      Left            =   2160
      TabIndex        =   8
      Top             =   3360
      Width           =   2535
   End
   Begin VB.CommandButton cmdAmigos 
      Caption         =   "Mostrar &Amigos"
      Height          =   735
      Left            =   4920
      TabIndex        =   9
      Top             =   3240
      Width           =   1335
   End
   Begin VB.TextBox txtCantPerf 
      BackColor       =   &H00C0C000&
      Height          =   495
      Left            =   2160
      TabIndex        =   6
      Top             =   2520
      Width           =   2535
   End
   Begin VB.CommandButton cmdXperf 
      Caption         =   "Primeros &X numeros perfectos"
      Height          =   735
      Left            =   4920
      TabIndex        =   7
      Top             =   2400
      Width           =   1335
   End
   Begin VB.TextBox txtXprim 
      BackColor       =   &H00C0C000&
      Height          =   495
      Left            =   2160
      TabIndex        =   4
      Top             =   1680
      Width           =   2535
   End
   Begin VB.CommandButton cmdPrimo2 
      Caption         =   "M&ostrar los primeros X primos"
      Height          =   735
      Left            =   4920
      TabIndex        =   5
      Top             =   1560
      Width           =   1335
   End
   Begin VB.TextBox txtX 
      BackColor       =   &H00C0C000&
      Height          =   495
      Left            =   2160
      TabIndex        =   2
      Top             =   960
      Width           =   2535
   End
   Begin VB.CommandButton cmdSalir 
      Cancel          =   -1  'True
      Caption         =   "&Salir"
      Height          =   735
      Left            =   4920
      TabIndex        =   11
      Top             =   4080
      Width           =   1335
   End
   Begin VB.CommandButton cmdPrimo 
      Caption         =   "&Mostrar la lista de primos de 0 a X"
      Height          =   675
      Left            =   4920
      TabIndex        =   3
      Top             =   840
      Width           =   1335
   End
   Begin VB.CommandButton cmdHacer 
      BackColor       =   &H00FF8080&
      Caption         =   "&Determinar si es primo."
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   675
      Left            =   4920
      TabIndex        =   1
      Top             =   120
      Width           =   1335
   End
   Begin VB.TextBox txtN 
      Alignment       =   2  'Center
      BackColor       =   &H00C0C000&
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   2160
      TabIndex        =   0
      Top             =   240
      Width           =   2535
   End
   Begin VB.Label Label5 
      BackColor       =   &H00C0C000&
      Caption         =   "Ingrese un Valor [0;2]"
      Height          =   375
      Left            =   120
      TabIndex        =   16
      Top             =   3480
      Width           =   1815
   End
   Begin VB.Label Label4 
      BackColor       =   &H00C0C000&
      Caption         =   "Ingrese un Valor [0;2]"
      Height          =   195
      Left            =   120
      TabIndex        =   15
      Top             =   2640
      Width           =   1695
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      BackColor       =   &H00C0C000&
      Caption         =   "Ingrese un valor [0;255]"
      Height          =   195
      Left            =   120
      TabIndex        =   14
      Top             =   1800
      Width           =   1680
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackColor       =   &H00C0C000&
      Caption         =   "Ingrese un Valor [0;254]"
      Height          =   195
      Left            =   120
      TabIndex        =   13
      Top             =   1080
      Width           =   1695
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackColor       =   &H00C0C000&
      Caption         =   "Ingrese numero aqui[0;254]"
      Height          =   195
      Left            =   120
      TabIndex        =   12
      Top             =   360
      Width           =   1935
   End
   Begin VB.Label lblsalida 
      Alignment       =   2  'Center
      BackColor       =   &H00C0C000&
      Height          =   1815
      Left            =   120
      TabIndex        =   10
      Top             =   5640
      Width           =   5655
   End
End
Attribute VB_Name = "Frmtp2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub cmdAmigos_Click()
lblsalida.Caption = ""
Dim byteCont: byteCont = 0
Dim intA As Integer
Dim intDivi As Integer
Dim intB As Integer
Dim intC As Integer
intA = 2
Do: DoEvents
    intB = 0
    For intDivi = 1 To intA / 2
        If intA Mod intDivi = 0 Then intB = intB + intDivi
    Next intDivi
    intC = 0
    For intDivi = 1 To intB / 2
        If intB Mod intDivi = 0 Then intC = intC + intDivi
    Next intDivi
    If intA = intC And intA < intB Then
        lblsalida.Caption = lblsalida.Caption & Str(intA) & " es amigo de" & Str(intB)
        byteCont = byteCont + 1
    End If
    intA = intA + 1
Loop While Not byteCont = 2
End Sub

Private Sub cmdPrimo_Click()
'borrado de errores anteriores
lblsalida.Caption = ""
'declaracion de variables y asignacion de sus valores
Dim byteN As Byte: byteN = 1
Dim byteX As Byte: byteX = Val(txtX.Text)
Dim byteCount As Byte: byteCount = 0
Dim byteDivi As Byte
For byteN = 1 To byteX
    DoEvents 'para que responda a otros eventos
    'resetear contador y divisores
    byteCount = 0
    'estructura de repeticion en busca de divisores de "N"
    For byteDivi = 1 To Fix(byteN ^ 0.5) 'busca divisores de 1 a la parte entera de la raiz cuadrada de "N"
        DoEvents
        If byteN Mod byteDivi = 0 Then ' si tiene divisor exacto
            byteCount = byteCount + 1
        End If
    Next byteDivi
If byteCount = 1 Then lblsalida.Caption = lblsalida.Caption & Str(byteN) & ";" ' si el numerio tiene un solo divisor
Next byteN
End Sub

Private Sub cmdHacer_Click()
'declaracion de variables y asignacion de valores
Dim byteN As Byte: byteN = Val(txtN.Text)
Dim byteCount As Byte: byteCount = 0
Dim byteDivi As Byte
'estructura de repeticion en busca de divisores de "N"
For byteDivi = 1 To Fix(byteN ^ 0.5) 'Busca divisores de 1 a la parte entera de raiz cuadrada de "N"
    DoEvents 'para que responda a otros eventos
    If byteN Mod byteDivi = 0 Then 'si tiene resto "0"
        byteCount = byteCount + 1 'aumentar 1 en el contador
    End If
Next byteDivi 'siguiente divisor hasta la parte entera de la raiz de "N"
If byteCount = 1 Then 'si el numero tiene solo divisor 1
    lblsalida.Caption = "El numero es primo"
Else 'si el numero tiene mas de un divisor entre 1 y la pte entera de la raiz
    lblsalida.Caption = "El numero no es primo"
End If
End Sub

Private Sub cmdSalir_Click()
End
End Sub

Private Sub CmdPrimo2_Click()
lblsalida.Caption = ""
Dim byteXprim As Byte: byteXprim = Val(txtXprim.Text)
Dim byteNumero As Byte:
Dim byteDivi As Byte
Dim byteCountDivi As Byte
Dim byteCountPrim As Byte
byteNumero = 1
Do: DoEvents
    byteCountDivi = 0
    byteDivi = 1
        Do: DoEvents
            If byteNumero Mod byteDivi = 0 Then byteCountDivi = byteCountDivi + 1
            byteDivi = byteDivi + 1
        Loop While Not (byteDivi > Fix(byteNumero ^ 0.5 Or byteCountDivi = 2))
    If byteCountDivi = 1 Then
    byteCountPrim = byteCountPrim + 1
    lblsalida.Caption = lblsalida.Caption & ";" & byteNumero
    End If
    byteNumero = byteNumero + 1
Loop While Not (byteCountPrim = byteXprim)
End Sub



Private Sub Cmdxperf_Click()
lblsalida.Caption = ""
Dim byteCantperf As Byte: byteCantperf = 0
Dim byteDivi As Byte
Dim byteTotaldivisores As Byte: byteTotaldivisores = 0
Dim byteNumero As Byte: byteNumero = 1
Do: DoEvents
    byteDivi = 1
    byteNumero = byteNumero + 1
    byteTotaldivisores = 0
    Do: DoEvents
        If byteNumero Mod byteDivi = 0 Then
            byteTotaldivisores = byteTotaldivisores + byteDivi
        End If
        byteDivi = byteDivi + 1
    Loop While Not byteDivi > Fix(byteNumero / 2)
    If byteTotaldivisores = byteNumero Then
    lblsalida.Caption = lblsalida.Caption & " " & byteNumero
    byteCantperf = byteCantperf + 1
    End If
Loop While Not byteCantperf = Val(txtCantPerf.Text)
End Sub



