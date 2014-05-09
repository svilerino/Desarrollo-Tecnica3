VERSION 5.00
Begin VB.Form frmCargaCl 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Manejar Cliente"
   ClientHeight    =   2370
   ClientLeft      =   2760
   ClientTop       =   3750
   ClientWidth     =   4080
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2370
   ScaleWidth      =   4080
   ShowInTaskbar   =   0   'False
   Begin VB.ComboBox cmbEstadoCivil 
      Height          =   315
      ItemData        =   "frmCargaCl.frx":0000
      Left            =   1080
      List            =   "frmCargaCl.frx":0010
      TabIndex        =   8
      Top             =   1440
      Width           =   2775
   End
   Begin VB.TextBox txtTelefono 
      Height          =   285
      Left            =   1080
      MaxLength       =   15
      TabIndex        =   7
      Top             =   1080
      Width           =   2775
   End
   Begin VB.TextBox txtEdad 
      Height          =   285
      Left            =   1080
      MaxLength       =   3
      TabIndex        =   6
      Top             =   720
      Width           =   2775
   End
   Begin VB.TextBox txtNombre 
      Height          =   285
      Left            =   1080
      MaxLength       =   20
      TabIndex        =   5
      Top             =   360
      Width           =   2775
   End
   Begin VB.CommandButton cmdIngresar 
      Caption         =   "Ingresar"
      Height          =   375
      Left            =   1560
      TabIndex        =   0
      Top             =   1920
      Width           =   1215
   End
   Begin VB.Label Label5 
      Caption         =   "Estado Civil"
      Height          =   255
      Left            =   120
      TabIndex        =   4
      Top             =   1440
      Width           =   975
   End
   Begin VB.Label Label3 
      Caption         =   "Telefono"
      Height          =   255
      Left            =   240
      TabIndex        =   3
      Top             =   1080
      Width           =   735
   End
   Begin VB.Label Label2 
      Caption         =   "Edad"
      Height          =   255
      Left            =   360
      TabIndex        =   2
      Top             =   720
      Width           =   615
   End
   Begin VB.Label Label1 
      Caption         =   "Nombre"
      Height          =   255
      Left            =   360
      TabIndex        =   1
      Top             =   360
      Width           =   615
   End
End
Attribute VB_Name = "frmCargaCl"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Option Explicit

Private Sub cmdIngresar_Click()
txtNombre.Text = Mayus(txtNombre.Text)
Me.Hide
End Sub
Private Function Mayus(ByVal Strtexto As String) As String
Mayus = UCase(Mid(Strtexto, 1, 1)) & Mid(Strtexto, 2, Len(Strtexto) - 1)
End Function
