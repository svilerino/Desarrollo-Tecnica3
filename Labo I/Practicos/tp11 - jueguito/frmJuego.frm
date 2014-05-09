VERSION 5.00
Begin VB.Form frmJuego 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Juego: Buenos, Malos y Regulares"
   ClientHeight    =   7485
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   6225
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   7485
   ScaleWidth      =   6225
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton cmdReglas 
      Caption         =   "Reglas"
      Height          =   735
      Left            =   3600
      TabIndex        =   21
      Top             =   5160
      Width           =   2535
   End
   Begin VB.CommandButton Command1 
      Caption         =   "0"
      Enabled         =   0   'False
      Height          =   615
      Index           =   9
      Left            =   2400
      TabIndex        =   19
      Top             =   5280
      Width           =   615
   End
   Begin VB.CommandButton Command1 
      Caption         =   "6"
      Enabled         =   0   'False
      Height          =   615
      Index           =   8
      Left            =   1680
      TabIndex        =   17
      Top             =   6000
      Width           =   615
   End
   Begin VB.CommandButton Command1 
      Caption         =   "5"
      Enabled         =   0   'False
      Height          =   615
      Index           =   7
      Left            =   960
      TabIndex        =   16
      Top             =   6000
      Width           =   615
   End
   Begin VB.CommandButton Command1 
      Caption         =   "4"
      Enabled         =   0   'False
      Height          =   615
      Index           =   6
      Left            =   240
      TabIndex        =   15
      Top             =   6000
      Width           =   615
   End
   Begin VB.CommandButton Command1 
      Caption         =   "9"
      Enabled         =   0   'False
      Height          =   615
      Index           =   5
      Left            =   1680
      TabIndex        =   14
      Top             =   6720
      Width           =   615
   End
   Begin VB.CommandButton Command1 
      Caption         =   "7"
      Enabled         =   0   'False
      Height          =   615
      Index           =   4
      Left            =   240
      TabIndex        =   13
      Top             =   6720
      Width           =   615
   End
   Begin VB.CommandButton Command1 
      Caption         =   "3"
      Enabled         =   0   'False
      Height          =   615
      Index           =   3
      Left            =   1680
      TabIndex        =   12
      Top             =   5280
      Width           =   615
   End
   Begin VB.CommandButton Command1 
      Caption         =   "2"
      Enabled         =   0   'False
      Height          =   615
      Index           =   2
      Left            =   960
      TabIndex        =   11
      Top             =   5280
      Width           =   615
   End
   Begin VB.CommandButton Command1 
      Caption         =   "1"
      Enabled         =   0   'False
      Height          =   615
      Index           =   1
      Left            =   240
      TabIndex        =   10
      Top             =   5280
      Width           =   615
   End
   Begin VB.CommandButton Command1 
      Caption         =   "8"
      Enabled         =   0   'False
      Height          =   615
      Index           =   0
      Left            =   960
      TabIndex        =   9
      Top             =   6720
      Width           =   615
   End
   Begin VB.TextBox txtIngreso 
      BackColor       =   &H00C0C0C0&
      Height          =   495
      Left            =   120
      Locked          =   -1  'True
      MaxLength       =   4
      TabIndex        =   7
      Top             =   4440
      Width           =   1215
   End
   Begin VB.CommandButton cmdJugar 
      Caption         =   "&Jugar"
      Enabled         =   0   'False
      Height          =   495
      Left            =   1440
      TabIndex        =   6
      Top             =   4440
      Width           =   975
   End
   Begin VB.CommandButton cmdGenerar 
      Caption         =   "&Generar Numero"
      Height          =   495
      Left            =   2520
      TabIndex        =   5
      Top             =   4440
      Width           =   1095
   End
   Begin VB.ListBox lstResultado 
      Height          =   3570
      Left            =   3120
      TabIndex        =   3
      Top             =   120
      Width           =   3015
   End
   Begin VB.ListBox lstIngresados 
      Height          =   3570
      Left            =   120
      TabIndex        =   2
      Top             =   120
      Width           =   2895
   End
   Begin VB.CommandButton cmdLimpiar 
      Caption         =   "&Limpiar y Aleatorio"
      Height          =   495
      Left            =   3720
      TabIndex        =   1
      Top             =   4440
      Width           =   1215
   End
   Begin VB.CommandButton cmdSalir 
      Cancel          =   -1  'True
      Caption         =   "&Salir"
      Height          =   495
      Left            =   5040
      TabIndex        =   0
      Top             =   4440
      Width           =   1095
   End
   Begin VB.Frame Frame1 
      Caption         =   "Numeros a Ingresar"
      Height          =   2415
      Left            =   120
      TabIndex        =   18
      Top             =   5040
      Width           =   3375
      Begin VB.CommandButton Command2 
         Caption         =   "Activar teclado Numerico"
         Height          =   1335
         Left            =   2280
         TabIndex        =   20
         Top             =   960
         Width           =   975
      End
   End
   Begin VB.Label Label1 
      Caption         =   $"frmJuego.frx":0000
      Height          =   1575
      Left            =   3600
      TabIndex        =   22
      Top             =   5880
      Width           =   2535
   End
   Begin VB.Label lblAleatorio 
      Height          =   375
      Left            =   4920
      TabIndex        =   8
      Top             =   3960
      Width           =   1215
   End
   Begin VB.Label lblIntentos 
      Height          =   375
      Left            =   120
      TabIndex        =   4
      Top             =   3960
      Width           =   4575
   End
