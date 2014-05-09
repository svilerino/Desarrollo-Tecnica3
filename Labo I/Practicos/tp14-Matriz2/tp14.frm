VERSION 5.00
Begin VB.Form frmTp14 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "tp14"
   ClientHeight    =   4635
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   6225
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4635
   ScaleWidth      =   6225
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command5 
      Caption         =   "Ordenar por Cachos"
      Height          =   615
      Left            =   3120
      TabIndex        =   37
      Top             =   3960
      Width           =   2295
   End
   Begin VB.CommandButton Command4 
      Caption         =   "Llenar y mostrar cacho por columnas"
      Height          =   615
      Left            =   3120
      TabIndex        =   36
      Top             =   3240
      Width           =   2295
   End
   Begin VB.CommandButton Command3 
      Caption         =   "Ordenar por Columna"
      Height          =   615
      Left            =   120
      TabIndex        =   35
      Top             =   3960
      Width           =   2895
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Ordenar por Fila"
      Height          =   615
      Left            =   120
      TabIndex        =   34
      Top             =   3240
      Width           =   2895
   End
   Begin VB.CommandButton Command1 
      Caption         =   "&Salir"
      Height          =   3255
      Left            =   5400
      TabIndex        =   33
      Top             =   1320
      Width           =   735
   End
   Begin VB.ListBox lstSalida 
      Height          =   2985
      Left            =   3120
      TabIndex        =   32
      Top             =   120
      Width           =   615
   End
   Begin VB.TextBox txtCoor2 
      Height          =   375
      Index           =   1
      Left            =   5520
      TabIndex        =   29
      Top             =   840
      Width           =   495
   End
   Begin VB.TextBox txtCoor2 
      Height          =   375
      Index           =   0
      Left            =   4920
      TabIndex        =   28
      Top             =   840
      Width           =   495
   End
   Begin VB.TextBox txtCoor1 
      Height          =   375
      Index           =   1
      Left            =   5520
      TabIndex        =   27
      Top             =   120
      Width           =   495
   End
   Begin VB.TextBox txtCoor1 
      Height          =   375
      Index           =   0
      Left            =   4920
      TabIndex        =   26
      Top             =   120
      Width           =   495
   End
   Begin VB.CommandButton cmdHacer 
      Caption         =   "&Llenar y Mostrar cacho por filas indicadas."
      Height          =   615
      Left            =   120
      TabIndex        =   25
      Top             =   2520
      Width           =   2895
   End
   Begin VB.TextBox txtMatriz 
      BackColor       =   &H00E0E0E0&
      Height          =   375
      Index           =   24
      Left            =   2520
      Locked          =   -1  'True
      TabIndex        =   24
      Top             =   2040
      Width           =   495
   End
   Begin VB.TextBox txtMatriz 
      BackColor       =   &H00E0E0E0&
      Height          =   375
      Index           =   23
      Left            =   1920
      Locked          =   -1  'True
      TabIndex        =   23
      Top             =   2040
      Width           =   495
   End
   Begin VB.TextBox txtMatriz 
      BackColor       =   &H00E0E0E0&
      Height          =   375
      Index           =   22
      Left            =   1320
      Locked          =   -1  'True
      TabIndex        =   22
      Top             =   2040
      Width           =   495
   End
   Begin VB.TextBox txtMatriz 
      BackColor       =   &H00E0E0E0&
      Height          =   375
      Index           =   21
      Left            =   720
      Locked          =   -1  'True
      TabIndex        =   21
      Top             =   2040
      Width           =   495
   End
   Begin VB.TextBox txtMatriz 
      BackColor       =   &H00E0E0E0&
      Height          =   375
      Index           =   20
      Left            =   120
      Locked          =   -1  'True
      TabIndex        =   20
      Top             =   2040
      Width           =   495
   End
   Begin VB.TextBox txtMatriz 
      BackColor       =   &H00E0E0E0&
      Height          =   375
      Index           =   19
      Left            =   2520
      Locked          =   -1  'True
      TabIndex        =   19
      Top             =   1560
      Width           =   495
   End
   Begin VB.TextBox txtMatriz 
      BackColor       =   &H00E0E0E0&
      Height          =   375
      Index           =   18
      Left            =   1920
      Locked          =   -1  'True
      TabIndex        =   18
      Top             =   1560
      Width           =   495
   End
   Begin VB.TextBox txtMatriz 
      BackColor       =   &H00E0E0E0&
      Height          =   375
      Index           =   17
      Left            =   1320
      Locked          =   -1  'True
      TabIndex        =   17
      Top             =   1560
      Width           =   495
   End
   Begin VB.TextBox txtMatriz 
      BackColor       =   &H00E0E0E0&
      Height          =   375
      Index           =   16
      Left            =   720
      Locked          =   -1  'True
      TabIndex        =   16
      Top             =   1560
      Width           =   495
   End
   Begin VB.TextBox txtMatriz 
      BackColor       =   &H00E0E0E0&
      Height          =   375
      Index           =   15
      Left            =   120
      Locked          =   -1  'True
      TabIndex        =   15
      Top             =   1560
      Width           =   495
   End
   Begin VB.TextBox txtMatriz 
      BackColor       =   &H00E0E0E0&
      Height          =   375
      Index           =   14
      Left            =   2520
      Locked          =   -1  'True
      TabIndex        =   14
      Top             =   1080
      Width           =   495
   End
   Begin VB.TextBox txtMatriz 
      BackColor       =   &H00E0E0E0&
      Height          =   375
      Index           =   13
      Left            =   1920
      Locked          =   -1  'True
      TabIndex        =   13
      Top             =   1080
      Width           =   495
   End
   Begin VB.TextBox txtMatriz 
      BackColor       =   &H00E0E0E0&
      Height          =   375
      Index           =   12
      Left            =   1320
      Locked          =   -1  'True
      TabIndex        =   12
      Top             =   1080
      Width           =   495
   End
   Begin VB.TextBox txtMatriz 
      BackColor       =   &H00E0E0E0&
      Height          =   375
      Index           =   11
      Left            =   720
      Locked          =   -1  'True
      TabIndex        =   11
      Top             =   1080
      Width           =   495
   End
   Begin VB.TextBox txtMatriz 
      BackColor       =   &H00E0E0E0&
      Height          =   375
      Index           =   10
      Left            =   120
      Locked          =   -1  'True
      TabIndex        =   10
      Top             =   1080
      Width           =   495
   End
   Begin VB.TextBox txtMatriz 
      BackColor       =   &H00E0E0E0&
      Height          =   375
      Index           =   9
      Left            =   2520
      Locked          =   -1  'True
      TabIndex        =   9
      Top             =   600
      Width           =   495
   End
   Begin VB.TextBox txtMatriz 
      BackColor       =   &H00E0E0E0&
      Height          =   375
      Index           =   8
      Left            =   1920
      Locked          =   -1  'True
      TabIndex        =   8
      Top             =   600
      Width           =   495
   End
   Begin VB.TextBox txtMatriz 
      BackColor       =   &H00E0E0E0&
      Height          =   375
      Index           =   7
      Left            =   1320
      Locked          =   -1  'True
      TabIndex        =   7
      Top             =   600
      Width           =   495
   End
   Begin VB.TextBox txtMatriz 
      BackColor       =   &H00E0E0E0&
      Height          =   375
      Index           =   6
      Left            =   720
      Locked          =   -1  'True
      TabIndex        =   6
      Top             =   600
      Width           =   495
   End
   Begin VB.TextBox txtMatriz 
      BackColor       =   &H00E0E0E0&
      Height          =   375
      Index           =   5
      Left            =   120
      Locked          =   -1  'True
      TabIndex        =   5
      Top             =   600
      Width           =   495
   End
   Begin VB.TextBox txtMatriz 
      BackColor       =   &H00E0E0E0&
      Height          =   375
      Index           =   4
      Left            =   2520
      Locked          =   -1  'True
      TabIndex        =   4
      Top             =   120
      Width           =   495
   End
   Begin VB.TextBox txtMatriz 
      BackColor       =   &H00E0E0E0&
      Height          =   375
      Index           =   3
      Left            =   1920
      Locked          =   -1  'True
      TabIndex        =   3
      Top             =   120
      Width           =   495
   End
   Begin VB.TextBox txtMatriz 
      BackColor       =   &H00E0E0E0&
      Height          =   375
      Index           =   2
      Left            =   1320
      Locked          =   -1  'True
      TabIndex        =   2
      Top             =   120
      Width           =   495
   End
   Begin VB.TextBox txtMatriz 
      BackColor       =   &H00E0E0E0&
      Height          =   375
      Index           =   1
      Left            =   720
      Locked          =   -1  'True
      TabIndex        =   1
      Top             =   120
      Width           =   495
   End
   Begin VB.TextBox txtMatriz 
      BackColor       =   &H00E0E0E0&
      Height          =   375
      Index           =   0
      Left            =   120
      Locked          =   -1  'True
      TabIndex        =   0
      Top             =   120
      Width           =   495
   End
   Begin VB.Label Label2 
      Caption         =   "Fin (x,y)"
      Height          =   375
      Left            =   3840
      TabIndex        =   31
      Top             =   840
      Width           =   855
   End
   Begin VB.Label Label1 
      Caption         =   "Inicio (x,y)"
      Height          =   375
      Left            =   3840
      TabIndex        =   30
      Top             =   120
      Width           =   735
   End
