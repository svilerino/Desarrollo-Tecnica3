VERSION 5.00
Begin VB.Form frmtp15 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Espiral"
   ClientHeight    =   4650
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   5715
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4650
   ScaleWidth      =   5715
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Command2 
      Cancel          =   -1  'True
      Caption         =   "&Salir"
      Height          =   495
      Left            =   3000
      TabIndex        =   30
      Top             =   4080
      Width           =   2535
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Ordenar Espiral"
      Height          =   495
      Left            =   3000
      TabIndex        =   29
      Top             =   3480
      Width           =   2535
   End
   Begin VB.CommandButton cmdHacer2 
      Caption         =   "&Recorrer Espiral en Lista"
      Height          =   495
      Left            =   240
      TabIndex        =   28
      Top             =   4080
      Width           =   2655
   End
   Begin VB.ListBox lstSalida 
      Height          =   2985
      Left            =   3960
      TabIndex        =   27
      Top             =   240
      Width           =   1455
   End
   Begin VB.CommandButton cmdLlenar 
      Caption         =   "&Llenar al azar"
      Height          =   495
      Left            =   240
      TabIndex        =   26
      Top             =   3480
      Width           =   2655
   End
   Begin VB.TextBox txtMatriz 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   24
      Left            =   3120
      Locked          =   -1  'True
      TabIndex        =   24
      Top             =   2760
      Width           =   615
   End
   Begin VB.TextBox txtMatriz 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   23
      Left            =   2400
      Locked          =   -1  'True
      TabIndex        =   23
      Top             =   2760
      Width           =   615
   End
   Begin VB.TextBox txtMatriz 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   22
      Left            =   1680
      Locked          =   -1  'True
      TabIndex        =   22
      Top             =   2760
      Width           =   615
   End
   Begin VB.TextBox txtMatriz 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   21
      Left            =   960
      Locked          =   -1  'True
      TabIndex        =   21
      Top             =   2760
      Width           =   615
   End
   Begin VB.TextBox txtMatriz 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   20
      Left            =   240
      Locked          =   -1  'True
      TabIndex        =   20
      Top             =   2760
      Width           =   615
   End
   Begin VB.TextBox txtMatriz 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   19
      Left            =   3120
      Locked          =   -1  'True
      TabIndex        =   19
      Top             =   2160
      Width           =   615
   End
   Begin VB.TextBox txtMatriz 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   18
      Left            =   2400
      Locked          =   -1  'True
      TabIndex        =   18
      Top             =   2160
      Width           =   615
   End
   Begin VB.TextBox txtMatriz 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   17
      Left            =   1680
      Locked          =   -1  'True
      TabIndex        =   17
      Top             =   2160
      Width           =   615
   End
   Begin VB.TextBox txtMatriz 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   16
      Left            =   960
      Locked          =   -1  'True
      TabIndex        =   16
      Top             =   2160
      Width           =   615
   End
   Begin VB.TextBox txtMatriz 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   15
      Left            =   240
      Locked          =   -1  'True
      TabIndex        =   15
      Top             =   2160
      Width           =   615
   End
   Begin VB.TextBox txtMatriz 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   14
      Left            =   3120
      Locked          =   -1  'True
      TabIndex        =   14
      Top             =   1560
      Width           =   615
   End
   Begin VB.TextBox txtMatriz 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   13
      Left            =   2400
      Locked          =   -1  'True
      TabIndex        =   13
      Top             =   1560
      Width           =   615
   End
   Begin VB.TextBox txtMatriz 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   12
      Left            =   1680
      Locked          =   -1  'True
      TabIndex        =   12
      Top             =   1560
      Width           =   615
   End
   Begin VB.TextBox txtMatriz 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   11
      Left            =   960
      Locked          =   -1  'True
      TabIndex        =   11
      Top             =   1560
      Width           =   615
   End
   Begin VB.TextBox txtMatriz 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   10
      Left            =   240
      Locked          =   -1  'True
      TabIndex        =   10
      Top             =   1560
      Width           =   615
   End
   Begin VB.TextBox txtMatriz 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   9
      Left            =   3120
      Locked          =   -1  'True
      TabIndex        =   9
      Top             =   960
      Width           =   615
   End
   Begin VB.TextBox txtMatriz 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   8
      Left            =   2400
      Locked          =   -1  'True
      TabIndex        =   8
      Top             =   960
      Width           =   615
   End
   Begin VB.TextBox txtMatriz 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   7
      Left            =   1680
      Locked          =   -1  'True
      TabIndex        =   7
      Top             =   960
      Width           =   615
   End
   Begin VB.TextBox txtMatriz 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   6
      Left            =   960
      Locked          =   -1  'True
      TabIndex        =   6
      Top             =   960
      Width           =   615
   End
   Begin VB.TextBox txtMatriz 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   5
      Left            =   240
      Locked          =   -1  'True
      TabIndex        =   5
      Top             =   960
      Width           =   615
   End
   Begin VB.TextBox txtMatriz 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   4
      Left            =   3120
      Locked          =   -1  'True
      TabIndex        =   4
      Top             =   360
      Width           =   615
   End
   Begin VB.TextBox txtMatriz 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   3
      Left            =   2400
      Locked          =   -1  'True
      TabIndex        =   3
      Top             =   360
      Width           =   615
   End
   Begin VB.TextBox txtMatriz 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   2
      Left            =   1680
      Locked          =   -1  'True
      TabIndex        =   2
      Top             =   360
      Width           =   615
   End
   Begin VB.TextBox txtMatriz 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   1
      Left            =   960
      Locked          =   -1  'True
      TabIndex        =   1
      Top             =   360
      Width           =   615
   End
   Begin VB.TextBox txtMatriz 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   0
      Left            =   240
      Locked          =   -1  'True
      TabIndex        =   0
      Top             =   360
      Width           =   615
   End
   Begin VB.Frame Frame1 
      Caption         =   "Matriz"
      Height          =   3255
      Left            =   120
      TabIndex        =   25
      Top             =   120
      Width           =   3735
   End
