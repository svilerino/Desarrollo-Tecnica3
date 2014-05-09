VERSION 5.00
Begin VB.Form frmInfo 
   BorderStyle     =   1  'Fixed Single
   ClientHeight    =   3270
   ClientLeft      =   15
   ClientTop       =   15
   ClientWidth     =   4365
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3270
   ScaleWidth      =   4365
   StartUpPosition =   1  'CenterOwner
   Begin VB.Timer Timer1 
      Interval        =   5000
      Left            =   4080
      Top             =   600
   End
   Begin VB.Image Image1 
      Height          =   480
      Left            =   1080
      Picture         =   "frmInfo.frx":0000
      Stretch         =   -1  'True
      Top             =   2640
      Width           =   495
   End
   Begin VB.Label Label1 
      Caption         =   "Espere..."
      Height          =   495
      Left            =   120
      TabIndex        =   1
      Top             =   2640
      Width           =   855
   End
   Begin VB.Label lblInfo 
      Caption         =   "Informacion"
      Height          =   2415
      Left            =   120
      TabIndex        =   0
      Top             =   0
      Width           =   4095
   End
End
Attribute VB_Name = "frmInfo"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub Timer1_Timer()
Me.Hide
End Sub
