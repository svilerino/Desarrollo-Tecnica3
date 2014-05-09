VERSION 5.00
Begin VB.Form frm3Eva2trim 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "3eva2trim"
   ClientHeight    =   4950
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   6825
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4950
   ScaleWidth      =   6825
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton cmdSalir 
      Cancel          =   -1  'True
      Caption         =   "&Salir"
      Height          =   495
      Left            =   5040
      TabIndex        =   101
      Top             =   840
      Width           =   1695
   End
   Begin VB.CommandButton cmdHacer 
      Caption         =   "&Recorrer"
      Height          =   495
      Left            =   5040
      TabIndex        =   100
      Top             =   240
      Width           =   1695
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   99
      Left            =   4440
      Locked          =   -1  'True
      TabIndex        =   99
      Top             =   4440
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   98
      Left            =   3960
      Locked          =   -1  'True
      TabIndex        =   98
      Top             =   4440
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   97
      Left            =   3480
      Locked          =   -1  'True
      TabIndex        =   97
      Top             =   4440
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   96
      Left            =   3000
      Locked          =   -1  'True
      TabIndex        =   96
      Top             =   4440
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   95
      Left            =   2520
      Locked          =   -1  'True
      TabIndex        =   95
      Top             =   4440
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   94
      Left            =   2040
      Locked          =   -1  'True
      TabIndex        =   94
      Top             =   4440
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   93
      Left            =   1560
      Locked          =   -1  'True
      TabIndex        =   93
      Top             =   4440
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   92
      Left            =   1080
      Locked          =   -1  'True
      TabIndex        =   92
      Top             =   4440
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   91
      Left            =   600
      Locked          =   -1  'True
      TabIndex        =   91
      Top             =   4440
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   90
      Left            =   120
      Locked          =   -1  'True
      TabIndex        =   90
      Top             =   4440
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   89
      Left            =   4440
      Locked          =   -1  'True
      TabIndex        =   89
      Top             =   3960
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   88
      Left            =   3960
      Locked          =   -1  'True
      TabIndex        =   88
      Top             =   3960
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   87
      Left            =   3480
      Locked          =   -1  'True
      TabIndex        =   87
      Top             =   3960
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   86
      Left            =   3000
      Locked          =   -1  'True
      TabIndex        =   86
      Top             =   3960
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   85
      Left            =   2520
      Locked          =   -1  'True
      TabIndex        =   85
      Top             =   3960
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   84
      Left            =   2040
      Locked          =   -1  'True
      TabIndex        =   84
      Top             =   3960
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   83
      Left            =   1560
      Locked          =   -1  'True
      TabIndex        =   83
      Top             =   3960
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   82
      Left            =   1080
      Locked          =   -1  'True
      TabIndex        =   82
      Top             =   3960
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   81
      Left            =   600
      Locked          =   -1  'True
      TabIndex        =   81
      Top             =   3960
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   80
      Left            =   120
      Locked          =   -1  'True
      TabIndex        =   80
      Top             =   3960
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   79
      Left            =   4440
      Locked          =   -1  'True
      TabIndex        =   79
      Top             =   3480
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   78
      Left            =   3960
      Locked          =   -1  'True
      TabIndex        =   78
      Top             =   3480
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   77
      Left            =   3480
      Locked          =   -1  'True
      TabIndex        =   77
      Top             =   3480
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   76
      Left            =   3000
      Locked          =   -1  'True
      TabIndex        =   76
      Top             =   3480
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   75
      Left            =   2520
      Locked          =   -1  'True
      TabIndex        =   75
      Top             =   3480
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   74
      Left            =   2040
      Locked          =   -1  'True
      TabIndex        =   74
      Top             =   3480
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   73
      Left            =   1560
      Locked          =   -1  'True
      TabIndex        =   73
      Top             =   3480
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   72
      Left            =   1080
      Locked          =   -1  'True
      TabIndex        =   72
      Top             =   3480
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   71
      Left            =   600
      Locked          =   -1  'True
      TabIndex        =   71
      Top             =   3480
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   70
      Left            =   120
      Locked          =   -1  'True
      TabIndex        =   70
      Top             =   3480
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   69
      Left            =   4440
      Locked          =   -1  'True
      TabIndex        =   69
      Top             =   3000
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   68
      Left            =   3960
      Locked          =   -1  'True
      TabIndex        =   68
      Top             =   3000
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   67
      Left            =   3480
      Locked          =   -1  'True
      TabIndex        =   67
      Top             =   3000
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   66
      Left            =   3000
      Locked          =   -1  'True
      TabIndex        =   66
      Top             =   3000
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   65
      Left            =   2520
      Locked          =   -1  'True
      TabIndex        =   65
      Top             =   3000
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   64
      Left            =   2040
      Locked          =   -1  'True
      TabIndex        =   64
      Top             =   3000
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   63
      Left            =   1560
      Locked          =   -1  'True
      TabIndex        =   63
      Top             =   3000
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   62
      Left            =   1080
      Locked          =   -1  'True
      TabIndex        =   62
      Top             =   3000
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   61
      Left            =   600
      Locked          =   -1  'True
      TabIndex        =   61
      Top             =   3000
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   60
      Left            =   120
      Locked          =   -1  'True
      TabIndex        =   60
      Top             =   3000
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   59
      Left            =   4440
      Locked          =   -1  'True
      TabIndex        =   59
      Top             =   2520
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   58
      Left            =   3960
      Locked          =   -1  'True
      TabIndex        =   58
      Top             =   2520
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   57
      Left            =   3480
      Locked          =   -1  'True
      TabIndex        =   57
      Top             =   2520
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   56
      Left            =   3000
      Locked          =   -1  'True
      TabIndex        =   56
      Top             =   2520
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   55
      Left            =   2520
      Locked          =   -1  'True
      TabIndex        =   55
      Top             =   2520
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   54
      Left            =   2040
      Locked          =   -1  'True
      TabIndex        =   54
      Top             =   2520
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   53
      Left            =   1560
      Locked          =   -1  'True
      TabIndex        =   53
      Top             =   2520
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   52
      Left            =   1080
      Locked          =   -1  'True
      TabIndex        =   52
      Top             =   2520
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   51
      Left            =   600
      Locked          =   -1  'True
      TabIndex        =   51
      Top             =   2520
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   50
      Left            =   120
      Locked          =   -1  'True
      TabIndex        =   50
      Top             =   2520
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   49
      Left            =   4440
      Locked          =   -1  'True
      TabIndex        =   49
      Top             =   2040
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   48
      Left            =   3960
      Locked          =   -1  'True
      TabIndex        =   48
      Top             =   2040
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   47
      Left            =   3480
      Locked          =   -1  'True
      TabIndex        =   47
      Top             =   2040
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   46
      Left            =   3000
      Locked          =   -1  'True
      TabIndex        =   46
      Top             =   2040
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   45
      Left            =   2520
      Locked          =   -1  'True
      TabIndex        =   45
      Top             =   2040
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   44
      Left            =   2040
      Locked          =   -1  'True
      TabIndex        =   44
      Top             =   2040
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   43
      Left            =   1560
      Locked          =   -1  'True
      TabIndex        =   43
      Top             =   2040
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   42
      Left            =   1080
      Locked          =   -1  'True
      TabIndex        =   42
      Top             =   2040
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   41
      Left            =   600
      Locked          =   -1  'True
      TabIndex        =   41
      Top             =   2040
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   40
      Left            =   120
      Locked          =   -1  'True
      TabIndex        =   40
      Top             =   2040
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   39
      Left            =   4440
      Locked          =   -1  'True
      TabIndex        =   39
      Top             =   1560
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   38
      Left            =   3960
      Locked          =   -1  'True
      TabIndex        =   38
      Top             =   1560
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   37
      Left            =   3480
      Locked          =   -1  'True
      TabIndex        =   37
      Top             =   1560
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   36
      Left            =   3000
      Locked          =   -1  'True
      TabIndex        =   36
      Top             =   1560
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   35
      Left            =   2520
      Locked          =   -1  'True
      TabIndex        =   35
      Top             =   1560
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   34
      Left            =   2040
      Locked          =   -1  'True
      TabIndex        =   34
      Top             =   1560
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   33
      Left            =   1560
      Locked          =   -1  'True
      TabIndex        =   33
      Top             =   1560
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   32
      Left            =   1080
      Locked          =   -1  'True
      TabIndex        =   32
      Top             =   1560
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   31
      Left            =   600
      Locked          =   -1  'True
      TabIndex        =   31
      Top             =   1560
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   30
      Left            =   120
      Locked          =   -1  'True
      TabIndex        =   30
      Top             =   1560
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   29
      Left            =   4440
      Locked          =   -1  'True
      TabIndex        =   29
      Top             =   1080
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   28
      Left            =   3960
      Locked          =   -1  'True
      TabIndex        =   28
      Top             =   1080
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   27
      Left            =   3480
      Locked          =   -1  'True
      TabIndex        =   27
      Top             =   1080
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   26
      Left            =   3000
      Locked          =   -1  'True
      TabIndex        =   26
      Top             =   1080
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   25
      Left            =   2520
      Locked          =   -1  'True
      TabIndex        =   25
      Top             =   1080
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   24
      Left            =   2040
      Locked          =   -1  'True
      TabIndex        =   24
      Top             =   1080
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   23
      Left            =   1560
      Locked          =   -1  'True
      TabIndex        =   23
      Top             =   1080
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   22
      Left            =   1080
      Locked          =   -1  'True
      TabIndex        =   22
      Top             =   1080
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   21
      Left            =   600
      Locked          =   -1  'True
      TabIndex        =   21
      Top             =   1080
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   20
      Left            =   120
      Locked          =   -1  'True
      TabIndex        =   20
      Top             =   1080
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   19
      Left            =   4440
      Locked          =   -1  'True
      TabIndex        =   19
      Top             =   600
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   18
      Left            =   3960
      Locked          =   -1  'True
      TabIndex        =   18
      Top             =   600
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   17
      Left            =   3480
      Locked          =   -1  'True
      TabIndex        =   17
      Top             =   600
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   16
      Left            =   3000
      Locked          =   -1  'True
      TabIndex        =   16
      Top             =   600
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   15
      Left            =   2520
      Locked          =   -1  'True
      TabIndex        =   15
      Top             =   600
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   14
      Left            =   2040
      Locked          =   -1  'True
      TabIndex        =   14
      Top             =   600
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   13
      Left            =   1560
      Locked          =   -1  'True
      TabIndex        =   13
      Top             =   600
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   12
      Left            =   1080
      Locked          =   -1  'True
      TabIndex        =   12
      Top             =   600
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   11
      Left            =   600
      Locked          =   -1  'True
      TabIndex        =   11
      Top             =   600
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   10
      Left            =   120
      Locked          =   -1  'True
      TabIndex        =   10
      Top             =   600
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   9
      Left            =   4440
      Locked          =   -1  'True
      TabIndex        =   9
      Top             =   120
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   8
      Left            =   3960
      Locked          =   -1  'True
      TabIndex        =   8
      Top             =   120
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   7
      Left            =   3480
      Locked          =   -1  'True
      TabIndex        =   7
      Top             =   120
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   6
      Left            =   3000
      Locked          =   -1  'True
      TabIndex        =   6
      Top             =   120
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   5
      Left            =   2520
      Locked          =   -1  'True
      TabIndex        =   5
      Top             =   120
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   4
      Left            =   2040
      Locked          =   -1  'True
      TabIndex        =   4
      Top             =   120
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   3
      Left            =   1560
      Locked          =   -1  'True
      TabIndex        =   3
      Top             =   120
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   2
      Left            =   1080
      Locked          =   -1  'True
      TabIndex        =   2
      Top             =   120
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   1
      Left            =   600
      Locked          =   -1  'True
      TabIndex        =   1
      Top             =   120
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   0
      Left            =   120
      Locked          =   -1  'True
      TabIndex        =   0
      Top             =   120
      Width           =   375
   End
