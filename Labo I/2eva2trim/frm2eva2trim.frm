VERSION 5.00
Begin VB.Form frm2eva2trim 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "2eva2trim"
   ClientHeight    =   4335
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   3405
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Moveable        =   0   'False
   ScaleHeight     =   4335
   ScaleWidth      =   3405
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.TextBox txtMenor 
      Height          =   375
      Index           =   1
      Left            =   2520
      Locked          =   -1  'True
      TabIndex        =   34
      Top             =   3360
      Width           =   735
   End
   Begin VB.TextBox txtMenor 
      Height          =   375
      Index           =   0
      Left            =   840
      Locked          =   -1  'True
      TabIndex        =   33
      Top             =   3360
      Width           =   735
   End
   Begin VB.TextBox txtMayor 
      Height          =   375
      Index           =   1
      Left            =   2520
      Locked          =   -1  'True
      TabIndex        =   32
      Top             =   2760
      Width           =   735
   End
   Begin VB.TextBox txtMayor 
      Height          =   375
      Index           =   0
      Left            =   840
      Locked          =   -1  'True
      TabIndex        =   31
      Top             =   2760
      Width           =   735
   End
   Begin VB.CommandButton cmdHacer 
      Caption         =   "&Hacer"
      Height          =   375
      Left            =   120
      TabIndex        =   26
      Top             =   3840
      Width           =   1095
   End
   Begin VB.CommandButton cmdSalir 
      Cancel          =   -1  'True
      Caption         =   "&Salir"
      Height          =   375
      Left            =   2160
      TabIndex        =   25
      Top             =   3840
      Width           =   1095
   End
   Begin VB.TextBox txtMatriz 
      Height          =   495
      Index           =   24
      Left            =   2520
      Locked          =   -1  'True
      TabIndex        =   24
      Top             =   2040
      Width           =   615
   End
   Begin VB.TextBox txtMatriz 
      Height          =   495
      Index           =   23
      Left            =   1920
      Locked          =   -1  'True
      TabIndex        =   23
      Top             =   2040
      Width           =   615
   End
   Begin VB.TextBox txtMatriz 
      Height          =   495
      Index           =   22
      Left            =   1320
      Locked          =   -1  'True
      TabIndex        =   22
      Top             =   2040
      Width           =   615
   End
   Begin VB.TextBox txtMatriz 
      Height          =   495
      Index           =   21
      Left            =   720
      Locked          =   -1  'True
      TabIndex        =   21
      Top             =   2040
      Width           =   615
   End
   Begin VB.TextBox txtMatriz 
      Height          =   495
      Index           =   20
      Left            =   120
      Locked          =   -1  'True
      TabIndex        =   20
      Top             =   2040
      Width           =   615
   End
   Begin VB.TextBox txtMatriz 
      Height          =   495
      Index           =   19
      Left            =   2520
      Locked          =   -1  'True
      TabIndex        =   19
      Top             =   1560
      Width           =   615
   End
   Begin VB.TextBox txtMatriz 
      Height          =   495
      Index           =   18
      Left            =   1920
      Locked          =   -1  'True
      TabIndex        =   18
      Top             =   1560
      Width           =   615
   End
   Begin VB.TextBox txtMatriz 
      Height          =   495
      Index           =   17
      Left            =   1320
      Locked          =   -1  'True
      TabIndex        =   17
      Top             =   1560
      Width           =   615
   End
   Begin VB.TextBox txtMatriz 
      Height          =   495
      Index           =   16
      Left            =   720
      Locked          =   -1  'True
      TabIndex        =   16
      Top             =   1560
      Width           =   615
   End
   Begin VB.TextBox txtMatriz 
      Height          =   495
      Index           =   15
      Left            =   120
      Locked          =   -1  'True
      TabIndex        =   15
      Top             =   1560
      Width           =   615
   End
   Begin VB.TextBox txtMatriz 
      Height          =   495
      Index           =   14
      Left            =   2520
      Locked          =   -1  'True
      TabIndex        =   14
      Top             =   1080
      Width           =   615
   End
   Begin VB.TextBox txtMatriz 
      Height          =   495
      Index           =   13
      Left            =   1920
      Locked          =   -1  'True
      TabIndex        =   13
      Top             =   1080
      Width           =   615
   End
   Begin VB.TextBox txtMatriz 
      Height          =   495
      Index           =   12
      Left            =   1320
      Locked          =   -1  'True
      TabIndex        =   12
      Top             =   1080
      Width           =   615
   End
   Begin VB.TextBox txtMatriz 
      Height          =   495
      Index           =   11
      Left            =   720
      Locked          =   -1  'True
      TabIndex        =   11
      Top             =   1080
      Width           =   615
   End
   Begin VB.TextBox txtMatriz 
      Height          =   495
      Index           =   10
      Left            =   120
      Locked          =   -1  'True
      TabIndex        =   10
      Top             =   1080
      Width           =   615
   End
   Begin VB.TextBox txtMatriz 
      Height          =   495
      Index           =   9
      Left            =   2520
      Locked          =   -1  'True
      TabIndex        =   9
      Top             =   600
      Width           =   615
   End
   Begin VB.TextBox txtMatriz 
      Height          =   495
      Index           =   8
      Left            =   1920
      Locked          =   -1  'True
      TabIndex        =   8
      Top             =   600
      Width           =   615
   End
   Begin VB.TextBox txtMatriz 
      Height          =   495
      Index           =   7
      Left            =   1320
      Locked          =   -1  'True
      TabIndex        =   7
      Top             =   600
      Width           =   615
   End
   Begin VB.TextBox txtMatriz 
      Height          =   495
      Index           =   6
      Left            =   720
      Locked          =   -1  'True
      TabIndex        =   6
      Top             =   600
      Width           =   615
   End
   Begin VB.TextBox txtMatriz 
      Height          =   495
      Index           =   5
      Left            =   120
      Locked          =   -1  'True
      TabIndex        =   5
      Top             =   600
      Width           =   615
   End
   Begin VB.TextBox txtMatriz 
      Height          =   495
      Index           =   4
      Left            =   2520
      Locked          =   -1  'True
      TabIndex        =   4
      Top             =   120
      Width           =   615
   End
   Begin VB.TextBox txtMatriz 
      Height          =   495
      Index           =   3
      Left            =   1920
      Locked          =   -1  'True
      TabIndex        =   3
      Top             =   120
      Width           =   615
   End
   Begin VB.TextBox txtMatriz 
      Height          =   495
      Index           =   2
      Left            =   1320
      Locked          =   -1  'True
      TabIndex        =   2
      Top             =   120
      Width           =   615
   End
   Begin VB.TextBox txtMatriz 
      Height          =   495
      Index           =   1
      Left            =   720
      Locked          =   -1  'True
      TabIndex        =   1
      Top             =   120
      Width           =   615
   End
   Begin VB.TextBox txtMatriz 
      Height          =   495
      Index           =   0
      Left            =   120
      Locked          =   -1  'True
      TabIndex        =   0
      Top             =   120
      Width           =   615
   End
   Begin VB.Label Label4 
      Caption         =   "Posicion:"
      Height          =   375
      Left            =   1680
      TabIndex        =   30
      Top             =   3360
      Width           =   735
   End
   Begin VB.Label Label3 
      Caption         =   "Posicion:"
      Height          =   375
      Left            =   1680
      TabIndex        =   29
      Top             =   2760
      Width           =   735
   End
   Begin VB.Label Label2 
      Caption         =   "Menor:"
      Height          =   375
      Left            =   120
      TabIndex        =   28
      Top             =   3360
      Width           =   615
   End
   Begin VB.Label Label1 
      Caption         =   "Mayor:"
      Height          =   375
      Left            =   120
      TabIndex        =   27
      Top             =   2760
      Width           =   615
   End