End
Attribute VB_Name = "frmtp15"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Private Matriz(4, 4) As Byte
Private Sub Llenar(ByRef Matriz() As Byte)
Dim x As Byte, y As Byte, cont As Byte
For x = 0 To 4
    For y = 0 To 4
        Matriz(x, y) = Fix(9 * Rnd)
        cont = cont + 1
    Next y
Next x
End Sub
Private Sub Mostrar(ByRef Matriz() As Byte)
Dim x As Byte, y As Byte, cont As Byte
For x = 0 To 4
    For y = 0 To 4
        txtMatriz(cont).Text = Str(Matriz(x, y))
        cont = cont + 1
    Next y
Next x
End Sub
Private Sub swap(ByRef vntA As Variant, ByRef vntB As Variant)
Dim vntc As Variant
vntc = vntA
vntA = vntB
vntB = vntc
End Sub

Private Sub cmdHacer2_Click()
Dim vector(24) As Byte
lstSalida.Clear
Dim t As Integer, k As Byte, fs As Integer, fi As Integer, cf As Integer, ci As Integer, cont As Byte
For t = 0 To 24
    vector(t) = Matriz((t \ 5), (t Mod 5))
Next t
For k = 0 To 23
    For t = k + 1 To 24
        If vector(k) > vector(t) Then swap vector(k), vector(t)
    Next t
Next k
fs = 0: fi = 4: ci = 0: cf = 4: cont = 0
Do: DoEvents
    For t = ci To cf - 1
        lstSalida.AddItem Str(Matriz(fs, t))
        cont = cont + 1
    Next t
    If (cont <> 24) Then
        For t = fs To fi - 1
            lstSalida.AddItem Str(Matriz(t, cf))
            cont = cont + 1
        Next t
    End If
    If (cont <> 24) Then
        For t = cf To ci + 1 Step -1
            lstSalida.AddItem Str(Matriz(fi, t))
            cont = cont + 1
        Next t
    End If
    If (cont <> 24) Then
        For t = fi To fs + 1 Step -1
            lstSalida.AddItem Str(Matriz(t, ci))
            cont = cont + 1
        Next t
    End If
    ci = ci + 1
    cf = cf - 1
    fs = fs + 1
    fi = fi - 1
Loop While Not cont = 24
Mostrar Matriz()
End Sub

Private Sub cmdLlenar_Click()
Llenar Matriz()
Mostrar Matriz()
End Sub

Private Sub Command1_Click()
Dim t As Integer, k As Byte, fs As Integer, fi As Integer, cf As Integer, ci As Integer, cont As Byte
Dim vector(24) As Byte
For t = 0 To 24
    vector(t) = Matriz(t \ 5, t Mod 5) 'Fix(30 * Rnd + 1)
Next t
For k = 0 To 23
    For t = k + 1 To 24
        If vector(k) > vector(t) Then swap vector(k), vector(t)
    Next t
Next k
fs = 0: fi = 4: ci = 0: cf = 4: cont = 0
Do: DoEvents
    For t = ci To cf - 1
        Matriz(fs, t) = vector(cont)
        cont = cont + 1
    Next t
    If (cont <> 24) Then
        For t = fs To fi - 1
            Matriz(t, cf) = vector(cont)
            cont = cont + 1
        Next t
    End If
    If (cont <> 24) Then
        For t = cf To ci + 1 Step -1
            Matriz(fi, t) = vector(cont)
            cont = cont + 1
        Next t
    End If
    If (cont <> 24) Then
        For t = fi To fs + 1 Step -1
            Matriz(t, ci) = vector(cont)
            cont = cont + 1
        Next t
    End If
    ci = ci + 1
    cf = cf - 1
    fs = fs + 1
    fi = fi - 1
Loop While Not cont = 24
Matriz(2, 2) = vector(24)
Mostrar Matriz()

End Sub


Private Sub Command2_Click()
Form_Unload 1
End Sub

Private Sub Form_Load()
Randomize Timer
End Sub

Private Sub Form_Unload(Cancel As Integer)
End
End Sub
