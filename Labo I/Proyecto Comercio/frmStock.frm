VERSION 5.00
Begin VB.Form frmStock 
   BackColor       =   &H00000080&
   Caption         =   "Stock"
   ClientHeight    =   3225
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4680
   Icon            =   "frmStock.frx":0000
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   3225
   ScaleWidth      =   4680
   Begin VB.TextBox txtBusqueda 
      BackColor       =   &H00000000&
      ForeColor       =   &H008080FF&
      Height          =   375
      Left            =   120
      TabIndex        =   1
      Top             =   2760
      Width           =   4455
   End
   Begin VB.ListBox lstStock 
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
      ForeColor       =   &H00FFFFFF&
      Height          =   2370
      Left            =   120
      Style           =   1  'Checkbox
      TabIndex        =   0
      Top             =   120
      Width           =   4455
   End
End
Attribute VB_Name = "frmStock"
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

     Ancho_Lista = ScaleWidth - ancho_margen_derecho - lstStock.Left

     lstStock.Width = Ancho_Lista
     txtBusqueda.Width = Ancho_Lista

     Alto_Lista = ScaleHeight - ancho_margen_derecho - lstStock.Top

     'Esto es necesario comprobar para que el valor no sea negativo _
      .. y genere error
If Alto_Lista <= 400 Then
         Alto_Lista = 400
End If

     'Posiciona el control ( Ajusta ancho y alto )
     lstStock.Move lstStock.Left, lstStock.Top, ScaleWidth - (ancho_margen_derecho) - lstStock.Left, Alto_Lista - 400
     txtBusqueda.Move lstStock.Left, lstStock.Top + lstStock.Height + 200, ScaleWidth - (ancho_margen_derecho) - txtBusqueda.Left, txtBusqueda.Height
End Sub

Private Sub lstStock_KeyDown(KeyCode As Integer, Shift As Integer)
If KeyCode = vbKeyReturn Then txtBusqueda.SetFocus
End Sub

Private Sub txtBusqueda_Change()

frmStock.lstStock.Clear
Dim x As Integer, boolsi As Boolean
Dim Producto As Producto
x = 1
Open App.Path & "\Stock.dat" For Random As #1 Len = Len(Producto)
    Get #1, x, Producto
    Do While Not (EOF(1)): DoEvents
        If LCase((Left(Producto.Nombre & "Codigo:" & Str(Producto.Codigo) & " Precio:" & Str(Producto.Precio) & " Stock:" & Str(Producto.Stock) & "  Activo: " & Producto.Estado, Len(txtBusqueda.Text)))) = LCase(txtBusqueda.Text) Then
            frmStock.lstStock.AddItem Producto.Nombre & "Codigo:" & Str(Producto.Codigo) & " Precio:" & Str(Producto.Precio) & " Stock:" & Str(Producto.Stock) & "  Activo: " & Producto.Estado
            boolsi = True
        End If
        x = x + 1
        Get #1, x, Producto
    Loop
Close #1

If Not (boolsi) Then
    lstStock.ListIndex = -1
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
If KeyCode = vbKeyReturn Then lstStock.SetFocus
End Sub
