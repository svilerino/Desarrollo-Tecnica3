VERSION 5.00
Begin VB.Form frmCargaProd 
   BackColor       =   &H00808000&
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Manejo de Registros"
   ClientHeight    =   2535
   ClientLeft      =   45
   ClientTop       =   405
   ClientWidth     =   5760
   Icon            =   "frmCargaProd.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Moveable        =   0   'False
   ScaleHeight     =   2535
   ScaleWidth      =   5760
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton cmdAtras 
      Caption         =   "Volver"
      Height          =   375
      Left            =   3480
      TabIndex        =   7
      Top             =   1920
      Width           =   2055
   End
   Begin VB.CommandButton cmdIngresar 
      Caption         =   "Ingresar"
      Height          =   375
      Left            =   1320
      TabIndex        =   3
      Top             =   1920
      Width           =   2055
   End
   Begin VB.TextBox txtStock 
      Height          =   375
      Left            =   1920
      MaxLength       =   5
      TabIndex        =   2
      Top             =   1440
      Width           =   3495
   End
   Begin VB.TextBox txtPrecio 
      Height          =   375
      Left            =   1920
      TabIndex        =   1
      Top             =   840
      Width           =   3495
   End
   Begin VB.TextBox txtNombre 
      Height          =   375
      Left            =   1920
      MaxLength       =   15
      TabIndex        =   0
      Top             =   360
      Width           =   3495
   End
   Begin VB.Image Image1 
      Height          =   720
      Left            =   120
      Picture         =   "frmCargaProd.frx":0442
      Stretch         =   -1  'True
      Top             =   120
      Width           =   720
   End
   Begin VB.Label Label3 
      BackColor       =   &H00808000&
      Caption         =   "Precio"
      Height          =   375
      Left            =   1200
      TabIndex        =   6
      Top             =   840
      Width           =   495
   End
   Begin VB.Label Label2 
      BackColor       =   &H00808000&
      Caption         =   "Stock"
      Height          =   375
      Left            =   1200
      TabIndex        =   5
      Top             =   1440
      Width           =   495
   End
   Begin VB.Label Label1 
      BackColor       =   &H00808000&
      Caption         =   "Nombre"
      Height          =   375
      Left            =   1200
      TabIndex        =   4
      Top             =   480
      Width           =   555
   End
End
Attribute VB_Name = "frmCargaProd"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Public Cancel As Boolean
Private Sub cmdAtras_Click()
Form_Unload 0
End Sub

Private Sub cmdIngresar_Click()
If ValeCampos Then
    txtNombre.Text = Mayuscula(txtNombre.Text)
    If (Val(txtStock.Text) > 32767) Then
        MsgBox "Precio debe ser menor a 32767"
        txtStock.Text = ""
        txtStock.SetFocus
    Else
        If (Val(txtStock.Text) <= 0) Then
            txtStock.Text = "1"
        End If
        Me.Hide
        Cancel = False
    End If
End If
End Sub
Private Function ValeCampos() As Boolean
ValeCampos = Not (txtNombre.Text = "" And txtPrecio.Text = "" And txtStock.Text = "")
End Function

Private Sub Form_Load()
Cancel = True
End Sub

Private Sub Form_Unload(Cancel As Integer)
Me.Hide
Cancel = True
End Sub

Private Sub txtNombre_KeyDown(KeyCode As Integer, Shift As Integer)
If KeyCode = vbKeyReturn Then txtPrecio.SetFocus
End Sub

Private Sub txtprecio_KeyDown(KeyCode As Integer, Shift As Integer)
If KeyCode = vbKeyReturn Then txtStock.SetFocus
End Sub

Private Sub txtPrecio_KeyPress(KeyAscii As Integer)
If (KeyAscii = Asc(",")) Then KeyAscii = Asc(".")
End Sub

Private Sub txtStock_KeyDown(KeyCode As Integer, Shift As Integer)
If KeyCode = vbKeyReturn Then cmdIngresar.SetFocus
End Sub

Private Sub txtprecio_Change()
If (Right(txtPrecio.Text, 1) = ".") Then txtPrecio.MaxLength = Len(txtPrecio.Text) + 2
End Sub
Private Function Mayuscula(ByVal Texto As String) As String
If Not Len(Texto) = 0 Then
Mayuscula = UCase(Mid(Texto, 1, 1)) & LCase(Mid(Texto, 2, Len(Texto) - 1))
End If
End Function
