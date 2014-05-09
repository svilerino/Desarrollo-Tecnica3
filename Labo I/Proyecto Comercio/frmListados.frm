VERSION 5.00
Begin VB.Form frmListados 
   BackColor       =   &H00800080&
   Caption         =   "Listados"
   ClientHeight    =   3225
   ClientLeft      =   12225
   ClientTop       =   7815
   ClientWidth     =   4680
   Icon            =   "frmListados.frx":0000
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   3225
   ScaleWidth      =   4680
   Begin VB.TextBox txtBusqueda 
      BackColor       =   &H00000000&
      ForeColor       =   &H00FFFFFF&
      Height          =   375
      Left            =   120
      TabIndex        =   1
      Top             =   2760
      Width           =   4455
   End
   Begin VB.ListBox lstListados 
      BackColor       =   &H00000000&
      BeginProperty Font 
         Name            =   "Terminal"
         Size            =   9
         Charset         =   255
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00E0E0E0&
      Height          =   2220
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   4455
   End
End
Attribute VB_Name = "frmListados"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub Form_Load()
Form_Resize
End Sub

Private Sub Form_Resize()
Dim Alto_Lista As Single
Dim Ancho_Lista As Single
Dim ancho_margen_derecho As Single: ancho_margen_derecho = 150

     ' No es necesario ajustar cuando la ventana está minimizada _
'       ... además por que genera error
If WindowState = vbMinimized Then Exit Sub

     Ancho_Lista = ScaleWidth - ancho_margen_derecho - lstListados.Left

     lstListados.Width = Ancho_Lista
     txtBusqueda.Width = Ancho_Lista

     Alto_Lista = ScaleHeight - ancho_margen_derecho - lstListados.Top

     'Esto es necesario comprobar para que el valor no sea negativo _
      .. y genere error
If Alto_Lista <= 400 Then
         Alto_Lista = 400
End If

     'Posiciona el control ( Ajusta ancho y alto )
     lstListados.Move lstListados.Left, lstListados.Top, ScaleWidth - (ancho_margen_derecho) - lstListados.Left, Alto_Lista - 400
     txtBusqueda.Move lstListados.Left, lstListados.Top + lstListados.Height + 200, ScaleWidth - (ancho_margen_derecho) - txtBusqueda.Left, txtBusqueda.Height
End Sub

Private Sub lstListados_KeyDown(KeyCode As Integer, Shift As Integer)
If KeyCode = vbKeyReturn Then txtBusqueda.SetFocus
End Sub

Private Sub txtBusqueda_Change()

Dim n As Integer, boolsi As Boolean
n = 0
boolsi = False
Do: DoEvents
    lstListados.ListIndex = n
    If LCase((Left(lstListados.Text, Len(txtBusqueda.Text)))) = LCase(txtBusqueda.Text) Then
        boolsi = True
    End If
    n = n + 1
Loop While Not (n = lstListados.ListCount Or boolsi)
If Not (boolsi) Then
    lstListados.ListIndex = -1
    txtBusqueda.BackColor = vbRed
    txtBusqueda.FontBold = True
Else
    txtBusqueda.BackColor = vbGreen
    txtBusqueda.FontBold = True
End If
If Len(txtBusqueda.Text) = 0 Then
    txtBusqueda.BackColor = &H404040
    txtBusqueda.FontBold = False
End If
End Sub

Private Sub txtBusqueda_KeyDown(KeyCode As Integer, Shift As Integer)
If KeyCode = vbKeyReturn Then lstListados.SetFocus
End Sub

