VERSION 5.00
Begin VB.Form frmTp7 
   BackColor       =   &H00404040&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Tp7"
   ClientHeight    =   5040
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   6810
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Moveable        =   0   'False
   ScaleHeight     =   5040
   ScaleWidth      =   6810
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Command2 
      BackColor       =   &H0000C000&
      Cancel          =   -1  'True
      Caption         =   "&Salir"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   1800
      MaskColor       =   &H00000080&
      Style           =   1  'Graphical
      TabIndex        =   24
      Top             =   4200
      Width           =   3015
   End
   Begin VB.CommandButton Command1 
      BackColor       =   &H00C0FFFF&
      Caption         =   "&Borrar"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   3480
      MaskColor       =   &H00000080&
      Style           =   1  'Graphical
      TabIndex        =   23
      Top             =   3360
      Width           =   3015
   End
   Begin VB.CommandButton cmdHacer 
      BackColor       =   &H000080FF&
      Caption         =   "&Cargar,ordenar y mostrar"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   240
      MaskColor       =   &H00000080&
      Style           =   1  'Graphical
      TabIndex        =   22
      Top             =   3360
      Width           =   3015
   End
   Begin VB.TextBox txtSalida2 
      BackColor       =   &H8000000F&
      Height          =   375
      Index           =   4
      Left            =   5160
      Locked          =   -1  'True
      TabIndex        =   21
      Top             =   2400
      Width           =   1335
   End
   Begin VB.TextBox txtSalida2 
      BackColor       =   &H8000000F&
      Height          =   375
      Index           =   3
      Left            =   5160
      Locked          =   -1  'True
      TabIndex        =   20
      Top             =   1920
      Width           =   1335
   End
   Begin VB.TextBox txtSalida2 
      BackColor       =   &H8000000F&
      Height          =   375
      Index           =   2
      Left            =   5160
      Locked          =   -1  'True
      TabIndex        =   19
      Top             =   1440
      Width           =   1335
   End
   Begin VB.TextBox txtSalida2 
      BackColor       =   &H8000000F&
      Height          =   375
      Index           =   1
      Left            =   5160
      Locked          =   -1  'True
      TabIndex        =   18
      Top             =   960
      Width           =   1335
   End
   Begin VB.TextBox txtSalida 
      BackColor       =   &H8000000F&
      Height          =   375
      Index           =   4
      Left            =   3720
      Locked          =   -1  'True
      TabIndex        =   16
      Top             =   2400
      Width           =   1335
   End
   Begin VB.TextBox txtSalida 
      BackColor       =   &H8000000F&
      Height          =   375
      Index           =   3
      Left            =   3720
      Locked          =   -1  'True
      TabIndex        =   15
      Top             =   1920
      Width           =   1335
   End
   Begin VB.TextBox txtSalida 
      BackColor       =   &H8000000F&
      Height          =   375
      Index           =   2
      Left            =   3720
      Locked          =   -1  'True
      TabIndex        =   14
      Top             =   1440
      Width           =   1335
   End
   Begin VB.TextBox txtSalida 
      BackColor       =   &H8000000F&
      Height          =   375
      Index           =   1
      Left            =   3720
      Locked          =   -1  'True
      TabIndex        =   13
      Top             =   960
      Width           =   1335
   End
   Begin VB.TextBox txtIngreso2 
      Height          =   375
      Index           =   4
      Left            =   1800
      TabIndex        =   11
      Top             =   2400
      Width           =   1455
   End
   Begin VB.TextBox txtIngreso2 
      Height          =   375
      Index           =   3
      Left            =   1800
      TabIndex        =   10
      Top             =   1920
      Width           =   1455
   End
   Begin VB.TextBox txtIngreso2 
      Height          =   375
      Index           =   2
      Left            =   1800
      TabIndex        =   9
      Top             =   1440
      Width           =   1455
   End
   Begin VB.TextBox txtIngreso2 
      Height          =   375
      Index           =   1
      Left            =   1800
      TabIndex        =   8
      Top             =   960
      Width           =   1455
   End
   Begin VB.Frame frmSalida 
      BackColor       =   &H000000FF&
      Caption         =   "Salida"
      Height          =   2895
      Left            =   3600
      TabIndex        =   6
      Top             =   120
      Width           =   3015
      Begin VB.TextBox txtSalida2 
         BackColor       =   &H8000000F&
         Height          =   375
         Index           =   0
         Left            =   1560
         Locked          =   -1  'True
         TabIndex        =   17
         Top             =   360
         Width           =   1335
      End
      Begin VB.TextBox txtSalida 
         BackColor       =   &H8000000F&
         Height          =   375
         Index           =   0
         Left            =   120
         Locked          =   -1  'True
         TabIndex        =   12
         Top             =   360
         Width           =   1335
      End
   End
   Begin VB.TextBox txtIngreso 
      Height          =   375
      Index           =   4
      Left            =   240
      TabIndex        =   5
      Top             =   2400
      Width           =   1455
   End
   Begin VB.TextBox txtIngreso 
      Height          =   375
      Index           =   3
      Left            =   240
      TabIndex        =   4
      Top             =   1920
      Width           =   1455
   End
   Begin VB.TextBox txtIngreso 
      Height          =   375
      Index           =   2
      Left            =   240
      TabIndex        =   3
      Top             =   1440
      Width           =   1455
   End
   Begin VB.TextBox txtIngreso 
      Height          =   375
      Index           =   1
      Left            =   240
      TabIndex        =   2
      Top             =   960
      Width           =   1455
   End
   Begin VB.Frame frmIngreso 
      BackColor       =   &H000000FF&
      Caption         =   "Ingreso"
      Height          =   2895
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   3255
      Begin VB.TextBox txtIngreso2 
         Height          =   375
         Index           =   0
         Left            =   1680
         TabIndex        =   7
         Top             =   360
         Width           =   1455
      End
      Begin VB.TextBox txtIngreso 
         Height          =   375
         Index           =   0
         Left            =   120
         TabIndex        =   1
         Top             =   360
         Width           =   1455
      End
   End
