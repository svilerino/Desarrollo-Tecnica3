VERSION 5.00
Begin VB.Form frmCarga 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Manejo de Registros"
   ClientHeight    =   3120
   ClientLeft      =   45
   ClientTop       =   405
   ClientWidth     =   4905
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3120
   ScaleWidth      =   4905
   StartUpPosition =   2  'CenterScreen
   Begin VB.Frame frmModi 
      Enabled         =   0   'False
      Height          =   2415
      Left            =   4320
      TabIndex        =   4
      Top             =   240
      Width           =   495
      Begin VB.CheckBox chkEdad 
         Height          =   195
         Left            =   120
         TabIndex        =   7
         Top             =   1800
         Width           =   255
      End
      Begin VB.CheckBox chkApe 
         Height          =   255
         Left            =   120
         TabIndex        =   6
         Top             =   960
         Width           =   255
      End
      Begin VB.CheckBox chkNom 
         Height          =   255
         Left            =   120
         TabIndex        =   5
         Top             =   240
         Width           =   255
      End
   End
   Begin VB.CommandButton cmdIngresar 
      Caption         =   "Listo"
      Height          =   375
      Left            =   1440
      TabIndex        =   3
      Top             =   2640
      Width           =   1935
   End
   Begin VB.TextBox txtEdad 
      Height          =   615
      Left            =   240
      TabIndex        =   2
      Text            =   "Ingrese Edad"
      Top             =   1920
      Width           =   3975
   End
   Begin VB.TextBox txtApe 
      Height          =   615
      Left            =   240
      TabIndex        =   1
      Text            =   "Ingrese Apellido"
      Top             =   1080
      Width           =   3975
   End
   Begin VB.TextBox txtNom 
      Height          =   495
      Left            =   240
      TabIndex        =   0
      Text            =   "Ingrese Nombre"
      Top             =   360
      Width           =   3975
   End
   Begin VB.Label lblModi 
      Caption         =   "Luego de Ingresar Datos, Marque el checkbox a Modificar"
      Height          =   255
      Left            =   240
      TabIndex        =   8
      Top             =   0
      Visible         =   0   'False
      Width           =   4575
   End
End
Attribute VB_Name = "frmCarga"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub cmdIngresar_Click()
txtNom.SetFocus
Me.Hide
End Sub

Private Sub Form_Activate()
txtNom.Text = "Ingrese Nombre"
txtApe.Text = "Ingrese Apellido"
txtEdad.Text = "Ingrese Edad"
chkNom.Value = 0
chkApe.Value = 0
chkEdad.Value = 0
End Sub

Private Sub txtApe_GotFocus()
txtApe_DblClick
End Sub

Private Sub txtEdad_GotFocus()
txtEdad_DblClick
End Sub

Private Sub txtNom_DblClick()
With txtNom
    .SelStart = 0
    .SelLength = Len(txtNom.Text)
End With
End Sub
Private Sub txtApe_DblClick()
With txtApe
    .SelStart = 0
    .SelLength = Len(txtApe.Text)
End With
End Sub

Private Sub txtEdad_DblClick()
With txtEdad
    .SelStart = 0
    .SelLength = Len(txtEdad.Text)
End With
End Sub

Private Sub txtNom_GotFocus()
txtNom_DblClick
End Sub

Private Sub txtNom_KeyDown(KeyCode As Integer, Shift As Integer)
If KeyCode = vbKeyReturn Then
    txtApe.SetFocus
    txtNom.Text = UCase(Mid(txtNom.Text, 1, 1)) & LCase(Mid(txtNom.Text, 2, Len(txtNom.Text) - 1))
End If
End Sub
Private Sub txtApe_KeyDown(KeyCode As Integer, Shift As Integer)
If KeyCode = vbKeyReturn Then
    txtEdad.SetFocus
    txtApe.Text = UCase(Mid(txtApe.Text, 1, 1)) & LCase(Mid(txtApe.Text, 2, Len(txtApe.Text) - 1))
End If
End Sub

Private Sub txtEdad_KeyDown(KeyCode As Integer, Shift As Integer)
If KeyCode = vbKeyReturn Then
    cmdIngresar.SetFocus
End If
End Sub

