VERSION 5.00
Begin VB.Form frmTp5 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Tp5"
   ClientHeight    =   3510
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   7710
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3510
   ScaleWidth      =   7710
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton cmdRomano 
      Caption         =   "&Romano o Arabigo"
      Height          =   735
      Left            =   120
      TabIndex        =   5
      Top             =   2640
      Width           =   2175
   End
   Begin VB.CommandButton cmdPalondromizar2 
      Caption         =   "P&alindromizar Mejor ;)"
      Height          =   615
      Left            =   2400
      TabIndex        =   3
      Top             =   1920
      Width           =   2895
   End
   Begin VB.CommandButton cmdSalir 
      Cancel          =   -1  'True
      Caption         =   "&Salir"
      Height          =   615
      Left            =   5400
      TabIndex        =   4
      Top             =   1920
      Width           =   2055
   End
   Begin VB.CommandButton cmdPalindromizar 
      Caption         =   "&Palindromizar"
      Height          =   615
      Left            =   120
      TabIndex        =   2
      Top             =   1920
      Width           =   2175
   End
   Begin VB.TextBox txtSalida 
      BackColor       =   &H8000000F&
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   1680
      Locked          =   -1  'True
      TabIndex        =   1
      Top             =   1080
      Width           =   5895
   End
   Begin VB.TextBox txtIngreso 
      BackColor       =   &H8000000F&
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   1680
      TabIndex        =   0
      Top             =   120
      Width           =   5895
   End
   Begin VB.Line Line3 
      X1              =   1560
      X2              =   1560
      Y1              =   0
      Y2              =   1800
   End
   Begin VB.Line Line2 
      X1              =   0
      X2              =   7680
      Y1              =   1800
      Y2              =   1800
   End
   Begin VB.Line Line1 
      X1              =   0
      X2              =   7680
      Y1              =   960
      Y2              =   960
   End
   Begin VB.Label Label2 
      Caption         =   "Palindromizado        o Numero arabigo (miles)"
      Height          =   615
      Left            =   0
      TabIndex        =   7
      Top             =   1080
      Width           =   1455
   End
   Begin VB.Label Label1 
      Caption         =   "Ingrese Palabra o Numero Romano"
      Height          =   735
      Left            =   0
      TabIndex        =   6
      Top             =   120
      Width           =   1455
   End
End
Attribute VB_Name = "frmTp5"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Private Function strUMArab(ByVal strCompleto As String) As String
Select Case Mid(strCompleto, 1, 1)
    Case Is = "0"
        strUMArab = ""
    Case Is = "1"
        strUMArab = "M"
    Case Is = "2"
        strUMArab = "MM"
    Case Is = "3"
        strUMArab = "MMM"
    Case Is = "4"
        strUMArab = "(IV)"
    Case Is = "5"
        strUMArab = "(V)"
    Case Is = "6"
        strUMArab = "(VI)"
    Case Is = "7"
        strUMArab = "(VII)"
    Case Is = "8"
        strUMArab = "(VIII)"
    Case Is = "9"
        strUMArab = "(IX)"
End Select
End Function
Private Function strCArab(ByVal strCompleto As String) As String
Select Case Mid(strCompleto, 2, 1)
    Case Is = "0"
        strCArab = ""
    Case Is = "1"
        strCArab = "C"
    Case Is = "2"
        strCArab = "CC"
    Case Is = "3"
        strCArab = "CCC"
    Case Is = "4"
        strCArab = "CD"
    Case Is = "5"
        strCArab = "D"
    Case Is = "6"
        strCArab = "DC"
    Case Is = "7"
        strCArab = "DCC"
    Case Is = "8"
        strCArab = "DCCC"
    Case Is = "9"
        strCArab = "CM"
End Select
End Function
Private Function strDArab(ByVal strCompleto As String) As String
Select Case Mid(strCompleto, 3, 1)
    Case Is = "0"
        strDArab = ""
    Case Is = "1"
        strDArab = "X"
    Case Is = "2"
        strDArab = "XX"
    Case Is = "3"
        strDArab = "XXX"
    Case Is = "4"
        strDArab = "XL"
    Case Is = "5"
        strDArab = "L"
    Case Is = "6"
        strDArab = "LX"
    Case Is = "7"
        strDArab = "LXX"
    Case Is = "8"
        strDArab = "LXXX"
    Case Is = "9"
        strDArab = "XC"
End Select
End Function

Private Function strUArab(ByVal strCompleto As String) As String
Select Case Mid(strCompleto, 4, 1)
    Case Is = "0"
        strUArab = ""
    Case Is = "1"
        strUArab = "I"
    Case Is = "2"
        strUArab = "II"
    Case Is = "3"
        strUArab = "III"
    Case Is = "4"
        strUArab = "IV"
    Case Is = "5"
        strUArab = "V"
    Case Is = "6"
        strUArab = "VI"
    Case Is = "7"
        strUArab = "VII"
    Case Is = "8"
        strUArab = "VIII"
    Case Is = "9"
        strUArab = "IX"
End Select
End Function

Private Function strCompletar0(ByVal strIngreso As String) As String
If Len(strIngreso) < 4 Then
    Dim strCompleto As String
    Dim byteX As Byte
    Do: DoEvents
        byteX = byteX + 1
        strIngreso = "0" & strIngreso
    Loop While Not Len(strIngreso) = 4
    strCompletar0 = strIngreso
Else
    If Len(strIngreso) = 4 Then
        strCompletar0 = strIngreso
    Else
        strCompletar0 = "numero muy grande!"
    End If