End
Attribute VB_Name = "frmTp7"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Private Sub Swap(ByRef vntX As Variant, ByRef vntY As Variant)
Dim vntAuxi As Variant
vntAuxi = vntX
vntX = vntY
vntY = vntAuxi
End Sub

Private Sub Cargar(ByRef vector() As String, ByRef vector2() As Integer)
Dim byteX As Byte
For byteX = 0 To 4
    vector(byteX) = txtIngreso(byteX).Text
    vector2(byteX) = Val(txtIngreso2(byteX).Text)
Next byteX
End Sub
Private Sub Mostrar(ByRef vector() As String, ByRef vector2() As Integer)
Dim byteX As Byte
For byteX = 0 To 4
    txtSalida(byteX) = vector(byteX)
    txtSalida2(byteX) = vector2(byteX)
Next byteX
End Sub
Private Sub Ordenar(ByRef vector() As String, ByRef vector2() As Integer, ByVal Tamaño As Integer)
Dim byteX As Byte
Dim bytey As Byte
For byteX = 0 To Tamaño - 1
    For bytey = byteX + 1 To Tamaño
        If vector2(bytey) < vector2(byteX) Then
            Swap vector2(bytey), vector2(byteX)
            Swap vector(bytey), vector(byteX)
        End If
    Next bytey
Next byteX
End Sub

Private Sub cmdHacer_Click()
Dim strVectorproducto(4) As String, intVectorprecio(4) As Integer
Cargar strVectorproducto, intVectorprecio
Ordenar strVectorproducto, intVectorprecio, 4
Mostrar strVectorproducto, intVectorprecio
End Sub

Private Sub Command1_Click()
Dim byteX As Byte
For byteX = 0 To 4
txtIngreso(byteX).Text = ""
txtIngreso2(byteX).Text = ""
txtSalida(byteX).Text = ""
txtSalida2(byteX).Text = ""
Next byteX
End Sub

Private Sub Command2_Click()
Form_Unload 0
End Sub

Private Sub Form_Unload(Cancel As Integer)
End
End Sub
