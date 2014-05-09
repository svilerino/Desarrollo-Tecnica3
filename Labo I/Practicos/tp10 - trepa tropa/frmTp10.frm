VERSION 5.00
Begin VB.Form frmTp10 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Tropa Trapo"
   ClientHeight    =   2010
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   7650
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Moveable        =   0   'False
   ScaleHeight     =   2010
   ScaleWidth      =   7650
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton cmdSalir 
      Cancel          =   -1  'True
      Caption         =   "&Salir"
      Height          =   495
      Left            =   5760
      TabIndex        =   3
      Top             =   1440
      Width           =   1695
   End
   Begin VB.ListBox lstSalida 
      Height          =   1035
      Left            =   240
      TabIndex        =   2
      Top             =   240
      Width           =   3495
   End
   Begin VB.CommandButton cmdHacer 
      Caption         =   "&Buscar Combinaciones"
      Height          =   495
      Left            =   240
      TabIndex        =   1
      Top             =   1440
      Width           =   1455
   End
   Begin VB.TextBox txtSalida 
      BackColor       =   &H00C0C0C0&
      Height          =   1095
      Left            =   3840
      Locked          =   -1  'True
      TabIndex        =   0
      Top             =   240
      Width           =   3375
   End
End
Attribute VB_Name = "frmTp10"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Private Sub Combinaciones(ByRef VectorSalida() As String)
Dim a As Byte, b As Byte, c As Byte, d As Byte, e As Byte, x As Byte, y As Byte
Dim strbdLetras(4) As String
Dim strvectorsal(125) As String
For x = 0 To 4
    strbdLetras(x) = Mid("tropa", x + 1, 1)
Next x
x = 0
For a = 0 To 4
    For b = 0 To 4
        If a <> b Then
        For c = 0 To 4
            If c <> a And c <> b Then
            For d = 0 To 4
                If d <> a And d <> b And d <> c Then
                    For e = 0 To 4
                    If e <> a And e <> b And e <> c And e <> d Then
                        VectorSalida(x) = strbdLetras(a) & strbdLetras(b) & strbdLetras(c) & strbdLetras(d) & strbdLetras(e)
                        x = x + 1
                    End If
                    Next e
                End If
                Next d
            End If
            Next c
        End If
        Next b
    Next a
For x = 0 To 119
    lstSalida.AddItem VectorSalida(x)
Next x
End Sub
Private Sub swap(ByRef vntA As Variant, ByRef vntB As Variant)
Dim auxi As Variant
auxi = vntA
vntA = vntB
vntB = auxi
End Sub
Private Sub Ordenar(ByRef vector() As String)
Dim y As Byte, z As Byte, x As Byte
For y = 0 To 118
    For z = y + 1 To 119
        If vector(y) > vector(z) Then
            swap vector(y), vector(z)
        End If
    Next z
Next y
lstSalida.Clear
For x = 0 To 119
    lstSalida.AddItem vector(x)
Next x
End Sub
Private Function Mostrar(ByRef vector() As String) As Byte
Dim x As Byte: x = 0
Do: DoEvents
    x = x + 1
Loop Until vector(x) = "trapo"
Mostrar = x + 1
End Function

Private Sub cmdHacer_Click()
lstSalida.Clear
Dim VectorSalida(119) As String
Combinaciones VectorSalida()
Ordenar VectorSalida()
txtSalida.Text = "Posicion de trapo:" & Str(Mostrar(VectorSalida()))
End Sub

Private Sub cmdSalir_Click()
Form_Unload 1
End Sub

Private Sub Form_Unload(Cancel As Integer)
End
End Sub
