VERSION 5.00
Begin VB.Form frmBiciesto 
   BackColor       =   &H000080FF&
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Trabajo practico 1"
   ClientHeight    =   3165
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   9180
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Moveable        =   0   'False
   ScaleHeight     =   3165
   ScaleWidth      =   9180
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.ComboBox cmbMes 
      BackColor       =   &H0080C0FF&
      Height          =   315
      ItemData        =   "frmBiciesto.frx":0000
      Left            =   4080
      List            =   "frmBiciesto.frx":002B
      TabIndex        =   9
      Text            =   "<Elija el mes>"
      Top             =   360
      Width           =   1575
   End
   Begin VB.TextBox txtDia 
      BackColor       =   &H0080C0FF&
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   1200
      TabIndex        =   0
      Top             =   360
      Width           =   1575
   End
   Begin VB.TextBox txtMes 
      Alignment       =   2  'Center
      BackColor       =   &H0080C0FF&
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   720
      TabIndex        =   1
      Top             =   1440
      Width           =   1455
   End
   Begin VB.CommandButton cmdAnio 
      BackColor       =   &H0000FF00&
      Caption         =   "Calcular "
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   2880
      MaskColor       =   &H0000FF00&
      Style           =   1  'Graphical
      TabIndex        =   3
      Top             =   1200
      UseMaskColor    =   -1  'True
      Width           =   3735
   End
   Begin VB.TextBox txtAnio 
      Alignment       =   2  'Center
      BackColor       =   &H0080C0FF&
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   7080
      TabIndex        =   2
      Top             =   360
      Width           =   1455
   End
   Begin VB.Label lblBiciesto 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   240
      TabIndex        =   8
      Top             =   2160
      Width           =   2175
   End
   Begin VB.Label Label3 
      BackColor       =   &H000080FF&
      Caption         =   "Ingrese un Dia"
      Height          =   255
      Left            =   120
      TabIndex        =   7
      Top             =   480
      Width           =   1095
   End
   Begin VB.Label Label2 
      BackColor       =   &H000080FF&
      Caption         =   "Ingrese un Mes"
      Height          =   255
      Left            =   2880
      TabIndex        =   6
      Top             =   480
      Width           =   1215
   End
   Begin VB.Label Label1 
      BackColor       =   &H000080FF&
      Caption         =   "Ingrese un Año"
      Height          =   255
      Left            =   5640
      TabIndex        =   5
      Top             =   480
      Width           =   1215
   End
   Begin VB.Label lblresultado 
      Alignment       =   2  'Center
      BackColor       =   &H0080FFFF&
      BorderStyle     =   1  'Fixed Single
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   2640
      TabIndex        =   4
      Top             =   2160
      Width           =   4215
   End
End
Attribute VB_Name = "frmBiciesto"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub cmdAnio_Click()
'declaracion de variables
Dim intAnio As Integer, byteMes As Byte, strMesnum As String
Dim byteCantDiasMes As Byte
Dim byteDia As Byte
'borrado de errores anteriores
lblresultado.Caption = ""
lblBiciesto.Caption = ""
'carga de variables
intAnio = Val(txtAnio.Text) 'cargo valor numerico de año
byteMes = Val((cmbMes.ListIndex) + 1) 'cargo valor numerico de mes
byteDia = Val(txtDia.Text) 'cargo valor numerico de dia
'comprobacion de mes
Select Case byteMes ' compruebo que mes es..
    Case Is = 4, 6, 9, 11 'si es un mes de 30 dias.
        byteCantDiasMes = 30 'cargo valor de dias del mes en la variable
    Case Is = 1, 3, 5, 7, 8, 10, 12 'si es un mes de 31 dias
        byteCantDiasMes = 31 'cargo valor de dias del mes en la variable"
    Case Is = 2
        'si el año termina en "00" o si es divisible por 100 ;)
        If intAnio / 100 = intAnio \ 100 Then ' si lo es, entonces
            If intAnio / 400 = intAnio \ 400 Then ' si el año terminado en "00" es divisible por 400
                byteCantDiasMes = 29 'cargo valor de dias del mes en la variable
                lblBiciesto.Caption = "Año biciesto,febrero tiene 29 dias."
            Else ' sino lo es
                byteCantDiasMes = 28 'cargo valor de dias del mes en la variable
            End If
        Else 'si el año no termina en "00" o no es divisible por 100 :P
            If intAnio / 4 = intAnio \ 4 Then 'entonces pregunto si es divisible por 4
                byteCantDiasMes = 29 'cargo valor de dias del mes en la variable"
                lblBiciesto.Caption = "Año biciesto, febrero tiene 29 dias."
            Else ' si no lo es
                byteCantDiasMes = 28 'cargo valor de dias del mes en la variable"
            End If
        End If
    Case Else ' si no es un mes entre 1 y 12
        lblresultado.Caption = "Mes invalido !. los años tienen 12 nomas ¬¬."
End Select
If lblresultado.Caption = "" Then
    If byteDia > 0 And byteDia <= byteCantDiasMes Then
        'aplicacion del algoritmo de pascal
        'declaracion de variables temporales
        Dim byteA, byteC, byteD, byteE, byteJ As Byte
        Dim intB, intF, intH As Integer
        Dim lngG, lngI As Long
        'calculos de las variables temporales
        byteA = Fix((12 - byteMes) / 10)
        intB = intAnio - byteA
        byteC = byteMes + 12 * byteA
        byteD = Fix(intB / 100)
        byteE = Fix(byteD / 4)
        intF = 2 - byteD + byteE
        lngG = Fix(365.25 * intB)
        intH = Fix(30.6001 * (byteC + 1))
        lngI = intF + lngG + intH + byteDia + 5
        byteJ = lngI Mod 7
        Select Case byteJ ' segun el resto es el dia de la semana
            Case Is = 0
                lblresultado.Caption = "Sabado"
            Case Is = 1
                lblresultado.Caption = "Domingo"
            Case Is = 2
                lblresultado.Caption = "Lunes"
            Case Is = 3
                lblresultado.Caption = "Martes"
            Case Is = 4
                lblresultado.Caption = "Miercoles"
            Case Is = 5
                lblresultado.Caption = "Jueves"
            Case Is = 6
                lblresultado.Caption = "Viernes"
        End Select
    Else ' si el numero de dias no es valido.
        lblresultado.Caption = "Error en dia"
    End If
End If
End Sub

