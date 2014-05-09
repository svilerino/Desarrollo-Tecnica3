VERSION 5.00
Begin VB.Form frmTp6 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Comprimir"
   ClientHeight    =   1470
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   7095
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1470
   ScaleWidth      =   7095
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Command1 
      Caption         =   "&Comprimir Funcion"
      Height          =   615
      Left            =   5400
      TabIndex        =   3
      Top             =   720
      Width           =   1575
   End
   Begin VB.TextBox txtSalida 
      BackColor       =   &H8000000F&
      Height          =   495
      Left            =   120
      Locked          =   -1  'True
      TabIndex        =   2
      Top             =   840
      Width           =   5055
   End
   Begin VB.TextBox txtIngreso 
      Height          =   495
      Left            =   120
      TabIndex        =   1
      Text            =   "Ingrese texto a comprimir."
      Top             =   120
      Width           =   5055
   End
   Begin VB.CommandButton cmdComprimir 
      Caption         =   "C&omprimir Invertido ;)"
      Height          =   495
      Left            =   5400
      TabIndex        =   0
      Top             =   120
      Width           =   1575
   End
End
Attribute VB_Name = "frmTp6"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Private Function strComprimir(ByVal strIngreso As String) As String
'declaracion de variables
Dim byteY As Byte
Dim byteX As Byte: byteX = 1
Dim byteContador As Byte
Dim strsalida As String
Do: DoEvents 'repetir
    byteContador = 1 'resetear contador
    byteY = byteX + 1 'asigna byteY como la letra actual +1
    If Mid(strIngreso, byteX, 1) = Mid(strIngreso, byteY, 1) Then ' si la letra actual y la siguiente son iguales entonces
        Do: DoEvents 'repetir
            byteY = byteY + 1 'aumentar letra
            byteContador = byteContador + 1 'aumentar contador
        Loop While Not Mid(strIngreso, byteX, 1) <> Mid(strIngreso, byteY, 1) 'hasta que la posicion actual sea distinta de alguna letra
        strsalida = strsalida & Trim(Str(byteContador)) & Mid(strIngreso, byteX, 1) 'guardar la letra y su cantidad de veces repetidas
    Else 'sino
        strsalida = strsalida & Mid(strIngreso, byteX, 1) 'pegar la letra
    End If 'fin si
    byteX = byteY 'asigna la ultima posicion
Loop Until byteX > Len(strIngreso) 'repetir hasta que la posicion sea mayor al largo
strComprimir = strsalida 'asignar contenido a la funcion
End Function

Private Sub cmdComprimir_Click()
txtSalida.Text = ""
Dim byteY As Byte
Dim byteX As Byte: byteX = 1
Dim byteContador As Byte
Do: DoEvents
    byteContador = 1
    byteY = byteX + 1
    If Mid(txtIngreso.Text, byteX, 1) = Mid(txtIngreso.Text, byteY, 1) Then
        Do: DoEvents
            byteY = byteY + 1
            byteContador = byteContador + 1
        Loop While Not Mid(txtIngreso.Text, byteX, 1) <> Mid(txtIngreso.Text, byteY, 1)
        txtSalida.Text = txtSalida.Text & Trim(Str(byteContador)) & Mid(txtIngreso, byteX, 1)
    Else
        txtSalida.Text = txtSalida.Text & Mid(txtIngreso, byteX, 1)
    End If
    byteX = byteY
Loop Until byteX > Len(txtIngreso.Text)
Dim strsalida As String
For byteX = 1 To Len(txtSalida.Text)
    strsalida = Mid(txtSalida.Text, byteX, 1) & strsalida
Next byteX
txtSalida.Text = strsalida
End Sub

Private Sub Command1_Click()
txtSalida.Text = strComprimir(txtIngreso.Text) 'llama a la funcion descomprimir
End Sub

Private Sub txtIngreso_Click()
txtIngreso.Text = "" ' borra el campo al hacer click
End Sub
