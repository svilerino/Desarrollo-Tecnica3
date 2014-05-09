VERSION 5.00
Begin VB.Form frmModifica 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Seleccione Opcion"
   ClientHeight    =   2310
   ClientLeft      =   2760
   ClientTop       =   3750
   ClientWidth     =   2700
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2310
   ScaleWidth      =   2700
   ShowInTaskbar   =   0   'False
   Begin VB.OptionButton optOpcion 
      Caption         =   "Edad"
      Height          =   255
      Index           =   2
      Left            =   240
      TabIndex        =   4
      Top             =   1320
      Width           =   1095
   End
   Begin VB.OptionButton optOpcion 
      Caption         =   "Apellido"
      Height          =   255
      Index           =   1
      Left            =   240
      TabIndex        =   3
      Top             =   840
      Width           =   1095
   End
   Begin VB.Frame Frame1 
      Height          =   1575
      Left            =   120
      TabIndex        =   1
      Top             =   120
      Width           =   2415
      Begin VB.OptionButton optOpcion 
         Caption         =   "Nombre"
         Height          =   255
         Index           =   0
         Left            =   120
         TabIndex        =   2
         Top             =   240
         Width           =   1095
      End
   End
   Begin VB.CommandButton cmdSi 
      Caption         =   "OK"
      Height          =   375
      Left            =   720
      TabIndex        =   0
      Top             =   1800
      Width           =   1335
   End
End
Attribute VB_Name = "frmModifica"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Option Explicit

Private Sub cmdSi_Click()
Dim x As Byte
Do: DoEvents
x = x + 1
Loop While Not optOpcion(x).Value = True
frmArchivos.OpcionModificar = x
Unload Me
End Sub

Private Sub Form_Load()

End Sub
