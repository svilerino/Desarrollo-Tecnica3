VERSION 5.00
Begin VB.Form frm1eva2trim 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "1eva2trim"
   ClientHeight    =   1545
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   6810
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1545
   ScaleWidth      =   6810
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdSalir 
      Cancel          =   -1  'True
      Caption         =   "&Salir"
      Height          =   615
      Left            =   1680
      TabIndex        =   5
      Top             =   840
      Width           =   1695
   End
   Begin VB.CommandButton cmdHacer 
      Caption         =   "&Buscar Numeros"
      Height          =   615
      Left            =   0
      TabIndex        =   0
      Top             =   840
      Width           =   1575
   End
   Begin VB.Label lblSalida2 
      Height          =   255
      Left            =   5160
      TabIndex        =   4
      Top             =   840
      Width           =   1455
   End
   Begin VB.Label Label2 
      Caption         =   "Y repitiendolos:"
      Height          =   255
      Left            =   3720
      TabIndex        =   3
      Top             =   840
      Width           =   1215
   End
   Begin VB.Label lblSalida1 
      Height          =   375
      Left            =   5160
      TabIndex        =   2
      Top             =   360
      Width           =   1455
   End
   Begin VB.Label Label1 
      Caption         =   $"frm1eva2trim.frx":0000
      Height          =   495
      Left            =   120
      TabIndex        =   1
      Top             =   120
      Width           =   4935
   End
End
Attribute VB_Name = "frm1eva2trim"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
'Evaluación: encontrar el mayor valor entero par, que se forma con los 4 primeros decimales de la raíz cuadrada de 2.
'Guardar la evaluación como "1eva2trim" en una carpeta del mismo nombre - Ponerle título en la solapa del form, y
'agregar este enunciado a manera de comentario en el comienzo del código, junto a los datos del alumno.
'///
'Alumno: Vileriño, Silvio
' Curso: 4to 2da CSC TM

Private Sub Encontrar4Dec(ByRef strvector() As String) ' encuentra los 4 decimales de la raiz de 4
Dim sngRaiz As Single, strDeci As String, byteX As Byte
byteX = 0
sngRaiz = 2 ^ 0.5
Do: DoEvents
    byteX = byteX + 1
Loop Until Mid(Trim(Str(sngRaiz)), byteX, 1) = "." ' busca la coma ( o el punto )
strDeci = Mid(Trim(Str(sngRaiz)), byteX + 1, 4)
For byteX = 0 To 3
    strvector(byteX) = Mid(strDeci, byteX + 1, 1)
Next byteX 'saca los primeros 4 decimales y los guarda en un vector
End Sub
Private Sub Combinacion(ByRef strvector2() As String, ByRef strvector() As String) ' busca combinaciones sin repeticion de digitos
Dim byteA As Byte, byteB As Byte, byteC As Byte, byteD As Byte, ByteE As Integer
ByteE = 0
For byteA = 0 To 3
    For byteB = 0 To 3
        If byteB <> byteA Then
            For byteC = 0 To 3
                If byteC <> byteA And byteC <> byteB Then
                    For byteD = 0 To 3
                        If byteD <> byteA And byteD <> byteB And byteD <> byteC Then
                            strvector2(ByteE) = strvector(byteA) & strvector(byteB) & strvector(byteC) & strvector(byteD)
                            ByteE = ByteE + 1
                        End If
                    Next byteD
                End If
            Next byteC
        End If
    Next byteB
Next byteA
End Sub
Private Sub Combinacion2(ByRef strvector2() As String, ByRef strvector() As String) 'busca repeticiones cualquiera, con digitos repetidos inclusive
Dim byteA As Byte, byteB As Byte, byteC As Byte, byteD As Byte, ByteE As Integer
ByteE = 0
For byteA = 0 To 3
    For byteB = 0 To 3
        For byteC = 0 To 3
            For byteD = 0 To 3
                strvector2(ByteE) = strvector(byteA) & strvector(byteB) & strvector(byteC) & strvector(byteD)
                ByteE = ByteE + 1
            Next byteD
        Next byteC
    Next byteB
Next byteA
End Sub
Private Sub Swap(ByRef vntA As Variant, ByRef vntB As Variant) 'funcion swap para ordenamiento(intercambio)
Dim vntAuxi As Variant
vntAuxi = vntA
vntA = vntB
vntB = vntAuxi
End Sub
Private Sub Ordenar(ByRef Vector() As String) 'ordenamiento de vectores
Dim byteX As Byte, intY As Integer, intMayor As Byte
For byteX = 0 To 254
    For intY = byteX + 1 To 255
        If Val(Vector(byteX)) < Val(Vector(intY)) Then Swap Vector(byteX), Vector(intY)
    Next intY
Next byteX
End Sub
Private Function BuscaMayor(ByRef Vector() As String) As Integer 'busca el numero mayor de un vector
Dim intX As Integer, intMayor As Integer
For intX = 0 To 255
    If Val(Vector(intX)) > intMayor Then
        intMayor = Val(Vector(intX))
    End If
Next intX
BuscaMayor = intMayor
End Function

Private Sub cmdHacer_Click() 'boton
'declaracion de variables, llamada a procedimientos y muestra de datos,
Dim strvector(3) As String, strvector2(255) As String
Encontrar4Dec strvector()
Combinacion strvector2(), strvector()
Ordenar strvector2()
lblSalida1.Caption = Str(BuscaMayor(strvector2()))
Combinacion2 strvector2(), strvector()
Ordenar strvector2()
lblSalida2.Caption = Str(BuscaMayor(strvector2()))
End Sub

'fin; no duermo hasta el martes que me la corrija :(
