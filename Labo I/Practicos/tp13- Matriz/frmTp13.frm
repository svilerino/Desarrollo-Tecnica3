VERSION 5.00
Begin VB.Form frmTp13 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Tp12"
   ClientHeight    =   5310
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   6240
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5310
   ScaleWidth      =   6240
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdSalir 
      Cancel          =   -1  'True
      Caption         =   "&Salir"
      Height          =   615
      Left            =   2520
      TabIndex        =   27
      Top             =   3120
      Width           =   1455
   End
   Begin VB.CommandButton cmdTodo 
      Caption         =   "&Todo"
      Height          =   615
      Left            =   120
      TabIndex        =   26
      Top             =   4560
      Width           =   2295
   End
   Begin VB.CommandButton cmdHacer2 
      Caption         =   "&Llenar al azar sin repetir."
      Height          =   615
      Left            =   120
      TabIndex        =   25
      Top             =   3840
      Width           =   2295
   End
   Begin VB.CommandButton cmdHacer 
      Caption         =   "&Multiplicar y Mostrar."
      Height          =   615
      Left            =   120
      TabIndex        =   24
      Top             =   3120
      Width           =   2295
   End
   Begin VB.TextBox txtIngreso 
      Height          =   375
      Index           =   11
      Left            =   4560
      TabIndex        =   11
      Top             =   1080
      Width           =   1455
   End
   Begin VB.TextBox txtIngreso 
      Height          =   375
      Index           =   10
      Left            =   3120
      TabIndex        =   10
      Top             =   1080
      Width           =   1455
   End
   Begin VB.TextBox txtIngreso 
      Height          =   375
      Index           =   9
      Left            =   1680
      TabIndex        =   9
      Top             =   1080
      Width           =   1455
   End
   Begin VB.TextBox txtIngreso 
      Height          =   375
      Index           =   8
      Left            =   240
      TabIndex        =   8
      Top             =   1080
      Width           =   1455
   End
   Begin VB.TextBox txtIngreso 
      Height          =   375
      Index           =   7
      Left            =   4560
      TabIndex        =   7
      Top             =   720
      Width           =   1455
   End
   Begin VB.TextBox txtIngreso 
      Height          =   375
      Index           =   6
      Left            =   3120
      TabIndex        =   6
      Top             =   720
      Width           =   1455
   End
   Begin VB.TextBox txtIngreso 
      Height          =   375
      Index           =   5
      Left            =   1680
      TabIndex        =   5
      Top             =   720
      Width           =   1455
   End
   Begin VB.TextBox txtIngreso 
      Height          =   375
      Index           =   4
      Left            =   240
      TabIndex        =   4
      Top             =   720
      Width           =   1455
   End
   Begin VB.TextBox txtIngreso 
      Height          =   375
      Index           =   3
      Left            =   4560
      TabIndex        =   3
      Top             =   360
      Width           =   1455
   End
   Begin VB.TextBox txtIngreso 
      Height          =   375
      Index           =   2
      Left            =   3120
      TabIndex        =   2
      Top             =   360
      Width           =   1455
   End
   Begin VB.TextBox txtIngreso 
      Height          =   375
      Index           =   1
      Left            =   1680
      TabIndex        =   1
      Top             =   360
      Width           =   1455
   End
   Begin VB.TextBox txtIngreso 
      Height          =   375
      Index           =   0
      Left            =   240
      TabIndex        =   0
      Top             =   360
      Width           =   1455
   End
   Begin VB.Label lblSalida 
      Height          =   375
      Index           =   11
      Left            =   4560
      TabIndex        =   23
      Top             =   2280
      Width           =   1455
   End
   Begin VB.Label lblSalida 
      Height          =   375
      Index           =   10
      Left            =   3120
      TabIndex        =   22
      Top             =   2280
      Width           =   1455
   End
   Begin VB.Label lblSalida 
      Height          =   375
      Index           =   9
      Left            =   1680
      TabIndex        =   21
      Top             =   2280
      Width           =   1455
   End
   Begin VB.Label lblSalida 
      Height          =   375
      Index           =   8
      Left            =   240
      TabIndex        =   20
      Top             =   2280
      Width           =   1455
   End
   Begin VB.Label lblSalida 
      Height          =   375
      Index           =   7
      Left            =   4560
      TabIndex        =   19
      Top             =   1920
      Width           =   1455
   End
   Begin VB.Label lblSalida 
      Height          =   375
      Index           =   6
      Left            =   3120
      TabIndex        =   18
      Top             =   1920
      Width           =   1455
   End
   Begin VB.Label lblSalida 
      Height          =   375
      Index           =   5
      Left            =   1680
      TabIndex        =   17
      Top             =   1920
      Width           =   1455
   End
   Begin VB.Label lblSalida 
      Height          =   375
      Index           =   4
      Left            =   240
      TabIndex        =   16
      Top             =   1920
      Width           =   1455
   End
   Begin VB.Label lblSalida 
      Height          =   375
      Index           =   3
      Left            =   4560
      TabIndex        =   15
      Top             =   1560
      Width           =   1455
   End
   Begin VB.Label lblSalida 
      Height          =   375
      Index           =   2
      Left            =   3120
      TabIndex        =   14
      Top             =   1560
      Width           =   1455
   End
   Begin VB.Label lblSalida 
      Height          =   375
      Index           =   1
      Left            =   1680
      TabIndex        =   13
      Top             =   1560
      Width           =   1455
   End
   Begin VB.Label lblSalida 
      Height          =   375
      Index           =   0
      Left            =   240
      TabIndex        =   12
      Top             =   1560
      Width           =   1455
   End
