VERSION 5.00
Begin VB.Form frmDatosAlumno 
   BorderStyle     =   3  'Fixed Dialog
   ClientHeight    =   6510
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   7035
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   6510
   ScaleWidth      =   7035
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame2 
      Caption         =   "Controles"
      Height          =   1095
      Left            =   120
      TabIndex        =   11
      Top             =   5280
      Width           =   6855
      Begin VB.CommandButton cmdBack 
         Cancel          =   -1  'True
         Caption         =   "Volver"
         Height          =   615
         Left            =   4440
         TabIndex        =   10
         Top             =   240
         Width           =   1935
      End
      Begin VB.CommandButton cmdOK 
         Caption         =   "Ingresar"
         Height          =   615
         Left            =   480
         TabIndex        =   9
         Top             =   240
         Width           =   1935
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "Ingrese Datos"
      Height          =   4455
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   6855
      Begin VB.CheckBox chkActivo 
         Caption         =   "Activo"
         Height          =   255
         Left            =   2280
         TabIndex        =   7
         Top             =   3360
         Value           =   1  'Checked
         Width           =   4095
      End
      Begin VB.TextBox txtDatos 
         Height          =   375
         Index           =   6
         Left            =   2280
         MaxLength       =   25
         TabIndex        =   8
         Top             =   3720
         Width           =   4095
      End
      Begin VB.TextBox txtDatos 
         Height          =   375
         Index           =   5
         Left            =   2280
         MaxLength       =   1
         TabIndex        =   6
         Top             =   2880
         Width           =   4095
      End
      Begin VB.TextBox txtDatos 
         Height          =   375
         Index           =   4
         Left            =   2280
         MaxLength       =   1
         TabIndex        =   5
         Top             =   2400
         Width           =   4095
      End
      Begin VB.TextBox txtDatos 
         Height          =   375
         Index           =   3
         Left            =   2280
         MaxLength       =   8
         TabIndex        =   4
         Top             =   1920
         Width           =   4095
      End
      Begin VB.TextBox txtDatos 
         Height          =   375
         Index           =   2
         Left            =   2280
         MaxLength       =   3
         TabIndex        =   3
         Top             =   1440
         Width           =   4095
      End
      Begin VB.TextBox txtDatos 
         Height          =   375
         Index           =   1
         Left            =   2280
         MaxLength       =   10
         TabIndex        =   2
         Top             =   960
         Width           =   4095
      End
      Begin VB.TextBox txtDatos 
         Height          =   375
         Index           =   0
         Left            =   2280
         MaxLength       =   10
         TabIndex        =   1
         Top             =   480
         Width           =   4095
      End
      Begin VB.Label Label8 
         Caption         =   "Estado"
         Height          =   255
         Left            =   240
         TabIndex        =   19
         Top             =   3240
         Width           =   615
      End
      Begin VB.Label Label7 
         Caption         =   "Comentarios"
         Height          =   255
         Left            =   240
         TabIndex        =   18
         Top             =   3720
         Width           =   1095
      End
      Begin VB.Label Label6 
         Caption         =   "Division"
         Height          =   255
         Left            =   240
         TabIndex        =   17
         Top             =   2880
         Width           =   1815
      End
      Begin VB.Label Label5 
         Caption         =   "Año"
         Height          =   255
         Left            =   240
         TabIndex        =   16
         Top             =   2400
         Width           =   1815
      End
      Begin VB.Label Label4 
         Caption         =   "DNI Nº"
         Height          =   255
         Left            =   240
         TabIndex        =   15
         Top             =   1920
         Width           =   1815
      End
      Begin VB.Label Label3 
         Caption         =   "Edad"
         Height          =   255
         Left            =   240
         TabIndex        =   14
         Top             =   1440
         Width           =   1935
      End
      Begin VB.Label Label2 
         Caption         =   "Apellido"
         Height          =   255
         Left            =   240
         TabIndex        =   13
         Top             =   960
         Width           =   1815
      End
      Begin VB.Label Label1 
         Caption         =   "Nombre"
         Height          =   255
         Left            =   240
         TabIndex        =   12
         Top             =   480
         Width           =   1815
      End
   End
   Begin VB.Label Label9 
      Caption         =   "Para dar de Baja un Alumno, solo Desactive la Opcion Activo y opcionalmente ingrese un comentario del motivo de la baja."
      Height          =   495
      Left            =   120
      TabIndex        =   20
      Top             =   4680
      Width           =   6855
   End
End
Attribute VB_Name = "frmDatosAlumno"
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