End If
End Function
Private Function boolVale4(ByVal strIngreso As String) As Boolean
boolVale4 = True
End Function
Private Function boolVale3(ByVal strIngreso As String) As Boolean
boolVale3 = True
End Function

Private Function boolVale2(ByVal strIngreso As String) As Boolean
boolVale2 = True
End Function

Private Function boolVale(ByVal strIngreso As String) As Boolean
If Not Len(strIngreso) = 0 Then
    Dim byteX As Byte, byteCont As Byte, strletra As String
    byteCont = 1
    For byteX = 1 To Len(strIngreso)
        strletra = Mid(strIngreso, byteX, 1)
        If strletra = Mid(strIngreso, byteX + 1, 1) Then
            byteCont = byteCont + 1
        End If
    Next byteX
    If byteCont > 3 Then
        boolVale = False
    Else
        boolVale = True
    End If
End If
End Function


'declaracion de funcion privada,
Private Function strInvPal(ByVal strIngreso As String) As String
    'declaracion de variable
    Dim x As Byte, strSalida As String
        'estructura de repeticion for
        For x = 1 To Len(strIngreso)
            strSalida = LCase(Mid(strIngreso, x, 1) & strSalida)
        Next x
        'carga de resultado a la funcion,
        strInvPal = strSalida
End Function
Private Function strSilabear(ByVal strIngreso As String) As String

End Function

Private Function convRomano(ByVal strIngresoRom As String) As Integer
Select Case strIngresoRom 'reconoce y codifica caracteres
        Case Is = "I"
            convRomano = 1
        Case Is = "V"
            convRomano = 5
        Case Is = "X"
            convRomano = 10
        Case Is = "D"
            convRomano = 500
        Case Is = "M"
            convRomano = 1000
        Case Is = "C"
            convRomano = 100
        Case Is = "L"
            convRomano = 50
        Case Else
            convRomano = 0
    End Select
End Function
Private Sub cmdPalindromizar_Click()
txtSalida.Text = ""
'si la palabra es igual a la palabra invertida
If strInvPal(txtIngreso.Text) = LCase(txtIngreso.Text) Then
    'mostrar " es palindrome "
    txtSalida.Text = Chr(34) & LCase(txtIngreso.Text) & Chr(34) & " ya es palindromo"
Else 'sino
    'mostrar la palabra palindromizada,
    txtSalida.Text = Chr(34) & LCase(txtIngreso.Text) & Mid(strInvPal(txtIngreso.Text), 2, Len(strInvPal(txtIngreso.Text))) & Chr(34) & " Es la palabra ingresada palindromizada"
'fin si
End If
'fin sub
End Sub

Private Sub cmdPalondromizar2_Click()
Dim x As Byte
txtSalida.Text = ""
'si la palabra es igual a la palabra invertida
If strInvPal(txtIngreso.Text) = LCase(txtIngreso.Text) Then
    'mostrar " es palindrome "
    txtSalida.Text = Chr(34) & LCase(txtIngreso.Text) & Chr(34) & " ya es palindromo"
Else 'sino
    'mostrar la palabra palindromizada,
Dim strPalabra As String, byteCantletras As Byte
byteCantletras = 0
Do: DoEvents
    byteCantletras = byteCantletras + 1
    strPalabra = txtIngreso.Text & strInvPal(Left(txtIngreso.Text, byteCantletras))
Loop While Not strPalabra = strInvPal(strPalabra)
txtSalida.Text = Chr(34) & strPalabra & Chr(34) & " Es la palabra ingresada palindromizada"
'fin si
End If
'fin sub
End Sub

Private Sub cmdRomano_Click()
txtIngreso.Text = UCase(txtIngreso.Text)
txtSalida.Text = ""
If Val(txtIngreso.Text) = 0 Then
    If boolVale4(txtIngreso.Text) Then
        If boolVale3(txtIngreso.Text) Then
            If boolVale2(txtIngreso.Text) Then
                If boolVale(txtIngreso.Text) Then
                    Dim byteX As Byte, intSalida As Integer
                    intSalida = convRomano(Mid(txtIngreso.Text, Len(txtIngreso.Text), 1))
                    For byteX = 1 To Len(txtIngreso.Text) - 1
                        If convRomano(Mid(txtIngreso.Text, byteX, 1)) >= convRomano(Mid(txtIngreso.Text, byteX + 1, 1)) Then
                            intSalida = intSalida + convRomano(Mid(txtIngreso.Text, byteX, 1))
                        Else
                            intSalida = intSalida - convRomano(Mid(txtIngreso.Text, byteX, 1))
                        End If
                    Next byteX
                    txtSalida.Text = Str(intSalida) & "  En Arabigo"
                    txtIngreso.Text = txtIngreso.Text & "  En Romano"
                Else
                    txtSalida.Text = "Error en el Romano"
                End If
            Else
                txtSalida.Text = ""
            End If
        Else
            txtSalida.Text = ""
        End If
    Else
        txtSalida.Text = "Se repite L,V o D"
    End If
Else
    Dim strCompleto As String
    strCompleto = strCompletar0(txtIngreso.Text)
    txtIngreso.Text = strCompleto & " En Arabigo"
    txtSalida.Text = strUMArab(strCompleto) & strCArab(strCompleto) & strDArab(strCompleto) & strUArab(strCompleto) & "  En Romano"
End If
End Sub

Private Sub cmdSalir_Click()
'fin
End
End Sub

Private Sub txtIngreso_Click()
txtIngreso.Text = ""
End Sub
