VERSION 5.00
Begin VB.Form frmBiciesto 
   BackColor       =   &H000080FF&
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Trabajo practico 1"
   ClientHeight    =   3045
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   5910
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Moveable        =   0   'False
   ScaleHeight     =   3045
   ScaleWidth      =   5910
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
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
      Height          =   495
      Left            =   480
      MaskColor       =   &H0000FF00&
      Style           =   1  'Graphical
      TabIndex        =   1
      Top             =   1080
      UseMaskColor    =   -1  'True
      Width           =   2055
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
      Left            =   600
      TabIndex        =   0
      Text            =   "< Haga Click e Introduzca un año aqui>"
      Top             =   360
      Width           =   4455
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
      Height          =   855
      Left            =   240
      TabIndex        =   2
      Top             =   1920
      Width           =   5415
   End
End
Attribute VB_Name = "frmBiciesto"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub cmdAnio_Click()
Dim intAnio As Integer
intAnio = Val(txtAnio.Text) 'cargo valor de textbox
'si el año termina en "00" o si es divisible por 100 ;)
If intAnio / 100 = intAnio \ 100 Then ' si lo es, entonces
    If intAnio / 400 = intAnio \ 400 Then ' si el año terminado en "00" es divisible por 400
            lblresultado.Caption = "El año es bisciesto"
        Else ' sino lo es
            lblresultado.Caption = "El año no es bisciesto"
        End If
Else 'si el año no termina en "00" o no es divisible por 100 :P
    If intAnio / 4 = intAnio \ 4 Then 'entonces pregunto si es divisible por 4
        lblresultado.Caption = "El año es bisciesto"
    Else ' si no lo es
        lblresultado.Caption = "El año no es bisciesto"
    End If
End If
End Sub

Private Sub txtAnio_Click()
txtAnio.Text = ""
End Sub

