VERSION 5.00
Begin VB.Form frmTp3 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "tp3"
   ClientHeight    =   6075
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   9465
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   6075
   ScaleWidth      =   9465
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton cmdShift 
      Caption         =   "Shiftear la frase"
      Height          =   615
      Left            =   6720
      TabIndex        =   5
      Top             =   1080
      Width           =   2175
   End
   Begin VB.CommandButton cmdSalir 
      Cancel          =   -1  'True
      Caption         =   "Salir"
      Height          =   495
      Left            =   2880
      TabIndex        =   6
      Top             =   5280
      Width           =   3855
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Dar vuelta"
      Height          =   615
      Left            =   3480
      TabIndex        =   4
      Top             =   1080
      Width           =   2895
   End
   Begin VB.CommandButton cmdHacer 
      Caption         =   "Separar n y apellido"
      Height          =   615
      Left            =   360
      TabIndex        =   1
      Top             =   1080
      Width           =   2775
   End
   Begin VB.TextBox txtNapellido 
      Alignment       =   2  'Center
      Height          =   735
      Left            =   360
      TabIndex        =   0
      Top             =   120
      Width           =   8535
   End
   Begin VB.Label lblApellido 
      BorderStyle     =   1  'Fixed Single
      Height          =   1455
      Left            =   120
      TabIndex        =   3
      Top             =   3360
      Width           =   8895
   End
   Begin VB.Label lblNombre 
      BorderStyle     =   1  'Fixed Single
      Height          =   1335
      Left            =   120
      TabIndex        =   2
      Top             =   1800
      Width           =   8895
   End
End
Attribute VB_Name = "frmTp3"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub cmdHacer_Click()
lblNombre.Caption = "" 'limpia los labels de salida
lblApellido.Caption = ""
Dim x As Byte: x = 1 ' declaracion de variables
Do: DoEvents ' repetir
    lblNombre.Caption = lblNombre.Caption & Mid(txtNapellido.Text, x, 1) 'mostrar todos los caracteres uno por uno
    x = x + 1 ' aumentar contador de caracteres
Loop While Not Mid(txtNapellido.Text, x, 1) = " " 'hasta llegar al espacio
lblNombre.Caption = UCase(Mid(lblNombre.Caption, 1, 1)) & LCase(Mid(lblNombre.Caption, 2, Len(lblNombre.Caption) - 1)) 'capitalizar la primer letra y agregar el final de la palabra
Do: DoEvents ' repetir
     x = x + 1 'aumentar contador (x actual vale espacio)
    lblApellido.Caption = lblApellido.Caption & Mid(txtNapellido.Text, x, 1) 'pegar caracteres
Loop While Not x = Len(txtNapellido.Text) 'hasta llegar al final de la palabra
lblApellido.Caption = UCase(Mid(lblApellido.Caption, 1, 1)) & LCase(Mid(lblApellido.Caption, 2, Len(lblApellido.Caption) - 1)) ' capitalizar la primer letra y agregar el final de la palabra
End Sub
Private Sub cmdSalir_Click()
End
End Sub

Private Sub cmdShift_Click()
Dim bytePosi As Byte
Dim strSalida As String: strSalida = ""
For bytePosi = 1 To Len(txtNapellido.Text)
    If Mid(txtNapellido.Text, bytePosi, 1) = UCase(Mid(txtNapellido.Text, bytePosi, 1)) Then
        strSalida = strSalida & LCase(Mid(txtNapellido.Text, bytePosi, 1))
    Else
        strSalida = strSalida & UCase(Mid(txtNapellido.Text, bytePosi, 1))
    End If
Next bytePosi
txtNapellido.Text = strSalida
End Sub

Private Sub Command1_Click()
txtNapellido.Text = LCase(txtNapellido.Text)
lblNombre.Caption = "" ' limpiar labels
lblApellido.Caption = ""
Dim byteX As Byte: byteX = 1 'declarar y dar valores
'darlo vuelta
Do: DoEvents
    lblNombre.Caption = Mid(txtNapellido.Text, byteX, 1) & lblNombre.Caption
    byteX = byteX + 1
Loop While Not byteX > Len(txtNapellido.Text)
'quitarle los espacios a la frase
Dim strSinespacio As String
Dim byteY As Byte
For byteY = 1 To Len(txtNapellido.Text)
    If Mid(txtNapellido.Text, byteY, 1) = " " Then
    Else
    strSinespacio = strSinespacio & Mid(txtNapellido.Text, byteY, 1)
    End If
Next byteY
'dar vuelta la mitad de la frase sin espacios
byteX = 1 'resetear variable
Do: DoEvents
    lblApellido.Caption = Mid(strSinespacio, byteX, 1) & lblApellido.Caption
    byteX = byteX + 1
Loop While Not byteX > Len(strSinespacio) \ 2
If lblApellido.Caption = Right(strSinespacio, Len(strSinespacio) \ 2) Then ' si la ultima mitad invertida es igual a la primer mitad sin invertir
    lblApellido.Caption = txtNapellido.Text & " es palindrome"
Else
    lblApellido.Caption = txtNapellido.Text & " no es palindrome"
End If
End Sub