End
Attribute VB_Name = "frm3Eva2trim"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
'Una matriz de 10*10 se llena al azar con 0 y 1. Asegurando que haya un 1 en el elemento (0,0), mostrar el recorrido
'de un bicho que camina por los 1. Se puede mover tanto en vertical como en horizontal y diagonal en cualquier sentido,
'pero nunca volver a atrás.
'Guardar la evaluación como 3eva2trim en carpeta del mismo nombre en el raíz de la cuenta del usuario - Poner datos
'del alumno y el enunciado del problema al principio del código y título en la solapa del Form.
'----------------------------------------------------------------------------------------------------
'Alumno: Vileriño,Silvio
'Curso: 4to 2da

Private Sub cmdHacer_Click() 'declara matriz y llama a procedimientos
Dim Matriz(9, 9) As Byte
frm3Eva2trim.Caption = ""
llenar Matriz()
Mostrar Matriz()
Limpiartxt
Caminar Matriz(), 0, 0
End Sub
Private Sub llenar(ByRef Matriz() As Byte) 'llena de 0 y 1 al azar, teniendo en cuenta la primer posicion con 1
Dim x As Byte
Do: DoEvents
    For x = 0 To 99
        Matriz(x \ 10, x Mod 10) = CInt(Rnd)
    Next x
