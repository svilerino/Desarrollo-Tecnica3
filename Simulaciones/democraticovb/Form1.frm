VERSION 5.00
Begin VB.Form Democratico 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Democratico"
   ClientHeight    =   5340
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   7275
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5340
   ScaleWidth      =   7275
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdDo 
      Caption         =   "Do"
      Height          =   495
      Left            =   5280
      TabIndex        =   1
      Top             =   120
      Width           =   1815
   End
   Begin VB.PictureBox pbox 
      Height          =   5000
      Left            =   120
      ScaleHeight     =   100
      ScaleMode       =   0  'User
      ScaleWidth      =   100
      TabIndex        =   0
      Top             =   120
      Width           =   5000
   End
End
Attribute VB_Name = "Democratico"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim matriz(100, 100) As Integer
Dim matrizFutura(100, 100) As Integer
Private Sub cmdDo_Click()
llenar matriz()
Dim x As Integer
graficar matriz()
For x = 0 To 100
    DoEvents
    cambiarElementos
Next x
graficar matriz()
' en vivo
'Do: DoEvents
'    graficar matriz()
'    cambiarElementos
'Loop While True
End Sub

Private Sub llenar(ByRef matriz() As Integer)
    Dim x As Byte
    Dim y As Byte
    For x = 0 To 100
        For y = 0 To 100
            matriz(x, y) = CInt(Rnd)
        Next y
    Next x
End Sub

Private Sub cambiarElementos()
    Dim x As Byte
    Dim y As Byte
    For x = 0 To 100
        For y = 0 To 100
            matrizFutura(x, y) = maspopular(x, y)
        Next y
    Next x
    copiarMatriz
End Sub

Private Function maspopular(ByVal a As Byte, ByVal b As Byte) As Byte
    Dim suma As Byte: suma = 0
    Dim vecinos As Byte: vecinos = 0
    
    Dim x As Integer
    Dim y As Integer
    
    For x = -1 To 1
        For y = -1 To 1
            If (((x + a) > 0) And ((x + a < 100)) And ((y + b) > 0) And ((y + b) < 100)) Then
                suma = suma + matriz(x + a, y + b)
                vecinos = vecinos + 1
            End If
        Next y
    Next x
    
    If (suma > (vecinos / 2)) Then
        maspopular = 1
    Else
        maspopular = 0
    End If
        
End Function

Private Sub copiarMatriz()
    Dim x As Byte
    Dim y As Byte
    For x = 0 To 100
        For y = 0 To 100
            matriz(x, y) = matrizFutura(x, y)
        Next y
    Next x
End Sub

Private Sub graficar(ByRef matriz() As Integer)
    pbox.Cls
    pbox.DrawWidth = 5
    Dim x As Byte
    Dim y As Byte
    For x = 0 To 100
        For y = 0 To 100
            If (matriz(x, y) = 0) Then
                pbox.PSet (x, y), vbBlue
            Else
                pbox.PSet (x, y), vbMagenta
            End If
        Next y
    Next x
End Sub