End
Attribute VB_Name = "frmJuego"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Private Numero As Integer
Private Function Aleatorio(ByVal Minimo As Integer, ByVal Maximo As Integer) As Integer
Dim auxi1(3) As Byte, boolesta As Boolean, strSalida As String, auxi2 As String
Dim byteX As Byte, byteY As Byte
Do: DoEvents
boolesta = False
auxi2 = Trim(Str(Fix(((Minimo - Maximo) + 1) * Rnd + Maximo)))
For byteX = 1 To Len(auxi2)
    auxi1(byteX - 1) = Mid(auxi2, byteX, 1)
Next byteX
For byteX = 0 To 2
    For byteY = byteX + 1 To 3
        If auxi1(byteX) = auxi1(byteY) Then boolesta = True
    Next byteY
Next byteX
Loop While boolesta = True Or Len(auxi2) < 4 Or Mid(auxi2, 1, 1) = "0"
For byteX = 0 To 3
    strSalida = strSalida & Trim(Str(auxi1(byteX)))
Next byteX
Aleatorio = Val(strSalida)
End Function
Private Sub Jugar(ByVal intNumeroIngresado As Integer)
If Len(Trim(Str(intNumeroIngresado))) <> 4 Or Mid(Trim(Str(intNumeroIngresado)), 1, 1) = "0" Then
    MsgBox "Numero de 4 cifras !"
Else
    lblIntentos.Caption = "intentos " & Str(Val(lblIntentos.Caption) + 1)
    cmdGenerar.Enabled = False
    Dim auxi(3) As Byte, auxi2(3) As Byte
    Dim byteX As Byte, byteY As Byte, byteBien As Byte, byteMal As Byte, byteReg As Byte
    byteMal = 0: byteBien = 0: byteReg = 0: byteX = 0: byteY = 0
    For byteX = 0 To 3
        auxi(byteX) = Val(Mid(Trim(Str(Numero)), byteX + 1, 1))
    Next byteX
    For byteX = 0 To 3
        auxi2(byteX) = Val(Mid(Trim(Str(intNumeroIngresado)), byteX + 1, 1))
    Next byteX
    For byteX = 0 To 3
        For byteY = 0 To 3
            If auxi(byteX) = auxi2(byteY) Then
                If byteX = byteY Then
                    byteBien = byteBien + 1
                Else
                    byteReg = byteReg + 1
                End If
            End If
        Next byteY
    Next byteX
    byteMal = 4 - (byteBien + byteReg)
    lstIngresados.AddItem "Numero Ingresado:" & txtIngreso.Text
    lstResultado.AddItem "Mal" & Str(byteMal) & " Regular" & Str(byteReg) & " Bien" & Str(byteBien)
    If byteBien = 4 Then
        cmdGenerar.Enabled = True
        cmdJugar.Enabled = True
        MsgBox "Ganaste !! :D "
        cmdLimpiar_Click
    End If
    txtIngreso.Text = ""
    Command2_Click
    Command1(9).Enabled = False
End If
End Sub

Private Sub cmdGenerar_Click()
Numero = Aleatorio(0, 9999)
lblAleatorio.Caption = Str(Numero)
cmdJugar.Enabled = True
End Sub

Private Sub cmdJugar_Click()
Jugar Val(txtIngreso.Text)
End Sub

Private Sub cmdLimpiar_Click()
lstResultado.Clear
lstIngresados.Clear
txtIngreso.Text = ""
lblIntentos.Caption = ""
Numero = Aleatorio(0, 9999)
lblAleatorio.Caption = Str(Numero)
End Sub

Private Sub cmdReglas_Click()
MsgBox "Presione Generar numero al azar,luego, Activar Teclado, Ingrese los numeros con el teclado numerico, y presione jugar. en las listas le apareceran los resultados de su ingreso."
End Sub

Private Sub cmdSalir_Click()
Form_Unload 1
End Sub

Private Sub Command1_Click(Index As Integer)
Select Case Index
    Case Is = 1
        txtIngreso.Text = txtIngreso.Text & "1"
    Case Is = 2
        txtIngreso.Text = txtIngreso.Text & "2"
    Case Is = 3
        txtIngreso.Text = txtIngreso.Text & "3"
    Case Is = 6
        txtIngreso.Text = txtIngreso.Text & "4"
    Case Is = 7
        txtIngreso.Text = txtIngreso.Text & "5"
    Case Is = 8
        txtIngreso.Text = txtIngreso.Text & "6"
    Case Is = 4
        txtIngreso.Text = txtIngreso.Text & "7"
    Case Is = 0
        txtIngreso.Text = txtIngreso.Text & "8"
    Case Is = 5
        txtIngreso.Text = txtIngreso.Text & "9"
    Case Is = 9
        txtIngreso.Text = txtIngreso.Text & "0"
    Case Else
        txtIngreso.Text = txtIngreso.Text & "0"
End Select
Command1(Index).Enabled = False
End Sub

Private Sub Command2_Click()
Dim byteX As Byte
For byteX = 0 To 8
    Command1(byteX).Enabled = True
Next byteX
End Sub

Private Sub Form_Load()
Randomize Timer
End Sub

Private Sub Form_Unload(Cancel As Integer)
MsgBox "Hasta luego vicioso ! :)"
End
End Sub

Private Sub txtIngreso_Change()
If Not Len(txtIngreso.Text) = 0 Then Command1(9).Enabled = True
End Sub
