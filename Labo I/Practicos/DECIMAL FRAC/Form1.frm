VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   7695
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   5520
   LinkTopic       =   "Form1"
   ScaleHeight     =   7695
   ScaleWidth      =   5520
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox txtNumero 
      Height          =   525
      Left            =   1080
      TabIndex        =   1
      Top             =   360
      Width           =   2415
   End
   Begin VB.CommandButton cmdHacer 
      Caption         =   "Mostrar"
      Height          =   495
      Left            =   1560
      TabIndex        =   0
      Top             =   1080
      Width           =   1455
   End
   Begin VB.Label Label3 
      Caption         =   "Fraccion"
      Height          =   495
      Left            =   360
      TabIndex        =   7
      Top             =   5040
      Width           =   855
   End
   Begin VB.Label Label2 
      Caption         =   "Decimal"
      Height          =   375
      Left            =   360
      TabIndex        =   6
      Top             =   3960
      Width           =   735
   End
   Begin VB.Label Label1 
      Caption         =   "Entero"
      Height          =   375
      Left            =   360
      TabIndex        =   5
      Top             =   2400
      Width           =   855
   End
   Begin VB.Label lblfrac 
      Height          =   975
      Left            =   1560
      TabIndex        =   4
      Top             =   4920
      Width           =   2055
   End
   Begin VB.Label lblDecimales 
      Height          =   495
      Left            =   1680
      TabIndex        =   3
      Top             =   3960
      Width           =   975
   End
   Begin VB.Label lblSalida 
      Height          =   1455
      Left            =   1680
      TabIndex        =   2
      Top             =   2160
      Width           =   1455
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False


Private Sub cmdHacer_Click()
lblSalida.Caption = "" 'limpia los labels de salida
Dim byteDecimales As Byte
Dim bytePoscoma As Byte
Dim n As Byte
Dim x As Byte: x = 1 ' declaracion de variables
Do: DoEvents ' repetir
    lblSalida.Caption = lblSalida.Caption & Mid(txtNumero.Text, x, 1) 'mostrar todos los caracteres uno por uno
    x = x + 1 ' aumentar contador de caracteres
Loop While Not Mid(txtNumero.Text, x, 1) = "," 'hasta llegar a la coma
bytePoscoma = x
Do: DoEvents ' repetir
     x = x + 1 'aumentar contador (x actual vale coma)
    byteDecimales = byteDecimales & Mid(txtNumero.Text, x, 1) 'pegar caracteres
Loop While Not x = Len(txtNumero.Text) 'hasta llegar al final de la palabra
lblDecimales.Caption = byteDecimales
n = Len(txtNumero.Text) - bytePoscoma
lblfrac.Caption = byteDecimales & "/" & 10 ^ n

End Sub
