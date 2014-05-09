VERSION 5.00
Begin VB.Form frmGenerala 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Generala"
   ClientHeight    =   2415
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   6060
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2415
   ScaleWidth      =   6060
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Command1 
      Caption         =   "&Generala Autoinducida"
      Height          =   855
      Left            =   120
      TabIndex        =   6
      Top             =   1440
      Width           =   2295
   End
   Begin VB.CommandButton cmdSalir 
      Cancel          =   -1  'True
      Caption         =   "&Salir"
      Height          =   375
      Left            =   4320
      TabIndex        =   1
      Top             =   1320
      Width           =   1695
   End
   Begin VB.CommandButton cmdTirar 
      Caption         =   "&Tirar Dados y Verificar Juego"
      Height          =   1215
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   2295
   End
   Begin VB.Label Label2 
      Caption         =   "Juego"
      Height          =   375
      Left            =   2520
      TabIndex        =   5
      Top             =   840
      Width           =   1095
   End
   Begin VB.Label lblJuego 
      Height          =   375
      Left            =   3720
      TabIndex        =   4
      Top             =   840
      Width           =   2175
   End
   Begin VB.Label lblDados 
      Height          =   375
      Left            =   3960
      TabIndex        =   3
      Top             =   240
      Width           =   1815
   End
   Begin VB.Label Label1 
      Caption         =   "Dados:"
      Height          =   375
      Left            =   2520
      TabIndex        =   2
      Top             =   240
      Width           =   1335
   End
End
Attribute VB_Name = "frmGenerala"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub TirarDados(ByRef a As Byte, ByRef b As Byte, ByRef c As Byte, ByRef d As Byte, ByRef e As Byte)
a = Fix(((1 - 7) + 1) * Rnd + 7)
b = Fix(((1 - 7) + 1) * Rnd + 7)
c = Fix(((1 - 7) + 1) * Rnd + 7)
d = Fix(((1 - 7) + 1) * Rnd + 7)
e = Fix(((1 - 7) + 1) * Rnd + 7)
End Sub
Private Sub MostrarDados(ByVal a As Byte, ByVal b As Byte, ByVal c As Byte, ByVal d As Byte, ByVal e As Byte)
lblDados.Caption = Str(a) & Str(b) & Str(c) & Str(d) & Str(e)
End Sub
Private Function Generala(ByVal a As Byte, ByVal b As Byte, ByVal c As Byte, ByVal d As Byte, ByVal e As Byte) As Boolean
Dim bytex As Byte, vecto(4) As Byte, byteCont As Byte: Generala = False
vecto(0) = a
vecto(1) = b
vecto(2) = c
vecto(3) = d
vecto(4) = e
For bytex = 0 To 4
    If vecto(0) = vecto(bytex) Then byteCont = byteCont + 1
Next bytex
If byteCont = 5 Then Generala = True
End Function
Private Function Poker(ByVal a As Byte, ByVal b As Byte, ByVal c As Byte, ByVal d As Byte, ByVal e As Byte) As Boolean
Dim contador(4) As Byte, boolVale As Boolean
Contar a, b, c, d, e, contador()
Dim bytex As Byte
For bytex = 0 To 4
    If contador(bytex) = 4 Then boolVale = True
Next bytex
Poker = boolVale
End Function
Private Function Full(ByVal a As Byte, ByVal b As Byte, ByVal c As Byte, ByVal d As Byte, ByVal e As Byte) As Boolean
Dim contador(4) As Byte, boolVale As Boolean
Contar a, b, c, d, e, contador()
Dim bytex As Byte, byteY As Byte
For bytex = 0 To 4
    If contador(bytex) = 3 Then
        For byteY = 0 To 4
            If contador(byteY) = 2 Then boolVale = True
        Next byteY
    End If
Next bytex
Full = boolVale
End Function
Private Function Escalera(ByVal a As Byte, ByVal b As Byte, ByVal c As Byte, ByVal d As Byte, ByVal e As Byte) As Boolean
Dim vecto(4) As Byte, cont As Byte: Escalera = False
Dim bytex As Byte
vecto(0) = a
vecto(1) = b
vecto(2) = c
vecto(3) = d
vecto(4) = e
For bytex = 0 To 4
    If vecto(bytex) = bytex + 1 Then cont = cont + 1
Next bytex
If cont = 5 Then Escalera = True
If Not Escalera Then
    cont = 0
    For bytex = 0 To 4
        If vecto(bytex) = bytex + 2 Then cont = cont + 1
    Next bytex
    If cont = 5 Then Escalera = True
End If
End Function

Private Sub Contar(ByVal a As Byte, ByVal b As Byte, ByVal c As Byte, ByVal d As Byte, ByVal e As Byte, ByRef cont() As Byte)
Dim bytex As Byte
Dim byteY As Byte, vecto(4) As Byte
vecto(0) = a
vecto(1) = b
vecto(2) = c
vecto(3) = d
vecto(4) = e
For bytex = 0 To 4
    For byteY = 0 To 4
        If vecto(bytex) = vecto(byteY) Then cont(bytex) = cont(bytex) + 1
    Next byteY
Next bytex
End Sub

Private Sub cmdSalir_Click()
Form_Unload 1
End Sub

Private Sub cmdTirar_Click()
lblJuego.Caption = ""
Dim byteDado As Byte, byteDado2 As Byte, byteDado3 As Byte, byteDado4 As Byte, byteDado5 As Byte
TirarDados byteDado, byteDado2, byteDado3, byteDado4, byteDado5
MostrarDados byteDado, byteDado2, byteDado3, byteDado4, byteDado5
If Generala(byteDado, byteDado2, byteDado3, byteDado4, byteDado5) Then lblJuego.Caption = "Generala"
If Poker(byteDado, byteDado2, byteDado3, byteDado4, byteDado5) Then lblJuego.Caption = "Poker"
If Full(byteDado, byteDado2, byteDado3, byteDado4, byteDado5) Then lblJuego.Caption = "Full"
If Escalera(byteDado, byteDado2, byteDado3, byteDado4, byteDado5) Then lblJuego.Caption = "Escalera"
End Sub

Private Sub Command1_Click()
Do: DoEvents
cmdTirar_Click
Loop While Not lblJuego.Caption = "Generala"
End Sub

Private Sub Form_Load()
Randomize Timer
End Sub

Private Sub Form_Unload(Cancel As Integer)
End
End Sub
