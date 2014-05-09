VERSION 5.00
Begin VB.Form frm1eva1trim 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "1eva1trim"
   ClientHeight    =   2640
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   6150
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2640
   ScaleWidth      =   6150
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton cmdSalir 
      Cancel          =   -1  'True
      Caption         =   "&Salir"
      Height          =   495
      Left            =   3360
      TabIndex        =   2
      ToolTipText     =   "Haga click aqui para salir."
      Top             =   1920
      Width           =   2295
   End
   Begin VB.CommandButton cmdConvertir 
      Caption         =   "&Convertir"
      Height          =   495
      Left            =   240
      TabIndex        =   1
      ToolTipText     =   "Haga click aqui para convertir su palabra."
      Top             =   1920
      Width           =   2295
   End
   Begin VB.TextBox txtSalida 
      BackColor       =   &H8000000F&
      Height          =   495
      Left            =   2280
      Locked          =   -1  'True
      TabIndex        =   4
      ToolTipText     =   "Aqui se muestra la palabra en geringoso"
      Top             =   960
      Width           =   3615
   End
   Begin VB.TextBox txtPalabra 
      Height          =   405
      Left            =   2280
      TabIndex        =   0
      ToolTipText     =   "Ingrese una palabra aqui."
      Top             =   120
      Width           =   3615
   End
   Begin VB.Line Line2 
      X1              =   0
      X2              =   6120
      Y1              =   1680
      Y2              =   1680
   End
   Begin VB.Line Line1 
      X1              =   0
      X2              =   6120
      Y1              =   720
      Y2              =   720
   End
   Begin VB.Label Label2 
      Caption         =   "Palabra en geringoso"
      Height          =   255
      Left            =   120
      TabIndex        =   5
      Top             =   1080
      Width           =   1695
   End
   Begin VB.Label Label1 
      Caption         =   "Ingrese una palabra:"
      Height          =   255
      Left            =   120
      TabIndex        =   3
      Top             =   240
      Width           =   1575
   End
End
Attribute VB_Name = "frm1eva1trim"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
'Evaluación:
 '   Hacer una aplicaión que pase a geringoso una palabra escrita por el usuario.
'Ejemplo: Si se ingresa Hola, se deberá mostrar Hopolapa, si se ingresa perro, sale peperropo.
'Guardar la aplicación con el nombre "1eva1trim" en una carpeta con el mismo nombre en la cuenta del usuario.
'Mostrar el nombre de la aplicación enla solapa de Form.
'Poner este enunciado en el General de Form, debajo del Option Explicit, junto a los datos del alumno.
'Alumno: Vileriño Silvio
'Año y Rotación: 1ro 2da CSC,grupo "b"

Private Sub cmdConvertir_Click()
txtSalida.Text = "" 'limpiar el textbox de salida
Dim intX As Integer 'declarar variable de la estructura for
For intX = 1 To Len(txtPalabra.Text) 'estructura de repeticion for de 1 al largo de la palabra ingresada
    Select Case Mid(txtPalabra.Text, intX, 1) ' estructura de decision select case sobre la expresion de la letra en la posicion intX
        Case Is = "a" ' si es vocal "a"
            txtSalida.Text = txtSalida.Text & Mid(txtPalabra.Text, intX, 1) & "pa" ' al textbox de salida, agregarla la vocal acompañada de "pa"
        Case Is = "e" ' si es vocal "e"
            txtSalida.Text = txtSalida.Text & Mid(txtPalabra.Text, intX, 1) & "pe" ' al textbox de salida, agregarla la vocal acompañada de "pe"
        Case Is = "i" 'si es vocal "i"
            txtSalida.Text = txtSalida.Text & Mid(txtPalabra.Text, intX, 1) & "pi" ' al textbox de salida, agregarla la vocal acompañada de "pi"
        Case Is = "o" 'si es vocal "o"
            txtSalida.Text = txtSalida.Text & Mid(txtPalabra.Text, intX, 1) & "po" ' al textbox de salida, agregarla la vocal acompañada de "po"
        Case Is = "u" ' si es vocal "u"
            txtSalida.Text = txtSalida.Text & Mid(txtPalabra.Text, intX, 1) & "pu" ' al textbox de salida, agregarla la vocal acompañada de "pu"
        Case Else ' si no es vocal
            txtSalida.Text = txtSalida.Text & Mid(txtPalabra.Text, intX, 1) 'agregar al textbox la letra consonante correspondiente a la posicion intX
    End Select ' fin de estructura de decision select case
Next intX 'fin de estructura de repeticion for
End Sub

Private Sub cmdSalir_Click()
End ' salir del programa
End Sub
