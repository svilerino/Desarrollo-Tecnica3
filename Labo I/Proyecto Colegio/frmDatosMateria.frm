VERSION 5.00
Begin VB.Form frmDatosMateria 
   BorderStyle     =   3  'Fixed Dialog
   ClientHeight    =   3210
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   7035
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3210
   ScaleWidth      =   7035
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame2 
      Caption         =   "Controles"
      Height          =   1095
      Left            =   120
      TabIndex        =   5
      Top             =   2040
      Width           =   6855
      Begin VB.CommandButton cmdBack 
         Cancel          =   -1  'True
         Caption         =   "Volver"
         Height          =   615
         Left            =   4440
         TabIndex        =   4
         Top             =   240
         Width           =   1935
      End
      Begin VB.CommandButton cmdOK 
         Caption         =   "Ingresar"
         Height          =   615
         Left            =   480
         TabIndex        =   3
         Top             =   240
         Width           =   1935
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "Ingrese Datos"
      Height          =   1815
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   6855
      Begin VB.TextBox txtDatos 
         Height          =   375
         Index           =   1
         Left            =   2280
         MaxLength       =   15
         TabIndex        =   2
         Top             =   1080
         Width           =   4095
      End
      Begin VB.TextBox txtDatos 
         Height          =   375
         Index           =   0
         Left            =   2280
         MaxLength       =   15
         TabIndex        =   1
         Top             =   480
         Width           =   4095
      End
      Begin VB.Label Label2 
         Caption         =   "Profesor"
         Height          =   255
         Left            =   240
         TabIndex        =   7
         Top             =   1080
         Width           =   855
      End
      Begin VB.Label Label1 
         Caption         =   "Nombre"
         Height          =   255
         Left            =   240
         TabIndex        =   6
         Top             =   480
         Width           =   1815
      End
   End
End
Attribute VB_Name = "frmDatosMateria"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub cmdBack_Click()
cancelarAltamodi = True
Me.Hide
End Sub

Private Sub cmdOK_Click()
cancelarAltamodi = False
Me.Hide
End Sub

