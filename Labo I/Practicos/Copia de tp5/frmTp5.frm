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
      Caption         =   "&Romano"
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
      Caption         =   "Palindromizado        o Numero arabigo"
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
Private Function IntRomano(ByVal strIngreso As String) As Long
Dim byteX As Byte, byteY As Byte 'declaracion de variables
Dim intNumero As Integer
Dim intSalida As Long
Dim strValida As String
Dim byteContI As Byte
For byteX = 1 To Len(strIngreso) 'repeticion
    Select Case UCase(Mid(strIngreso, byteX, 1)) 'reconoce y codifica caracteres
        Case Is = "I"
            byteContI = byteContI + 1 'cuenta veces que se usa "I"
            If Not byteContI > 3 Then
                intNumero = "1"
                strValida = strValida & UCase(Mid(strIngreso, byteX, 1)) 'valida y pone en la string de validos
            Else
                intNumero = 0 'si no es valido no sumar
                MsgBox "El valor expresado como I ha llegado a su limite"
            End If
        Case Is = "V"
            intNumero = "5"
            strValida = strValida & UCase(Mid(strIngreso, byteX, 1))
        Case Is = "X"
            intNumero = "10"
            strValida = strValida & UCase(Mid(strIngreso, byteX, 1))
        Case Is = "D"
            intNumero = "500"
            strValida = strValida & UCase(Mid(strIngreso, byteX, 1))
        Case Is = "M"
            intNumero = "1000"
            strValida = strValida & UCase(Mid(strIngreso, byteX, 1))
        Case Is = "C"
            intNumero = "100"
            strValida = strValida & UCase(Mid(strIngreso, byteX, 1))
        Case Is = "L"
            intNumero = "50"
            strValida = strValida & UCase(Mid(strIngreso, byteX, 1))
        Case Else 'si no es un caracter romano mostrar :
            MsgBox "El caracter ubicado en" & Str(byteX) & " no es un numero valido ¬¬"
    End Select
intSalida = intSalida + intNumero ' sumar numero romano convertido en arabigo en una variable integer
txtIngreso.Text = strValida 'cargar datos validos y mostrarlos en mayuscula en el textbox de ingreso
Next byteX
If Len(txtIngreso.Text) > 1 Then
For byteY = 1 To Len(txtIngreso.Text) 'buscar excepciones de resta
    Select Case LCase(Mid(txtIngreso.Text, byteY, 2))
        Case Is = "iv"
            intSalida = intSalida - 2 'resta 2 por haber sumado antes su valor (1)
        Case Is = "ix"
            intSalida = intSalida - 2 'resta 2 por haber sumado antes su valor (1)
        Case Is = "xc"
            intSalida = intSalida - 20 'resta 20 por haber sumado antes su valor (10)
        Case Is = "cm"
            intSalida = intSalida - 200 'resta 200 por haber sumado antes su valor (100)
    End Select
Next byteY
End If
IntRomano = intSalida 'asignar valor a la funcion
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
txtSalida.Text = Str(IntRomano(txtIngreso.Text))
End Sub

Private Sub cmdSalir_Click()
'fin
End
End Sub




