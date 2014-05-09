VERSION 5.00
Begin VB.Form frmCargaCL 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Manejo de Registros"
   ClientHeight    =   2490
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   4395
   ControlBox      =   0   'False
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Moveable        =   0   'False
   ScaleHeight     =   2490
   ScaleWidth      =   4395
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton cmdIngresar 
      Caption         =   "&Ingresar"
      Height          =   495
      Left            =   1200
      TabIndex        =   7
      Top             =   1920
      Width           =   1935
   End
   Begin VB.Frame frmChk 
      Enabled         =   0   'False
      Height          =   1455
      Left            =   3600
      TabIndex        =   1
      Top             =   360
      Width           =   735
      Begin VB.CheckBox chkApellido 
         Height          =   195
         Left            =   240
         TabIndex        =   6
         Top             =   1080
         Width           =   255
      End
      Begin VB.CheckBox chkNombre 
         Height          =   255
         Left            =   240
         TabIndex        =   4
         Top             =   360
         Width           =   255
      End
   End
   Begin VB.Frame Frame1 
      Height          =   1575
      Left            =   120
      TabIndex        =   0
      Top             =   240
      Width           =   3375
      Begin VB.TextBox txtApellido 
         Height          =   495
         Left            =   240
         TabIndex        =   5
         Top             =   960
         Width           =   2895
      End
      Begin VB.TextBox txtNombre 
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
Attribute VB_Name = "frmCargaCL"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub cmdIngresar_Click()
Me.Hide
End Sub

Private Sub Form_Activate()
txtNombre.Text = "Ingrese Nombre"
txtApellido.Text = "ingrese Apellido"
chkNombre.Value = 0
chkApellido.Value = 0
End Sub
Private Function Mayus(ByVal strTexto As String) As String
Mayus = UCase(Mid(strTexto, 1, 1)) & Mid(strTexto, 2, Len(strTexto) - 1)
End Function

Private Sub txtApellido_GotFocus()
With txtApellido
    .SelStart = 0
    .SelLength = Len(txtApellido.Text)
End With
End Sub

Private Sub txtNombre_GotFocus()
With txtNombre
    .SelStart = 0
    .SelLength = Len(txtNombre.Text)
End With
End Sub

Private Sub txtNombre_KeyDown(KeyCode As Integer, Shift As Integer)
If (KeyCode = vbKeyReturn) Then
    txtApellido.SetFocus
    txtNombre.Text = Mayus(txtNombre.Text)
End If
End Sub
Private Sub txtApellido_KeyDown(KeyCode As Integer, Shift As Integer)
If (KeyCode = vbKeyReturn) Then
    cmdIngresar.SetFocus
    txtApellido.Text = Mayus(txtApellido.Text)
End If
End Sub