End
Attribute VB_Name = "frmTp13"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Private Sub Cargar(ByRef Matriz() As Byte)
Dim Fila As Byte, Columna As Byte, cont As Byte
For Fila = 0 To 2
    For Columna = 0 To 3
        Matriz(Fila, Columna) = Val(txtIngreso(cont).Text)
        cont = cont + 1
        Matriz(Fila, Columna) = Matriz(Fila, Columna) * 2
    Next Columna
Next Fila
End Sub
Private Sub Mostrar(ByRef Matriz() As Byte)
Dim Fila As Byte, Columna As Byte, cont As Byte
For Fila = 0 To 2
    For Columna = 0 To 3
        lblSalida(cont).Caption = Str(Matriz(Fila, Columna))
        cont = cont + 1
    Next Columna
Next Fila
End Sub
Private Sub Mostrar2(ByRef Matriz() As Byte)
Dim Fila As Byte, Columna As Byte, cont As Byte
For Fila = 0 To 2
    For Columna = 0 To 3
        txtIngreso(cont).Text = Str(Matriz(Fila, Columna))
        cont = cont + 1
    Next Columna
Next Fila
End Sub

Private Sub Llenar(ByRef Matriz() As Byte)
Dim Fila As Byte, Columna As Byte, cont As Byte, Numero As Byte
Fila = 0: Columna = 0
Matriz(Fila, Columna) = Fix(16 * Rnd)
For cont = 1 To 11
    Columna = Columna + 1
    If Columna > 3 Then
        Columna = 0: Fila = Fila + 1
    End If
    Do: DoEvents
        Numero = Fix(16 * Rnd)
    Loop While Esta2(Matriz(), Numero, Fila, Columna)
    Matriz(Fila, Columna) = Numero
Next cont
End Sub
Private Sub Iniciar(ByRef Matriz() As Byte)
Dim Fila As Byte, Columna As Byte
For Fila = 0 To 2
    For Columna = 0 To 3
        Matriz(Fila, Columna) = 99
    Next Columna
Next Fila
End Sub
Private Function Esta(ByRef Matriz() As Byte, ByVal Numero As Byte) As Boolean
Dim Fila As Byte, Columna As Byte
For Fila = 0 To 2
    For Columna = 0 To 3
        If Matriz(Fila, Columna) = Numero Then Esta = True
    Next Columna
Next Fila
End Function
Private Function Esta2(ByRef Matriz() As Byte, ByVal Numero As Byte, ByVal f0 As Byte, ByVal c0 As Byte) As Boolean
Dim Fila As Byte, Columna As Byte, ffinal As Byte, cfinal As Byte, encontrado As Boolean
encontrado = False
If c0 = 0 Then
    ffinal = f0 - 1
Else
    ffinal = f0
End If
Fila = 0
Do: DoEvents
    Columna = 0
    If Fila = f0 Then
        cfinal = c0 - 1
    Else
        cfinal = 3
    End If
    
    Do: DoEvents
    If Matriz(Fila, Columna) = Numero Then encontrado = True
        Columna = Columna + 1
    Loop While Not (encontrado Or Columna > cfinal)
    Fila = Fila + 1
Loop While Not (encontrado Or Fila > ffinal)
Esta2 = encontrado
End Function

Private Sub cmdHacer_Click()
Dim Matriz(2, 3) As Byte
Cargar Matriz()
Mostrar Matriz()
End Sub

Private Sub cmdHacer2_Click()
Dim Matriz(2, 3) As Byte
Iniciar Matriz()
Llenar Matriz()
Mostrar2 Matriz()
End Sub

Private Sub cmdSalir_Click()
Form_Unload 1
End Sub

Private Sub cmdTodo_Click()
cmdHacer_Click
cmdHacer2_Click
End Sub

Private Sub Form_Load()
Randomize Timer
End Sub

Private Sub Form_Unload(Cancel As Integer)
End
End Sub

