VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   3090
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   5115
   LinkTopic       =   "Form1"
   ScaleHeight     =   3090
   ScaleWidth      =   5115
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "Command1"
      Height          =   255
      Left            =   0
      TabIndex        =   0
      Top             =   2760
      Width           =   1095
   End
   Begin VB.Label Label1 
      Height          =   495
      Left            =   1320
      TabIndex        =   1
      Top             =   2040
      Width           =   2055
   End
   Begin VB.Shape Shape1 
      BackStyle       =   1  'Opaque
      Height          =   615
      Index           =   5
      Left            =   4320
      Top             =   1080
      Width           =   615
   End
   Begin VB.Shape Shape1 
      BackStyle       =   1  'Opaque
      Height          =   615
      Index           =   4
      Left            =   3480
      Top             =   1080
      Width           =   615
   End
   Begin VB.Shape Shape1 
      BackStyle       =   1  'Opaque
      Height          =   615
      Index           =   3
      Left            =   2640
      Top             =   1080
      Width           =   615
   End
   Begin VB.Shape Shape1 
      BackStyle       =   1  'Opaque
      Height          =   615
      Index           =   2
      Left            =   960
      Top             =   1080
      Width           =   615
   End
   Begin VB.Shape Shape1 
      BackStyle       =   1  'Opaque
      Height          =   615
      Index           =   1
      Left            =   1800
      Top             =   1080
      Width           =   615
   End
   Begin VB.Shape Shape1 
      BackStyle       =   1  'Opaque
      Height          =   615
      Index           =   0
      Left            =   120
      Top             =   1080
      Width           =   615
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub Command1_Click()
Dim x As Integer
x = 0
Do: DoEvents
    Shape1(Fix(Rnd * 6)).BackColor = RGB(Rnd * 256, Rnd * 256, Rnd * 256)
    x = x + 1
Loop While Not x = 5000
    Form1.BackColor = RGB(Rnd * 256, Rnd * 256, Rnd * 256)
    Label1.BackColor = Form1.BackColor
    Label1.Caption = "vas a morir en" & Str(Fix(Rnd * 365)) & "dias :("
End Sub

Private Sub Form_Load()
Randomize Timer
End Sub