End
Attribute VB_Name = "frm2eva2trim"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
'Evaluación:
'Llenar una matriz cuadrada de 5 filas con enteros al azar sin repetir entre 0 y 30. Se la deberá
'mostrar con los elementos comprendidos entre el mayor y el menor, ordenados por columnas.
'La matriz quedará completamente ordenada por columnas, sólo en el caso en que el menor elemento sea el (0,0) y el mayor (4,4).
'Poner datos del alumno y este eunuciado a manera de comentario al comienzo del código.
'Poner título en la solapa de la aplicación.
'Guardar como 2eva2trim en una carpeta del mismo nombre dentro del raiz de la cuenta de
'usuario.
'Alumno: Vileriño, Silvio
'Curso: 4to 2da Turno Mañana.
'Cuenta:12b07

Private Function Esta(ByRef Matriz() As Byte, ByVal Numero As Byte, ByVal posibicho As Byte) As Boolean
Dim posi As Byte, fila As Byte, columna As Byte, boolsi As Boolean
posi = 0: fila = 0: columna = 0: boolsi = False
Do: DoEvents ' recorre la matriz como un vector buscando el numero pasado como parametro
    fila = posi \ 5
    columna = posi Mod 5
    If Matriz(fila, columna) = Numero Then boolsi = True
    posi = posi + 1
