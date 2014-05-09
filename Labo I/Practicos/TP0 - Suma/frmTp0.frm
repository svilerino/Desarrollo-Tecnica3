VERSION 5.00
Begin VB.Form frmTp0 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Tp0"
   ClientHeight    =   2490
   ClientLeft      =   5100
   ClientTop       =   4275
   ClientWidth     =   3315
   Icon            =   "frmTp0.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   Moveable        =   0   'False
   ScaleHeight     =   2490
   ScaleWidth      =   3315
   Begin VB.CommandButton cmdSalida 
      Cancel          =   -1  'True
      Caption         =   "S&alir"
      Height          =   615
      Left            =   240
      TabIndex        =   4
      ToolTipText     =   "Presione aqui para salir, presione escape o alt + a tambien =)"
      Top             =   1680
      Width           =   2775
   End
   Begin VB.CommandButton cmdSumar 
      Caption         =   "&Sumar"
      Height          =   495
      Left            =   360
      TabIndex        =   2
      ToolTipText     =   "Haga click aqui para sumar los dos sumandos ingresador anteriormente"
      Top             =   960
      Width           =   1215
   End
   Begin VB.TextBox txtSegNum 
      Height          =   375
      Left            =   1800
      TabIndex        =   1
      ToolTipText     =   "ingrese aqui el segundo sumando"
      Top             =   240
      Width           =   1215
   End
   Begin VB.TextBox txtPriNum 
      Height          =   375
      Left            =   360
      TabIndex        =   0
      ToolTipText     =   "ingrese aqui el primer sumando"
      Top             =   240
      Width           =   1215
   End
   Begin VB.Label lblResultado 
      BorderStyle     =   1  'Fixed Single
      Height          =   495
      Left            =   1800
      TabIndex        =   3
      ToolTipText     =   "Muestra el resultado de la suma"
      Top             =   960
      Width           =   1215
   End
End
Attribute VB_Name = "frmTp0"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdSalida_Click()
End 'fin de la aplicaciòn
End Sub

Private Sub cmdSumar_Click()
Dim sngPriNum As Single, sngSegNum As Single
Dim sngResultado As Single
'carga de variables
sngPriNum = Val(txtPriNum.Text)
sngSegNum = Val(txtSegNum.Text)
sngResultado = sngPriNum + sngSegNum
'salida del resultado
lblResultado = Str(sngResultado)
End Sub
