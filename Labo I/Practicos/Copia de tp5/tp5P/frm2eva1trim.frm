VERSION 5.00
Begin VB.Form frm2eva1trim 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "2eva1trim"
   ClientHeight    =   4320
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   7095
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Moveable        =   0   'False
   ScaleHeight     =   4320
   ScaleWidth      =   7095
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton cmdSalir 
      Cancel          =   -1  'True
      Caption         =   "&Salir"
      Height          =   495
      Left            =   3600
      TabIndex        =   2
      Top             =   3480
      Width           =   2655
   End
   Begin VB.TextBox txtDescomprimida 
      Height          =   375
      Left            =   2400
      Locked          =   -1  'True
      TabIndex        =   9
      Top             =   840
      Width           =   4455
   End
   Begin VB.CommandButton cmdHacer 
      Caption         =   "&Descomprimir y calcular cantidad de vocales,consonantes y palabras"
      Height          =   495
      Left            =   720
      TabIndex        =   1
      Top             =   3480
      Width           =   2655
   End
   Begin VB.TextBox txtEntrada 
      Height          =   375
      Left            =   2400
      TabIndex        =   0
      Top             =   240
      Width           =   4455
   End
   Begin VB.Frame Frame1 
      Caption         =   "La oracion contiene :"
      Height          =   1575
      Left            =   240
      TabIndex        =   3
      Top             =   1680
      Width           =   6735
      Begin VB.Label lblPalabras 
         Height          =   375
         Left            =   240
         TabIndex        =   7
         Top             =   1080
         Width           =   3135
      End
      Begin VB.Label lblConsonantes 
         Height          =   375
         Left            =   240
         TabIndex        =   6
         Top             =   720
         Width           =   3015
      End
      Begin VB.Label lblVocales 
         Height          =   375
         Left            =   240
         TabIndex        =   5
         Top             =   360
         Width           =   3015
      End
   End
   Begin VB.Label Label2 
      Caption         =   "Oracion Descomprimida"
      Height          =   375
      Left            =   120
      TabIndex        =   8
      Top             =   840
      Width           =   2175
   End
   Begin VB.Label Label1 
      Caption         =   "Ingrese oracion comprimida:"
      Height          =   255
      Left            =   120
      TabIndex        =   4
      Top             =   360
      Width           =   2055
   End
End
Attribute VB_Name = "frm2eva1trim"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
'Evaluación:
'Realizar un aplicación que reciba una oración comprimida, y a través de funciones, la descomprima
'para ser mostrada, muestre la cantidad de palabras que la conforman, la cantidad de vocales y la cantidad de
'consonantes. La compresión consiste en reemplazar una letra por el número de veces que se repite y mostrar
'la letra una sola vez. Ejemplos: "El pe2ro no c2ordina" (oración comprimida recibida) -> El perro no coordina (oración descomprimida mostrada); "2e3i -> eeiii".
'Guardar la aplicación como 2Eva1Trim, en carpeta del mismo nombre, poniendo este enunciado a manera de
'comentario al principio del código, junto a los datos del alumno. Poner nombre de la aplicación en la solapa del Form.
'Alumno : Vileriño, Silvio
'Curso:4to 2da

Private Function byteCuentaVocales(ByVal strEntrada As String) As Byte ' funcion declarada por el usuario para contar vocales
Dim byteX As Byte
Dim byteContador As Byte: byteContador = 0
For byteX = 1 To Len(strEntrada) ' recorre desde el principio hasta el final de la oracion buscando a,e,i,o,u
    Select Case Mid(strEntrada, byteX, 1)
        Case Is = "a", "e", "i", "o", "u"
            byteContador = byteContador + 1 'si encuentra una , la cuenta
    End Select
Next byteX
byteCuentaVocales = byteContador ' asigna a la funcion la cantidad de vocales
End Function
Private Function byteCuentaConsonantes(ByVal strEntrada As String) As Byte ' funcion declarada por el usuario para contar consonantes
Dim byteX As Byte
Dim byteContador As Byte: byteContador = 0
For byteX = 1 To Len(strEntrada) 'recorre la oracion buscando consonantes
    Select Case Mid(strEntrada, byteX, 1)
        Case Is = "b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"
            byteContador = byteContador + 1 ' si las encuentra las cuenta
    End Select
Next byteX
byteCuentaConsonantes = byteContador ' asigna el valor del contador
End Function
Private Function byteCuentaPalabras(ByVal strEntrada As String) As Byte ' funcion declarada por el usuario para contar palabras
Dim byteX As Byte
Dim byteContador As Byte: byteContador = 1 ' pone el contador en 1, dado que las palabras son cantidad de espacios +1
For byteX = 1 To Len(strEntrada) ' recorre la palabra buscando espacios
    If Mid(strEntrada, byteX, 1) = " " Then byteContador = byteContador + 1 'si los encuentra suma 1
Next byteX
byteCuentaPalabras = byteContador 'asigna el valor del contador
End Function
Private Function strDescomprimir(ByVal strEntrada As String) As String ' funcion declarada por el usuario de descompresion
Dim byteX As Byte
Dim byteY As Byte
Dim boolcomprimida As Boolean
For byteX = 1 To Len(strEntrada) ' recorre del principio al final de la oracion
    If Val(Mid(strEntrada, byteX, 1)) > 0 Then boolcomprimida = True ' si hay algun valor numerico de caracter que sea mayor a 0 entonces esta comprimida
Next byteX
If boolcomprimida Then ' si esta comprimida
    For byteX = 1 To Len(strEntrada) ' recorre de principio a final de oracion
        If Val(Mid(strEntrada, byteX, 1)) > 0 Then ' si el caracter es un numero
            For byteY = 1 To Val(Mid(strEntrada, (byteX), 1)) - 1 'agrega x vocales como sea el valor del numero
                strDescomprimir = strDescomprimir & Mid(strEntrada, byteX + 1, 1)
            Next byteY
        Else ' sino es un numero
            strDescomprimir = strDescomprimir & Mid(strEntrada, byteX, 1) 'pega el caracter
        End If
    Next byteX
Else ' sino esta comprimida
    strDescomprimir = strEntrada ' muestra la oracion como se ingreso
End If
End Function

Private Sub cmdHacer_Click()
lblVocales.Caption = "" ' limpia los labels
lblConsonantes.Caption = ""
lblPalabras.Caption = ""
If Not txtEntrada.Text = "" Then ' si no esta vacio el ingreso
    Dim strDescomprimida
    strDescomprimida = strDescomprimir(txtEntrada.Text) 'descomprimir la cadena llamando a funcion
    lblVocales.Caption = Str(byteCuentaVocales(strDescomprimida)) & " Vocales" 'mostrar conteo de vocales llamando funcion
    lblConsonantes.Caption = Str(byteCuentaConsonantes(strDescomprimida)) & " Consonantes" 'mostrar conteo de consonantes llamando a funcion
    lblPalabras.Caption = Str(byteCuentaPalabras(strDescomprimida)) & " Palabras" ' mostrar conteo de palabras llamando a funcion
    txtDescomprimida.Text = strDescomprimida 'mostrar cadena descomprimida
Else ' si esta vacio
    lblPalabras.Caption = "No se ha ingresado nada." ' mostrar que no se ingreso nada
End If
End Sub

Private Sub cmdSalir_Click()
End 'fin
End Sub
