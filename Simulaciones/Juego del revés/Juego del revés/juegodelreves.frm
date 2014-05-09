VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Juego del revés"
   ClientHeight    =   8535
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   10560
   LinkTopic       =   "Form1"
   ScaleHeight     =   8535
   ScaleWidth      =   10560
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox Text1 
      Height          =   495
      Left            =   9360
      TabIndex        =   3
      Top             =   960
      Width           =   975
   End
   Begin VB.ListBox List1 
      Height          =   7275
      Left            =   360
      TabIndex        =   2
      Top             =   960
      Width           =   1095
   End
   Begin VB.PictureBox Picture1 
      BackColor       =   &H00808080&
      Height          =   7335
      Left            =   1800
      ScaleHeight     =   99
      ScaleMode       =   0  'User
      ScaleWidth      =   99
      TabIndex        =   1
      Top             =   960
      Width           =   7335
   End
   Begin VB.CommandButton Command1 
      Caption         =   "&Ejecutar"
      Height          =   615
      Left            =   1800
      TabIndex        =   0
      Top             =   120
      Width           =   4335
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub llenarMatriz(ByRef Mat() As Byte)
Dim fils As Byte
Dim cols As Byte
Dim num As Byte
For fils = 0 To 99
    For cols = 0 To 99
        num = 1 * Rnd
        Mat(fils, cols) = num
        List1.AddItem (num)
    Next
Next
mapaDeColores Mat()
End Sub

Private Sub recorrerMatriz(ByRef Mat() As Byte)
Dim fils As Byte
Dim cols As Byte
Dim num As Byte
Dim MatFutura(99, 99) As Byte
Do: DoEvents
    For fils = 0 To 99
        For cols = 0 To 99
            If (elemento(Mat(), fils, cols) = 0) Then
                MatFutura(fils, cols) = 0
            Else
                MatFutura(fils, cols) = 1
            End If
        Next
    Next
    
    For fils = 0 To 99
        For cols = 0 To 99
            Mat(fils, cols) = MatFutura(fils, cols)
        Next
    Next
    mapaDeColores Mat()
Loop While Not (Text1 = "s") Or (Text1 = "S")
End Sub

Private Function elemento(ByRef Mat() As Byte, ByVal fils As Byte, ByVal cols As Byte) As Integer
Dim f As Integer
Dim c As Integer
Dim ceros As Integer: ceros = 0
Dim unos As Integer: unos = 0
Dim num As Byte: num = Mat(fils, cols)
For f = fils - 1 To fils + 1
    For c = cols - 1 To cols + 1
        If (f >= 0 And f <= 99) Then
            If (c >= 0 And c <= 99) Then
                If (Mat(f, c) = 0) Then
                    ceros = ceros + 1
                Else
                    unos = unos + 1
                End If
            End If
        End If
    Next
Next

If (num = 0) Then
    ceros = ceros - 1
Else
    unos = unos - 1
End If

If (num = 0) Then
    If ((ceros = 2) Or (ceros = 3)) Then
        elemento = 0
    Else
        elemento = 1
    End If
Else
    If (ceros = 3) Then
        elemento = 0
    Else
        elemento = 1

    End If
End If
End Function

Private Sub mapaDeColores(ByRef Mat() As Byte)
Dim fils As Byte
Dim cols As Byte
Picture1.DrawWidth = 5
For fils = 0 To 99
    For cols = 0 To 99
        If (Mat(fils, cols) = 0) Then
            Picture1.PSet (cols, fils), vbWhite
        Else
            Picture1.PSet (cols, fils), vbBlack
        End If
    Next
Next
End Sub

Private Sub Command1_Click()
Dim Mat(99, 99) As Byte
Randomize Timer
List1.Clear
llenarMatriz Mat()
recorrerMatriz Mat()
End Sub