Loop While Not Matriz(0, 0) = 1
End Sub
Private Sub Mostrar(ByRef Matriz() As Byte) 'muestra la matriz en un vector de textbox
Dim x As Byte
For x = 0 To 99
    txtMatriz(x).Text = Str(Matriz(x \ 10, x Mod 10))
Next x
End Sub
Private Sub Limpiartxt() 'limpia los colores de los textbox
Dim x As Byte
For x = 0 To 99
    txtMatriz(x).BackColor = vbWhite
Next x
End Sub
Private Sub Caminar(ByRef Matriz() As Byte, ByVal fila As Integer, ByVal columna As Integer)
'recorre la matriz saltando en los unos que tiene alrededor en sentido horario
Dim f As Integer, c As Integer, hayuno As Boolean, cont As Byte, color As Byte: cont = 1: color = 255
Do: DoEvents
hayuno = False
For f = -1 To 1 'recorre una submatriz
    For c = -1 To 1
        If (fila + f >= 0 And fila + f <= 9) Then
            If (columna + c >= 0 And columna + c <= 9) Then 'valida que no se salga de rango
                If (f <> 0 Or c <> 0) Then 'valida no pisar la posicion del medio
                    If Matriz(fila + f, columna + c) = 1 Then 'si es un uno
                        hayuno = True
                        Matriz(fila, columna) = 99
                        txtMatriz(fila * 10 + columna).BackColor = RGB(color, 233, 255)
                        fila = fila + f
                        columna = columna + c
                        txtMatriz(fila * 10 + columna).BackColor = vbBlue
                        MsgBox "Siguiente Pisada"
                        cont = cont + 1
                        color = color - 5
                    End If 'salta a la posicion del 1,cambiando la anterior por 99 para que no pueda volver
                End If
            End If
        End If
    Next c
Next f
Loop While (hayuno) 'se repite hasta que no haya unos alrededor de la posicion
frm3Eva2trim.Caption = Str(cont) & " Lugar(es) pisados" 'muestra la cantidad de lugares recorridos
MsgBox "Fin del recorrido, encerrado entre ceros"
End Sub

Private Sub cmdSalir_Click()
Form_Unload 0
End Sub

Private Sub Form_Load()
Randomize Timer
End Sub

Private Sub Form_Unload(Cancel As Integer)
End
End Sub
