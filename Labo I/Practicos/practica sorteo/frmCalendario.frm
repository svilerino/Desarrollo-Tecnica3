VERSION 5.00
Begin VB.Form frmCalendario 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Calendario"
   ClientHeight    =   6645
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   7740
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   6645
   ScaleWidth      =   7740
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox txtAnio 
      Height          =   375
      Left            =   1680
      TabIndex        =   39
      Top             =   2880
      Width           =   375
   End
   Begin VB.TextBox txtMes 
      Height          =   375
      Left            =   1200
      TabIndex        =   38
      Top             =   2880
      Width           =   375
   End
   Begin VB.TextBox txtFecha 
      Height          =   375
      Left            =   720
      TabIndex        =   37
      Top             =   2880
      Width           =   375
   End
   Begin VB.TextBox txtDia 
      Height          =   375
      Left            =   240
      TabIndex        =   36
      Top             =   2880
      Width           =   375
   End
   Begin VB.CommandButton cmdHacer 
      Caption         =   "&Llenar"
      Height          =   495
      Left            =   3960
      TabIndex        =   35
      Top             =   360
      Width           =   1695
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   34
      Left            =   3120
      Locked          =   -1  'True
      TabIndex        =   34
      Top             =   2160
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   33
      Left            =   2640
      Locked          =   -1  'True
      TabIndex        =   33
      Top             =   2160
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   32
      Left            =   2160
      Locked          =   -1  'True
      TabIndex        =   32
      Top             =   2160
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   31
      Left            =   1680
      Locked          =   -1  'True
      TabIndex        =   31
      Top             =   2160
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   30
      Left            =   1200
      Locked          =   -1  'True
      TabIndex        =   30
      Top             =   2160
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   29
      Left            =   720
      Locked          =   -1  'True
      TabIndex        =   29
      Top             =   2160
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   28
      Left            =   240
      Locked          =   -1  'True
      TabIndex        =   28
      Top             =   2160
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   27
      Left            =   3120
      Locked          =   -1  'True
      TabIndex        =   27
      Top             =   1680
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   26
      Left            =   2640
      Locked          =   -1  'True
      TabIndex        =   26
      Top             =   1680
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   25
      Left            =   2160
      Locked          =   -1  'True
      TabIndex        =   25
      Top             =   1680
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   24
      Left            =   1680
      Locked          =   -1  'True
      TabIndex        =   24
      Top             =   1680
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   23
      Left            =   1200
      Locked          =   -1  'True
      TabIndex        =   23
      Top             =   1680
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   22
      Left            =   720
      Locked          =   -1  'True
      TabIndex        =   22
      Top             =   1680
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   21
      Left            =   240
      Locked          =   -1  'True
      TabIndex        =   21
      Top             =   1680
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   20
      Left            =   3120
      Locked          =   -1  'True
      TabIndex        =   20
      Top             =   1200
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   19
      Left            =   2640
      Locked          =   -1  'True
      TabIndex        =   19
      Top             =   1200
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   18
      Left            =   2160
      Locked          =   -1  'True
      TabIndex        =   18
      Top             =   1200
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   17
      Left            =   1680
      Locked          =   -1  'True
      TabIndex        =   17
      Top             =   1200
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   16
      Left            =   1200
      Locked          =   -1  'True
      TabIndex        =   16
      Top             =   1200
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   15
      Left            =   720
      Locked          =   -1  'True
      TabIndex        =   15
      Top             =   1200
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   14
      Left            =   240
      Locked          =   -1  'True
      TabIndex        =   14
      Top             =   1200
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   13
      Left            =   3120
      Locked          =   -1  'True
      TabIndex        =   13
      Top             =   720
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   12
      Left            =   2640
      Locked          =   -1  'True
      TabIndex        =   12
      Top             =   720
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   11
      Left            =   2160
      Locked          =   -1  'True
      TabIndex        =   11
      Top             =   720
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   10
      Left            =   1680
      Locked          =   -1  'True
      TabIndex        =   10
      Top             =   720
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   9
      Left            =   1200
      Locked          =   -1  'True
      TabIndex        =   9
      Top             =   720
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   8
      Left            =   720
      Locked          =   -1  'True
      TabIndex        =   8
      Top             =   720
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   7
      Left            =   240
      Locked          =   -1  'True
      TabIndex        =   7
      Top             =   720
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   6
      Left            =   3120
      Locked          =   -1  'True
      TabIndex        =   6
      Top             =   240
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   5
      Left            =   2640
      Locked          =   -1  'True
      TabIndex        =   5
      Top             =   240
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   4
      Left            =   2160
      Locked          =   -1  'True
      TabIndex        =   4
      Top             =   240
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   3
      Left            =   1680
      Locked          =   -1  'True
      TabIndex        =   3
      Top             =   240
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   2
      Left            =   1200
      Locked          =   -1  'True
      TabIndex        =   2
      Top             =   240
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   1
      Left            =   720
      Locked          =   -1  'True
      TabIndex        =   1
      Top             =   240
      Width           =   375
   End
   Begin VB.TextBox txtMatriz 
      Height          =   375
      Index           =   0
      Left            =   240
      Locked          =   -1  'True
      TabIndex        =   0
      Top             =   240
      Width           =   375
   End
End
Attribute VB_Name = "frmCalendario"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdHacer_Click()
Dim matriz(4, 6) As Byte, comienzo As Byte, si As Boolean: comienzo = 0
llenar matriz(), 2
mostrar matriz()
Do: DoEvents
    If matriz(comienzo, Val(txtDia.Text)) = Val(txtFecha.Text) Then si = True
    comienzo = comienzo + 1
Loop While Not (si Or comienzo = 5)
End Sub
Private Sub mostrar(ByRef matriz() As Byte)
For x = 0 To 4
    For y = 0 To 6
        txtMatriz(x * 6 + y).Text = Str(matriz(x, y))
    Next y
Next x
End Sub
Private Sub llenar(ByRef matriz() As Byte, ByVal inicio As Byte)
Dim posi As Byte, cont As Byte: cont = 1
For posi = inicio To 34
    matriz(posi \ 7, posi Mod 7) = cont
    cont = cont + 1
Next posi
End Sub