End
Attribute VB_Name = "frmTp14"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Private Matriz(4, 4) As Byte
Private Sub Swap(ByRef vntA As Variant, ByRef vntB As Variant)
Dim vntc As Variant
vntc = vntA
vntA = vntB
vntB = vntc
End Sub
Private Sub OrdenarC(ByRef Matriz() As Byte)
Dim posi As Byte
Dim posi1 As Byte
Dim fila As Byte
Dim fila1 As Byte
Dim columna As Byte
Dim columna1 As Byte
For posi = 0 To 23
    fila = posi \ 5
    columna = posi Mod 5
    For posi1 = posi + 1 To 24
        fila1 = posi1 \ 5
        columna1 = posi1 Mod 5
        If Matriz(columna, fila) > Matriz(columna1, fila1) Then Swap Matriz(columna1, fila1), Matriz(columna, fila)
    Next posi1
Next posi
For posi = 0 To 24
    lstSalida.AddItem Matriz(posi \ 5, posi Mod 5)
Next posi

End Sub
Private Sub OrdenarCachof(ByRef Matriz() As Byte)
Dim posi As Byte
Dim cinicial As Byte, cfinal As Byte
Dim finicial As Byte, ffinal As Byte, posini As Byte, posifin As Byte
cinicial = Val(txtCoor1(1).Text)
finicial = Val(txtCoor1(0).Text)
cfinal = Val(txtCoor2(1).Text)
ffinal = Val(txtCoor2(0).Text)
posini = (finicial * cfinal) + cinicial
posifin = (ffinal * cfinal) + cfinal
Dim posi1 As Byte
Dim fila As Byte
Dim fila1 As Byte
Dim columna As Byte
Dim columna1 As Byte
For posi = posini To posifin - 1
    fila = posi \ 5
    columna = posi Mod 5
    For posi1 = posi + 1 To posifin
        fila1 = posi1 \ 5
        columna1 = posi1 Mod 5
        If Matriz(columna, fila) > Matriz(columna1, fila1) Then Swap Matriz(columna1, fila1), Matriz(columna, fila)
    Next posi1