Loop While Not (posi - 1 = posibicho Or boolsi) 'busca hasta llegar a la ultima posicion llena o sale si lo encontro
Esta = boolsi
End Function
Private Sub Prelleno(ByRef Matriz() As Byte) 'prellena la matriz con "99"
Dim byteX As Byte, byteY As Byte
For byteX = 0 To 4
    For byteY = 0 To 4
        Matriz(byteX, byteY) = 99
    Next byteY
Next byteX
End Sub
Private Function Vale(ByRef Matriz() As Byte) As Boolean
'busca el mayor,el menor,guarda sus posiciones y devuelve verdadero solo si la posicion del menor es menor a la posicion del mayor
Dim posi As Byte, mayor As Byte, menor As Byte, posimayor As Byte, posimenor As Byte
For posi = 0 To 24
    If Matriz(posi Mod 5, posi \ 5) > mayor Then
        mayor = Matriz(posi Mod 5, posi \ 5)
        posimayor = posi
    End If
Next posi
menor = mayor
For posi = 0 To 24
    If Matriz(posi Mod 5, posi \ 5) < menor Then
        menor = Matriz(posi Mod 5, posi \ 5)
        posimenor = posi
    End If
Next posi
If posimenor < posimayor Then
    Vale = True
    'llama al procedimiento de ordenamiento pasandole los valores de las posiciones.
    OrdenarMatriz Matriz(), posimenor, posimayor
    'muestra en el form las posiciones y su contenido
txtMayor(0) = Str(mayor)
txtMayor(1) = Str(posimayor)
txtMenor(0) = Str(menor)
txtMenor(1) = Str(posimenor)
Else
    Vale = False
End If
End Function
Private Sub Llenar(ByRef Matriz() As Byte) 'llena al azar sin repetir entre 0 y 30
Dim byteX As Byte, byteY As Byte, byteAzar As Byte
Do: DoEvents
    byteAzar = Fix(31 * Rnd)
    For byteX = 0 To 4
        For byteY = 0 To 4
            If Not Esta(Matriz(), byteAzar, (byteX * 5) + byteY) Then
                Matriz(byteX, byteY) = byteAzar
            Else
                Do: DoEvents
                    byteAzar = Fix(31 * Rnd)
                Loop While Esta(Matriz(), byteAzar, (byteX * 5) + byteY)
                Matriz(byteX, byteY) = byteAzar
            End If
        Next byteY
    Next byteX
Loop While Not Vale(Matriz()) 'repite hasta que la matriz sea valida
End Sub
Private Sub Mostrar(ByRef Matriz() As Byte) 'muestra en un vector de textbox la matriz
Dim byteX As Byte, fila As Byte, columna As Byte
For byteX = 0 To 24
    fila = byteX \ 5
    columna = byteX Mod 5
    txtMatriz(byteX).Text = Str(Matriz(fila, columna))
Next byteX
End Sub
Private Sub OrdenarMatriz(ByRef Matriz() As Byte, ByVal posini As Byte, ByVal posifin As Byte) 'ordena por columnas la matriz,con las posiciones indicadas de inicio y fin,
Dim posi As Byte, posi1 As Byte, fila As Byte, columna As Byte, fila1 As Byte, columna1 As Byte
For posi = posini To posifin - 1 ' posiciones de inicio y fin,pasados de la funcion vale
    fila = posi \ 5
    columna = posi Mod 5
    For posi1 = posi + 1 To posifin
        fila1 = posi1 \ 5
        columna1 = posi1 Mod 5
        If Matriz(columna, fila) > Matriz(columna1, fila1) Then Swap Matriz(columna, fila), Matriz(columna1, fila1)
    Next posi1
Next posi
End Sub
Private Sub Swap(ByRef vntA As Variant, ByRef vntB As Variant) 'intercambia valores
Dim vntC As Variant
vntC = vntA
vntA = vntB
vntB = vntC
End Sub

Private Sub cmdHacer_Click()
Dim Matriz(4, 4) As Byte 'declaracion de matriz
Prelleno Matriz() 'relleno con "99"
Llenar Matriz() 'llenado al azar sin repetir, llamada a validacion, y si es valida, ordena desde los puntos menor y mayor,sino llena de nuevo hasta que sea valida.
Mostrar Matriz() 'muestra en el form.-
End Sub

Private Sub cmdSalir_Click()
Form_Unload 0
End Sub

Private Sub Form_Load()
Randomize Timer
End Sub

Private Sub Form_Unload(Cancel As Integer)
End
End Sub
