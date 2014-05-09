VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Begin VB.Form frm3eva3Trim 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "3eva3trim"
   ClientHeight    =   7620
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   11745
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   7620
   ScaleWidth      =   11745
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdSalir 
      Caption         =   "Salir"
      Height          =   375
      Left            =   10440
      TabIndex        =   10
      Top             =   7200
      Width           =   1215
   End
   Begin MSComDlg.CommonDialog dialogo 
      Left            =   5040
      Top             =   7200
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.CommandButton cmdRandom 
      Caption         =   "Generar Valores Aleatorios"
      Height          =   375
      Left            =   120
      TabIndex        =   9
      Top             =   7200
      Width           =   2415
   End
   Begin VB.CommandButton cmdGraficar 
      Caption         =   "Graficar"
      Height          =   375
      Left            =   5280
      TabIndex        =   8
      Top             =   7200
      Width           =   1815
   End
   Begin VB.CommandButton cmdVer 
      Caption         =   "Ver Archivo"
      Height          =   375
      Left            =   7200
      TabIndex        =   7
      Top             =   7200
      Width           =   3135
   End
   Begin VB.ListBox lstArchivo 
      Height          =   7080
      Left            =   7200
      TabIndex        =   6
      Top             =   120
      Width           =   4455
   End
   Begin VB.TextBox txtValor 
      Height          =   285
      Index           =   4
      Left            =   4680
      TabIndex        =   5
      Text            =   "1"
      Top             =   7200
      Width           =   375
   End
   Begin VB.TextBox txtValor 
      Height          =   285
      Index           =   3
      Left            =   4200
      TabIndex        =   4
      Text            =   "1"
      Top             =   7200
      Width           =   375
   End
   Begin VB.TextBox txtValor 
      Height          =   285
      Index           =   2
      Left            =   3720
      TabIndex        =   3
      Text            =   "1"
      Top             =   7200
      Width           =   375
   End
   Begin VB.TextBox txtValor 
      Height          =   285
      Index           =   1
      Left            =   3240
      TabIndex        =   2
      Text            =   "1"
      Top             =   7200
      Width           =   375
   End
   Begin VB.TextBox txtValor 
      Height          =   285
      Index           =   0
      Left            =   2760
      TabIndex        =   1
      Text            =   "1"
      Top             =   7200
      Width           =   375
   End
   Begin VB.PictureBox pic 
      AutoRedraw      =   -1  'True
      BackColor       =   &H00FFFFFF&
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   7000
      Left            =   120
      ScaleHeight     =   100
      ScaleMode       =   0  'User
      ScaleWidth      =   100
      TabIndex        =   0
      Top             =   120
      Width           =   7000
   End
End
Attribute VB_Name = "frm3eva3Trim"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
'Evaluación:
'Un diagrama de barras apiladas, consta de barras donde cada una tiene una longitud igual al dato que representa como en un histograma. En este caso, las barras están puestas una encima o al lado de la otra, formando segmentos consecutivos de diferentes colores o patrones de una sola barra de longitud L.
'Sabiendo esto, hacer una aplicación que tome 5 valores enteros ingresados por el usuario, y haga el diagrama de barras apiladas correspondiente.
'El usuario podrá elegir los colores de cada barra, guardandose en un archivo, los valores ingresados y el color de graficación de cada uno para ser mostrado en una lista cuando el usuario lo desee.
'Guardar como 3eva3trim en carpeta del mimsmo nombre, con enunciado y datos del alumno a manera de comentario en el código y título en la solapa del Form.
'Usar el objeto App en al manejo de archivos.
'///
'Alumno:Vileriño,Silvio
'Curso:4to 2da

Private Type registro 'declaracion de variable de registro
    Valores(4) As Integer
    Color(4) As Long
End Type

Private Sub cmdGraficar_Click() 'boton Graficar
pic.Cls 'limpia PictureBox
Graficar 'Llama a procedimiento
End Sub
Private Sub Graficar()
Dim cont As Byte, totalvalor As Integer, Color(4) As Long, Valores(4) As Integer, x As Integer, y As Byte, xfinal As Integer, proporciones(4) As Single: y = 0 'declara contadores y vectores
For cont = 0 To 4 'carga los colores en un vector y los valores en otro para cargar el archivo
    MsgBox "Seleccione Color para la barra numero " & Trim(Str(cont + 1)) & " ,Cancelar implica color numero 0, osea,negro"
    dialogo.ShowColor
    Color(cont) = dialogo.Color
    Valores(cont) = Val(txtValor(cont).Text)
Next cont

For cont = 0 To 4 'suma total de valores
    totalvalor = totalvalor + Val(txtValor(cont).Text)
Next cont

For cont = 0 To 4 'calcula proporciones
    proporciones(cont) = (Val(txtValor(cont).Text) * 100) / totalvalor
Next cont

x = 0
For cont = 0 To 4 'grafica 5 barras con line en opcion de full box
    xfinal = proporciones(cont)
    pic.Line (x, y)-(x + xfinal, y + 100), Color(cont), BF
    x = x + proporciones(cont)
    GuardarArch Valores(), Color() 'guarda los valores en el archivo
Next cont
End Sub

Private Sub cmdRandom_Click()
Dim n As Byte 'llena los textbox con valores aleatorios entre 0 y 99
For n = 0 To 4
    txtValor(n) = Trim(Str(Fix(Rnd * 99)))
Next n
End Sub

Private Sub GuardarArch(ByRef Valores() As Integer, ByRef Colores() As Long)
Dim registro As registro, x As Byte
Open App.Path & "\Datos.dat" For Random As #1 Len = Len(registro) 'abre
    For x = 0 To 4 'llena la variable de tipo
        registro.Color(x) = Colores(x)
        registro.Valores(x) = Valores(x)
    Next x
    Put #1, 1, registro 'pone
Close #1 'cierra
End Sub

Private Sub VerArch()
Dim registro As registro, n As Byte
Open App.Path & "\Datos.dat" For Random As #1 Len = Len(registro) 'abre
        Get #1, 1, registro 'obtiene variable
        For n = 0 To 4 'la agrega a una lista previamente limpiada
            lstArchivo.AddItem "Color valor num:" & Str(n + 1) & " : " & registro.Color(n) & "   Valor: " & registro.Valores(n)
        Next n
Close #1 'cierra
End Sub

Private Sub cmdSalir_Click()
Form_Unload 0
End Sub

Private Sub cmdVer_Click()
lstArchivo.Clear 'limpia lista
VerArch 'llama a procedimiento de ver archivo
End Sub

Private Sub Form_Load()
Randomize Timer
End Sub

Private Sub Form_Unload(Cancel As Integer)
End
End Sub