Next posi
For posi = 0 To 24
    lstSalida.AddItem Matriz(posi Mod 5, posi \ 5)
Next posi
End Sub
Private Sub Ordenarf(ByRef Matriz() As Byte)
Dim posi As Byte
Dim posi1 As Byte
Dim fila As Byte
Dim fila1 As Byte
Dim columna As Byte
Dim columna1 As Byte
For posi = 0 To 23
    fila = posi \ 5
    columna = posi Mod 5
    For posi1 = posi + 1 To 24
        fila1 = posi1 \ 5
        columna1 = posi1 Mod 5
        If Matriz(columna, fila) > Matriz(columna1, fila1) Then Swap Matriz(columna1, fila1), Matriz(columna, fila)
    Next posi1
Next posi
For posi = 0 To 24
    lstSalida.AddItem Matriz(posi Mod 5, posi \ 5)
Next posi
End Sub

Private Sub cmdHacer_Click()
lstSalida.Clear
Dim x As Byte, y As Byte
Dim cont As Byte
For x = 0 To 4
    For y = 0 To 4
        Matriz(x, y) = 11 * Rnd
        txtMatriz(cont).Text = Str(Matriz(x, y))
        cont = cont + 1
    Next y
Next x
Dim posi As Byte
For posi = Val(txtCoor1(0).Text) * 5 + Val(txtCoor1(1).Text) To Val(txtCoor2(0).Text) * 5 + Val(txtCoor2(1).Text)
    lstSalida.AddItem Matriz(posi \ 5, posi Mod 5)
Next posi
End Sub

Private Sub Command1_Click()
Form_Unload 0
End Sub

Private Sub Command2_Click()
Dim cont As Byte, x As Byte, y As Byte
lstSalida.Clear
Ordenarf Matriz()
cont = 0
For x = 0 To 4
    For y = 0 To 4
        txtMatriz(cont).Text = Str(Matriz(y, x))
        cont = cont + 1
    Next y
Next x
End Sub

Private Sub Command3_Click()
Dim cont As Byte, x As Byte, y As Byte
lstSalida.Clear
OrdenarC Matriz()
cont = 0
For x = 0 To 4
    For y = 0 To 4
        txtMatriz(cont).Text = Str(Matriz(x, y))
        cont = cont + 1
    Next y
Next x
End Sub

Private Sub Command4_Click()
lstSalida.Clear
Dim x As Byte, y As Byte
Dim cont As Byte
For x = 0 To 4
    For y = 0 To 4
        Matriz(x, y) = 11 * Rnd
        txtMatriz(cont).Text = Str(Matriz(x, y))
        cont = cont + 1
    Next y
Next x
Dim posi As Byte
For posi = Val(txtCoor1(0).Text) * 5 + Val(txtCoor1(1).Text) To Val(txtCoor2(0).Text) * 5 + Val(txtCoor2(1).Text)
    lstSalida.AddItem Matriz(posi Mod 5, posi \ 5)
Next posi
End Sub

Private Sub Command5_Click()
lstSalida.Clear
Dim x As Byte, y As Byte, cont As Byte
OrdenarCachof Matriz()
For x = 0 To 4
    For y = 0 To 4
        txtMatriz(cont).Text = Str(Matriz(x, y))
        cont = cont + 1
    Next y
Next x
End Sub

Private Sub Form_Unload(Cancel As Integer)
End
End Sub


