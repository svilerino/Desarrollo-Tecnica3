VERSION 5.00
Begin VB.Form frmpractica 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Practica"
   ClientHeight    =   4890
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   6390
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4890
   ScaleWidth      =   6390
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdHacer 
      Caption         =   "&Hacer"
      Height          =   495
      Left            =   4920
      TabIndex        =   100
      Top             =   120
      Width           =   1335
   End
   Begin VB.TextBox txtMatriz 
      Height          =   300
      Index           =   99
      Left            =   4440
      Locked          =   -1  'True
      TabIndex        =   99
      Top             =   4440
      Width           =   300
   End
   Begin VB.TextBox txtMatriz 
      Height          =   300
      Index           =   98
      Left            =   3960
      Locked          =   -1  'True
      TabIndex        =   98
      Top             =   4440
      Width           =   300
   End
   Begin VB.TextBox txtMatriz 
      Height          =   300
      Index           =   97
      Left            =   3480
      Locked          =   -1  'True
      TabIndex        =   97
      Top             =   4440
      Width           =   300
   End
   Begin VB.TextBox txtMatriz 
      Height          =   300
      Index           =   96
      Left            =   3000
      Locked          =   -1  'True
      TabIndex        =   96
      Top             =   4440
      Width           =   300
   End
   Begin VB.TextBox txtMatriz 
      Height          =   300
      Index           =   95
      Left            =   2520
      Locked          =   -1  'True
      TabIndex        =   95
      Top             =   4440
      Width           =   300
   End
   Begin VB.TextBox txtMatriz 
      Height          =   300
      Index           =   94
      Left            =   2040
      Locked          =   -1  'True
      TabIndex        =   94
      Top             =   4440
      Width           =   300
   End
   Begin VB.TextBox txtMatriz 
      Height          =   300
      Index           =   93
      Left            =   1560
      Locked          =   -1  'True
      TabIndex        =   93
      Top             =   4440
      Width           =   300
   End
   Begin VB.TextBox txtMatriz 
      Height          =   300
      Index           =   92
      Left            =   1080
      Locked          =   -1  'True
      TabIndex        =   92
      Top             =   4440
      Width           =   300
   End
   Begin VB.TextBox txtMatriz 
      Height          =   300
      Index           =   91
      Left            =   600
      Locked          =   -1  'True
      TabIndex        =   91
      Top             =   4440
      Width           =   300
   End
   Begin VB.TextBox txtMatriz 
      Height          =   300
      Index           =   90
      Left            =   120
      Locked          =   -1  'True
      TabIndex        =   90
      Top             =   4440
      Width           =   300
   End
   Begin VB.TextBox txtMatriz 
      Height          =   300
      Index           =   89
      Left            =   4440
      Locked          =   -1  'True
      TabIndex        =   89
      Top             =   3960
      Width           =   300
   End
   Begin VB.TextBox txtMatriz 
      Height          =   300
      Index           =   88
      Left            =   3960
      Locked          =   -1  'True
      TabIndex        =   88
      Top             =   3960
      Width           =   300
   End
   Begin VB.TextBox txtMatriz 
      Height          =   300
      Index           =   87
      Left            =   3480
      Locked          =   -1  'True
      TabIndex        =   87
      Top             =   3960
      Width           =   300
   End
   Begin VB.TextBox txtMatriz 
      Height          =   300
      Index           =   86
      Left            =   3000
      Locked          =   -1  'True
      TabIndex        =   86
      Top             =   3960
      Width           =   300
   End
   Begin VB.TextBox txtMatriz 
      Height          =   300
      Index           =   85
      Left            =   2520
      Locked          =   -1  'True
      TabIndex        =   85
      Top             =   3960
      Width           =   300
   End
   Begin VB.TextBox txtMatriz 
      Height          =   300
      Index           =   84
      Left            =   2040
      Locked          =   -1  'True
      TabIndex        =   84
      Top             =   3960
      Width           =   300
   End
   Begin VB.TextBox txtMatriz 
      Height          =   300
      Index           =   83
      Left            =   1560
      Locked          =   -1  'True
      TabIndex        =   83
      Top             =   3960
      Width           =   300
   End
   Begin VB.TextBox txtMatriz 
      Height          =   300
      Index           =   82
      Left            =   1080
      Locked          =   -1  'True
      TabIndex        =   82
      Top             =   3960
      Width           =   300
   End
   Begin VB.TextBox txtMatriz 
      Height          =   300
      Index           =   81
      Left            =   600
      Locked          =   -1  'True
      TabIndex        =   81
      Top             =   3960
      Width           =   300
   End
   Begin VB.TextBox txtMatriz 
      Height          =   300
      Index           =   80
      Left            =   120
      Locked          =   -1  'True
      TabIndex        =   80
      Top             =   3960
      Width           =   300
   End
   Begin VB.TextBox txtMatriz 
      Height          =   300
      Index           =   79
      Left            =   4440
      Locked          =   -1  'True
      TabIndex        =   79
      Top             =   3480
      Width           =   300
   End
   Begin VB.TextBox txtMatriz 
      Height          =   300
      Index           =   78
      Left            =   3960
      Locked          =   -1  'True
      TabIndex        =   78
      Top             =   3480
      Width           =   300
   End
   Begin VB.TextBox txtMatriz 
      Height          =   300
      Index           =   77
      Left            =   3480
      Locked          =   -1  'True
      TabIndex        =   77
      Top             =   3480
      Width           =   300
   End
   Begin VB.TextBox txtMatriz 
      Height          =   300
      Index           =   76
      Left            =   3000
      Locked          =   -1  'True
      TabIndex        =   76
      Top             =   3480
      Width           =   300
   End
   Begin VB.TextBox txtMatriz 
      Height          =   300
      Index           =   75
      Left            =   2520
      Locked          =   -1  'True
      TabIndex        =   75
      Top             =   3480
      Width           =   300
   End
   Begin VB.TextBox txtMatriz 
      Height          =   300
      Index           =   74
      Left            =   2040
      Locked          =   -1  'True
      TabIndex        =   74
      Top             =   3480
      Width           =   300
   End
   Begin VB.TextBox txtMatriz 
      Height          =   300
      Index           =   73
      Left            =   1560
      Locked          =   -1  'True
      TabIndex        =   73
      Top             =   3480
      Width           =   300
   End
   Begin VB.TextBox txtMatriz 
      Height          =   300
      Index           =   72
      Left            =   1080
      Locked          =   -1  'True
      TabIndex        =   72
      Top             =   3480
      Width           =   300
   End
   Begin VB.TextBox txtMatriz 
      Height          =   300
      Index           =   71
      Left            =   600
      Locked          =   -1  'True
      TabIndex        =   71
      Top             =   3480
      Width           =   300
   End
   Begin VB.TextBox txtMatriz 
      Height          =   300
      Index           =   70
      Left            =   120
      Locked          =   -1  'True
      TabIndex        =   70
      Top             =   3480
      Width           =   300
   End
   Begin VB.TextBox txtMatriz 
      Height          =   300
      Index           =   69
      Left            =   4440
      Locked          =   -1  'True
      TabIndex        =   69
      Top             =   3000
      Width           =   300
   End
   Begin VB.TextBox txtMatriz 
      Height          =   300
      Index           =   68
      Left            =   3960
      Locked          =   -1  'True
      TabIndex        =   68
      Top             =   3000
      Width           =   300
   End
   Begin VB.TextBox txtMatriz 
      Height          =   300
      Index           =   67
      Left            =   3480
      Locked          =   -1  'True
      TabIndex        =   67
      Top             =   3000
      Width           =   300
   End
   Begin VB.TextBox txtMatriz 
      Height          =   300
      Index           =   66
      Left            =   3000
      Locked          =   -1  'True
      TabIndex        =   66
      Top             =   3000
      Width           =   300
   End
   Begin VB.TextBox txtMatriz 
      Height          =   300
      Index           =   65
      Left            =   2520
      Locked          =   -1  'True
      TabIndex        =   65
      Top             =   3000
      Width           =   300
   End
   Begin VB.TextBox txtMatriz 
      Height          =   300
      Index           =   64
      Left            =   2040
      Locked          =   -1  'True
      TabIndex        =   64
      Top             =   3000
      Width           =   300
   End
   Begin VB.TextBox txtMatriz 
      Height          =   300
      Index           =   63
      Left            =   1560
      Locked          =   -1  'True
      TabIndex        =   63
      Top             =   3000
      Width           =   300
   End
   Begin VB.TextBox txtMatriz 
      Height          =   300
      Index           =   62
      Left            =   1080
      Locked          =   -1  'True
      TabIndex        =   62
      Top             =   3000
      Width           =   300
   End
   Begin VB.TextBox txtMatriz 
      Height          =   300
      Index           =   61
      Left            =   600
      Locked          =   -1  'True
      TabIndex        =   61
      Top             =   3000
      Width           =   300
   End
   Begin VB.TextBox txtMatriz 
      Height          =   300
      Index           =   60
      Left            =   120
      Locked          =   -1  'True
      TabIndex        =   60
      Top             =   3000
      Width           =   300
   End
   Begin VB.TextBox txtMatriz 
      Height          =   300
      Index           =   59
      Left            =   4440
      Locked          =   -1  'True
      TabIndex        =   59
      Top             =   2520
      Width           =   300
   End
   Begin VB.TextBox txtMatriz 
      Height          =   300
      Index           =   58
      Left            =   3960
      Locked          =   -1  'True
      TabIndex        =   58
      Top             =   2520
      Width           =   300
   End
   Begin VB.TextBox txtMatriz 
      Height          =   300
      Index           =   57
      Left            =   3480
      Locked          =   -1  'True
      TabIndex        =   57
      Top             =   2520
      Width           =   300
   End
   Begin VB.TextBox txtMatriz 
      Height          =   300
      Index           =   56
      Left            =   3000
      Locked          =   -1  'True
      TabIndex        =   56
      Top             =   2520
      Width           =   300
   End
   Begin VB.TextBox txtMatriz 
      Height          =   300
      Index           =   55
      Left            =   2520
      Locked          =   -1  'True
      TabIndex        =   55
      Top             =   2520
      Width           =   300
   End
   Begin VB.TextBox txtMatriz 
      Height          =   300
      Index           =   54
      Left            =   2040
      Locked          =   -1  'True
      TabIndex        =   54
      Top             =   2520
      Width           =   300
   End
   Begin VB.TextBox txtMatriz 
      Height          =   300
      Index           =   53
      Left            =   1560
      Locked          =   -1  'True
      TabIndex        =   53
      Top             =   2520
      Width           =   300
   End
   Begin VB.TextBox txtMatriz 
      Height          =   300
      Index           =   52
      Left            =   1080
      Locked          =   -1  'True
      TabIndex        =   52
      Top             =   2520
      Width           =   300
   End
   Begin VB.TextBox txtMatriz 
      Height          =   300
      Index           =   51
      Left            =   600
      Locked          =   -1  'True
      TabIndex        =   51
      Top             =   2520
      Width           =   300
   End
   Begin VB.TextBox txtMatriz 
      Height          =   300
      Index           =   50
      Left            =   120
      Locked          =   -1  'True
      TabIndex        =   50
      Top             =   2520
      Width           =   300
   End
   Begin VB.TextBox txtMatriz 
      Height          =   300
      Index           =   49
      Left            =   4440
      Locked          =   -1  'True
      TabIndex        =   49
      Top             =   2040
      Width           =   300
   End
   Begin VB.TextBox txtMatriz 
      Height          =   300
      Index           =   48
      Left            =   3960
      Locked          =   -1  'True
      TabIndex        =   48
      Top             =   2040
      Width           =   300
   End
   Begin VB.TextBox txtMatriz 
      Height          =   300
      Index           =   47
      Left            =   3480
      Locked          =   -1  'True
      TabIndex        =   47
      Top             =   2040
      Width           =   300
   End
   Begin VB.TextBox txtMatriz 
      Height          =   300
      Index           =   46
      Left            =   3000
      Locked          =   -1  'True
      TabIndex        =   46
      Top             =   2040
      Width           =   300
   End
   Begin VB.TextBox txtMatriz 
      Height          =   300
      Index           =   45
      Left            =   2520
      Locked          =   -1  'True
      TabIndex        =   45
      Top             =   2040
      Width           =   300
   End
   Begin VB.TextBox txtMatriz 
      Height          =   300
      Index           =   44
      Left            =   2040
      Locked          =   -1  'True
      TabIndex        =   44
      Top             =   2040
      Width           =   300
   End
   Begin VB.TextBox txtMatriz 
      Height          =   300
      Index           =   43
      Left            =   1560
      Locked          =   -1  'True
      TabIndex        =   43
      Top             =   2040
      Width           =   300
   End
   Begin VB.TextBox txtMatriz 
      Height          =   300
      Index           =   42
      Left            =   1080
      Locked          =   -1  'True
      TabIndex        =   42
      Top             =   2040
      Width           =   300
   End
   Begin VB.TextBox txtMatriz 
      Height          =   300
      Index           =   41
      Left            =   600
      Locked          =   -1  'True
      TabIndex        =   41
      Top             =   2040
      Width           =   300
   End
   Begin VB.TextBox txtMatriz 
      Height          =   300
      Index           =   40
      Left            =   120
      Locked          =   -1  'True
      TabIndex        =   40
      Top             =   2040
      Width           =   300
   End
   Begin VB.TextBox txtMatriz 
      Height          =   300
      Index           =   39
      Left            =   4440
      Locked          =   -1  'True
      TabIndex        =   39
      Top             =   1560
      Width           =   300
   End
   Begin VB.TextBox txtMatriz 
      Height          =   300
      Index           =   38
      Left            =   3960
      Locked          =   -1  'True
      TabIndex        =   38
      Top             =   1560
      Width           =   300
   End
   Begin VB.TextBox txtMatriz 
      Height          =   300
      Index           =   37
      Left            =   3480
      Locked          =   -1  'True
      TabIndex        =   37
      Top             =   1560
      Width           =   300
   End
   Begin VB.TextBox txtMatriz 
      Height          =   300
      Index           =   36
      Left            =   3000
      Locked          =   -1  'True
      TabIndex        =   36
      Top             =   1560
      Width           =   300
   End
   Begin VB.TextBox txtMatriz 
      Height          =   300
      Index           =   35
      Left            =   2520
      Locked          =   -1  'True
      TabIndex        =   35
      Top             =   1560
      Width           =   300
   End
   Begin VB.TextBox txtMatriz 
      Height          =   300
      Index           =   34
      Left            =   2040
      Locked          =   -1  'True
      TabIndex        =   34
      Top             =   1560
      Width           =   300
   End
   Begin VB.TextBox txtMatriz 
      Height          =   300
      Index           =   33
      Left            =   1560
      Locked          =   -1  'True
      TabIndex        =   33
      Top             =   1560
      Width           =   300
   End
   Begin VB.TextBox txtMatriz 
      Height          =   300
      Index           =   32
      Left            =   1080
      Locked          =   -1  'True
      TabIndex        =   32
      Top             =   1560
      Width           =   300
   End
   Begin VB.TextBox txtMatriz 
      Height          =   300
      Index           =   31
      Left            =   600
      Locked          =   -1  'True
      TabIndex        =   31
      Top             =   1560
      Width           =   300
   End
   Begin VB.TextBox txtMatriz 
      Height          =   300
      Index           =   30
      Left            =   120
      Locked          =   -1  'True
      TabIndex        =   30
      Top             =   1560
      Width           =   300
   End
   Begin VB.TextBox txtMatriz 
      Height          =   300
      Index           =   29
      Left            =   4440
      Locked          =   -1  'True
      TabIndex        =   29
      Top             =   1080
      Width           =   300
   End
   Begin VB.TextBox txtMatriz 
      Height          =   300
      Index           =   28
      Left            =   3960
      Locked          =   -1  'True
      TabIndex        =   28
      Top             =   1080
      Width           =   300
   End
   Begin VB.TextBox txtMatriz 
      Height          =   300
      Index           =   27
      Left            =   3480
      Locked          =   -1  'True
      TabIndex        =   27
      Top             =   1080
      Width           =   300
   End
   Begin VB.TextBox txtMatriz 
      Height          =   300
      Index           =   26
      Left            =   3000
      Locked          =   -1  'True
      TabIndex        =   26
      Top             =   1080
      Width           =   300
   End
   Begin VB.TextBox txtMatriz 
      Height          =   300
      Index           =   25
      Left            =   2520
      Locked          =   -1  'True
      TabIndex        =   25
      Top             =   1080
      Width           =   300
   End
   Begin VB.TextBox txtMatriz 
      Height          =   300
      Index           =   24
      Left            =   2040
      Locked          =   -1  'True
      TabIndex        =   24
      Top             =   1080
      Width           =   300
   End
   Begin VB.TextBox txtMatriz 
      Height          =   300
      Index           =   23
      Left            =   1560
      Locked          =   -1  'True
      TabIndex        =   23
      Top             =   1080
      Width           =   300
   End
   Begin VB.TextBox txtMatriz 
      Height          =   300
      Index           =   22
      Left            =   1080
      Locked          =   -1  'True
      TabIndex        =   22
      Top             =   1080
      Width           =   300
   End
   Begin VB.TextBox txtMatriz 
      Height          =   300
      Index           =   21
      Left            =   600
      Locked          =   -1  'True
      TabIndex        =   21
      Top             =   1080
      Width           =   300
   End
   Begin VB.TextBox txtMatriz 
      Height          =   300
      Index           =   20
      Left            =   120
      Locked          =   -1  'True
      TabIndex        =   20
      Top             =   1080
      Width           =   300
   End
   Begin VB.TextBox txtMatriz 
      Height          =   300
      Index           =   19
      Left            =   4440
      Locked          =   -1  'True
      TabIndex        =   19
      Top             =   600
      Width           =   300
   End
   Begin VB.TextBox txtMatriz 
      Height          =   300
      Index           =   18
      Left            =   3960
      Locked          =   -1  'True
      TabIndex        =   18
      Top             =   600
      Width           =   300
   End
   Begin VB.TextBox txtMatriz 
      Height          =   300
      Index           =   17
      Left            =   3480
      Locked          =   -1  'True
      TabIndex        =   17
      Top             =   600
      Width           =   300
   End
   Begin VB.TextBox txtMatriz 
      Height          =   300
      Index           =   16
      Left            =   3000
      Locked          =   -1  'True
      TabIndex        =   16
      Top             =   600
      Width           =   300
   End
   Begin VB.TextBox txtMatriz 
      Height          =   300
      Index           =   15
      Left            =   2520
      Locked          =   -1  'True
      TabIndex        =   15
      Top             =   600
      Width           =   300
   End
   Begin VB.TextBox txtMatriz 
      Height          =   300
      Index           =   14
      Left            =   2040
      Locked          =   -1  'True
      TabIndex        =   14
      Top             =   600
      Width           =   300
   End
   Begin VB.TextBox txtMatriz 
      Height          =   300
      Index           =   13
      Left            =   1560
      Locked          =   -1  'True
      TabIndex        =   13
      Top             =   600
      Width           =   300
   End
   Begin VB.TextBox txtMatriz 
      Height          =   300
      Index           =   12
      Left            =   1080
      Locked          =   -1  'True
      TabIndex        =   12
      Top             =   600
      Width           =   300
   End
   Begin VB.TextBox txtMatriz 
      Height          =   300
      Index           =   11
      Left            =   600
      Locked          =   -1  'True
      TabIndex        =   11
      Top             =   600
      Width           =   300
   End
   Begin VB.TextBox txtMatriz 
      Height          =   300
      Index           =   10
      Left            =   120
      Locked          =   -1  'True
      TabIndex        =   10
      Top             =   600
      Width           =   300
   End
   Begin VB.TextBox txtMatriz 
      Height          =   300
      Index           =   9
      Left            =   4440
      Locked          =   -1  'True
      TabIndex        =   9
      Top             =   120
      Width           =   300
   End
   Begin VB.TextBox txtMatriz 
      Height          =   300
      Index           =   8
      Left            =   3960
      Locked          =   -1  'True
      TabIndex        =   8
      Top             =   120
      Width           =   300
   End
   Begin VB.TextBox txtMatriz 
      Height          =   300
      Index           =   7
      Left            =   3480
      Locked          =   -1  'True
      TabIndex        =   7
      Top             =   120
      Width           =   300
   End
   Begin VB.TextBox txtMatriz 
      Height          =   300
      Index           =   6
      Left            =   3000
      Locked          =   -1  'True
      TabIndex        =   6
      Top             =   120
      Width           =   300
   End
   Begin VB.TextBox txtMatriz 
      Height          =   300
      Index           =   5
      Left            =   2520
      Locked          =   -1  'True
      TabIndex        =   5
      Top             =   120
      Width           =   300
   End
   Begin VB.TextBox txtMatriz 
      Height          =   300
      Index           =   4
      Left            =   2040
      Locked          =   -1  'True
      TabIndex        =   4
      Top             =   120
      Width           =   300
   End
   Begin VB.TextBox txtMatriz 
      Height          =   300
      Index           =   3
      Left            =   1560
      Locked          =   -1  'True
      TabIndex        =   3
      Top             =   120
      Width           =   300
   End
   Begin VB.TextBox txtMatriz 
      Height          =   300
      Index           =   2
      Left            =   1080
      Locked          =   -1  'True
      TabIndex        =   2
      Top             =   120
      Width           =   300
   End
   Begin VB.TextBox txtMatriz 
      Height          =   300
      Index           =   1
      Left            =   600
      Locked          =   -1  'True
      TabIndex        =   1
      Top             =   120
      Width           =   300
   End
   Begin VB.TextBox txtMatriz 
      Height          =   300
      Index           =   0
      Left            =   120
      Locked          =   -1  'True
      TabIndex        =   0
      Top             =   120
      Width           =   300
   End
End
Attribute VB_Name = "frmpractica"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub cmdHacer_Click()
Dim mat(9, 9) As Byte
precarga mat()
mostrar mat()
End Sub

Private Sub Form_Load()
Randomize Timer
End Sub
Private Sub precarga(ByRef matriz() As Byte)
Dim x As Byte
For x = 0 To 99
    matriz(x \ 10, x Mod 10) = CInt(Rnd)
    txtMatriz(x).BackColor = vbWhite
Next x
End Sub
Private Sub mostrar(ByRef matriz() As Byte)
Dim x As Byte
For x = 0 To 99
    txtMatriz(x).Text = matriz(x \ 10, x Mod 10)
Next x
End Sub
Private Sub caminar(ByRef matriz() As Byte, ByVal fila As Byte, ByVal columna As Byte)

End Sub


