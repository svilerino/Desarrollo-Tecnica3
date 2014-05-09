VERSION 5.00
Begin VB.Form frmCarga 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Manejo de Registros"
   ClientHeight    =   3240
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   4395
   ControlBox      =   0   'False
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Moveable        =   0   'False
   ScaleHeight     =   3240
   ScaleWidth      =   4395
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton cmdIngresar 
      Caption         =   "&Ingresar"
      Height          =   495
      Left            =   1200
      TabIndex        =   9
      Top             =   2640
      Width           =   1935
   End
   Begin VB.Frame frmChk 
      Enabled         =   0   'False
      Height          =   2295
      Left            =   3600
      TabIndex        =   1
      Top             =   240
      Width           =   735
      Begin VB.CheckBox chkCantidad 
         Height          =   195
         Left            =   240
         TabIndex        =   8
         Top             =   1800
         Width           =   375
      End
      Begin VB.CheckBox chkPrecio 
         Height          =   195
         Left            =   240
         TabIndex        =   6
         Top             =   1080
         Width           =   255
      End
      Begin VB.CheckBox chkProducto 
         Height          =   255
         Left            =   240
         TabIndex        =   4
         Top             =   360
         Width           =   255
      End
   End
   Begin VB.Frame Frame1 
      Height          =   2295
      Left            =   120
      TabIndex        =   0
      Top             =   240
      Width           =   3375
      Begin VB.TextBox txtCantidad 
         Height          =   495
         Left            =   240
         TabIndex        =   7
         Top             =   1680
         Width           =   2895
      End
      Begin VB.TextBox txtPrecio 
         Height          =   495
         Left            =   240
         TabIndex        =   5
         Top             =   960
         Width           =   2895
      End
      Begin VB.TextBox txtProducto 
         Height          =   495
         Left            =   240
         TabIndex        =   3
         Top             =   240
         Width           =   2895
      End
   End
   Begin VB.Label Label1 
      Caption         =   "Ingrese Datos a modificar y seleccione Campos a Modificar"
      Height          =   255
      Left            =   120
      TabIndex        =   2
      Top             =   0
      Visible         =   0   'False
      Width           =   4215
   End
End
Attribute VB_Name = "frmCarga"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub cmdIngresar_Click()
Me.Hide
End Sub

Private Sub Form_Activate()
txtProducto.Text = "Ingrese Producto"
txtPrecio.Text = "Ingrese Precio"
txtCantidad.Text = "Ingrese Cantidad"
chkPrecio.Value = 0
chkCantidad.Value = 0
chkProducto.Value = 0
txtProducto.SetFocus
End Sub
Private Function Mayus(ByVal strTexto As String) As String
Mayus = UCase(Mid(strTexto, 1, 1)) & Mid(strTexto, 2, Len(strTexto) - 1)
End Function

Private Sub txtCantidad_DblClick()
With txtCantidad
    .SelStart = 0
    .SelLength = Len(txtCantidad.Text)
End With
End Sub

Private Sub txtPrecio_DblClick()
With txtPrecio
    .SelStart = 0
    .SelLength = Len(txtPrecio.Text)
End With
End Sub

Private Sub txtProducto_DblClick()
With txtProducto
    .SelStart = 0
    .SelLength = Len(txtProducto.Text)
End With
End Sub

Private Sub txtProducto_KeyDown(KeyCode As Integer, Shift As Integer)
If (KeyCode = vbKeyReturn) Then
    txtPrecio.SetFocus
    txtProducto.Text = Mayus(txtProducto.Text)
End If
End Sub
Private Sub txtPrecio_KeyDown(KeyCode As Integer, Shift As Integer)
If (KeyCode = vbKeyReturn) Then txtCantidad.SetFocus
End Sub

Private Sub txtCantidad_KeyDown(KeyCode As Integer, Shift As Integer)
If (KeyCode = vbKeyReturn) Then cmdIngresar.SetFocus
End Sub

Private Sub txtProducto_GotFocus()
txtProducto_DblClick
End Sub

Private Sub txtPrecio_GotFocus()
txtPrecio_DblClick
End Sub

Private Sub txtCantidad_GotFocus()
txtCantidad_DblClick
End Sub




