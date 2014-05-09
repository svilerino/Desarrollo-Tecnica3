VERSION 5.00
Begin VB.Form frmCargaProd 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "1eva3trim - Manejo De Registros"
   ClientHeight    =   2835
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   6405
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2835
   ScaleWidth      =   6405
   StartUpPosition =   2  'CenterScreen
   Begin VB.TextBox txtVenc 
      Height          =   495
      Index           =   2
      Left            =   4440
      MaxLength       =   4
      TabIndex        =   13
      Top             =   1560
      Width           =   735
   End
   Begin VB.TextBox txtVenc 
      Height          =   495
      Index           =   1
      Left            =   3600
      MaxLength       =   2
      TabIndex        =   12
      Top             =   1560
      Width           =   735
   End
   Begin VB.CheckBox chkModi 
      Height          =   255
      Index           =   2
      Left            =   5760
      TabIndex        =   10
      Top             =   1680
      Width           =   255
   End
   Begin VB.CheckBox chkModi 
      Height          =   255
      Index           =   1
      Left            =   5760
      TabIndex        =   9
      Top             =   1080
      Width           =   255
   End
   Begin VB.Frame frmChk 
      Caption         =   "Modi"
      Enabled         =   0   'False
      Height          =   1815
      Left            =   5520
      TabIndex        =   7
      Top             =   240
      Width           =   735
      Begin VB.CheckBox chkModi 
         Height          =   255
         Index           =   0
         Left            =   240
         TabIndex        =   8
         Top             =   240
         Width           =   255
      End
   End
   Begin VB.CommandButton cmdCargar 
      Caption         =   "Ingresar"
      Height          =   495
      Left            =   2400
      TabIndex        =   3
      Top             =   2160
      Width           =   1815
   End
   Begin VB.TextBox txtVenc 
      Height          =   495
      Index           =   0
      Left            =   2760
      MaxLength       =   2
      TabIndex        =   2
      Top             =   1560
      Width           =   735
   End
   Begin VB.TextBox txtPrecio 
      Height          =   495
      Left            =   1440
      TabIndex        =   1
      Top             =   960
      Width           =   3975
   End
   Begin VB.TextBox txtNombre 
      Height          =   495
      Left            =   1440
      MaxLength       =   10
      TabIndex        =   0
      Top             =   360
      Width           =   3975
   End
   Begin VB.Label Label4 
      Caption         =   "Marque Casillas A Modificar Del Registro"
      Height          =   255
      Left            =   1440
      TabIndex        =   11
      Top             =   0
      Visible         =   0   'False
      Width           =   4095
   End
   Begin VB.Label Label3 
      Caption         =   "Ingrese Vencimiento dd:mm:aaaa"
      Height          =   255
      Left            =   0
      TabIndex        =   6
      Top             =   1680
      Width           =   2655
   End
   Begin VB.Label Label2 
      Caption         =   "Ingrese Precio"
      Height          =   255
      Left            =   0
      TabIndex        =   5
      Top             =   1080
      Width           =   1215
   End
   Begin VB.Label Label1 
      Caption         =   "Ingrese Nombre"
      Height          =   255
      Left            =   0
      TabIndex        =   4
      Top             =   480
      Width           =   1215
   End
End
Attribute VB_Name = "frmCargaProd"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
'Evaluación:
'Una aplicación, deberá permitir hacer ABM de productos, donde lo que se almacena es: Nombre, Precio, y Fecha de
'vencimiento.
'El Nombre no debe superar los 10 caracteres, y el Precio los dos decimales, por lo que esos datos deben ser validados por
'la aplicación. En todo momento, se debereá mostrar en una lista el contenido del archivo ordanado por Precio en forma
'descendente. Un botón deberá levantar una fecha ingresada por el usuario y dar de baja a los productos vencidos. Serán
'aquellos donde la fecha de vencimiento es estrictamente menor a la ingresada.
'Poner dartos del alumno y enunciado al principio del código.
'Poner titulo en la solapa del o de los Forms.
'Guardar como 1eva3trim en carpeta homónima en el raíz de la cuenta del alumno.
'Usar el objeto App.
'_________________________________________
'Alumno: Vileriño , 4to2da

Private Sub cmdCargar_Click()
Dim x As Integer
txtPrecio.Text = ValePrecio(txtPrecio.Text)
If (Label4.Visible = False Or chkModi(2).Value = 1) Then 'comprueba fecha solo si es alta o en la modificacion fue seleccionada
    If (ValetxtFecha(txtVenc(0).Text, txtVenc(1).Text)) Then
        Me.Hide
    Else
        MsgBox "Fecha invalida." ' si no es valida tira error
        For x = 0 To 1
            txtVenc(x).Text = ""
        Next x
    End If
Else
    Me.Hide
End If
End Sub
Private Function Mayuscula(ByVal Nombre As String) As String 'capitaliza nombre
Mayuscula = UCase(Mid(Nombre, 1, 1)) & Mid(Nombre, 2, Len(Nombre))
End Function
Private Function ValePrecio(ByVal Precio As String) As String 'valida precio 2 decimales
If (Len(Precio) > 0) Then
Dim x As Integer: x = 0
Dim Entero As String, Decimales As String
Do: DoEvents
    x = x + 1
Loop While Not (Mid(Precio, x, 1) = "." Or Mid(Precio, x, 1) = "," Or x = Len(Precio))
Entero = Mid(Precio, 1, x)
Select Case (Len(Mid(Precio, x, Len(Precio) - x)))
    Case Is = 0
        Decimales = "00"
        ValePrecio = Entero & "." & Decimales
    Case Is = 1
        Decimales = Mid(Precio, x + 1, 1) & "0"
        ValePrecio = Entero & Decimales
    Case Is >= 2
        Decimales = Mid(Precio, x + 1, 2)
        ValePrecio = Entero & Decimales
End Select
End If
End Function

Private Sub Form_Activate() 'borra los texts
Dim x As Integer
txtNombre.Text = ""
txtPrecio.Text = ""
txtVenc(0).Text = ""
txtVenc(1).Text = ""
txtVenc(2).Text = ""
For x = 0 To 2
    chkModi(x).Value = 0
Next
txtNombre.SetFocus
End Sub

'xx_keydown salto entre textbox y botones con el enter

Private Sub txtNombre_KeyDown(KeyCode As Integer, Shift As Integer)
If (KeyCode = vbKeyReturn) Then
    txtNombre.Text = Mayuscula(txtNombre.Text)
    txtPrecio.SetFocus
End If
End Sub
Private Sub txtPrecio_KeyDown(KeyCode As Integer, Shift As Integer)
Select Case KeyCode
    Case Is = vbKeyReturn
        txtVenc(0).SetFocus
End Select
End Sub

Private Sub txtVenc_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
If (KeyCode = vbKeyReturn) Then
    Select Case Index
        Case Is = 0
            txtVenc(1).SetFocus
        Case Is = 1
            txtVenc(2).SetFocus
        Case Is = 2
            cmdCargar.SetFocus
    End Select
End If
End Sub

Private Function ValetxtFecha(ByVal dia As String, mes As String) As Boolean 'valida fecha en un rango
Dim bdia As Boolean, bmes As Boolean
bdia = (Val(dia) > 0 And Val(dia) < 32)
bmes = (Val(mes) > 0 And Val(mes) < 13)
ValetxtFecha = (bdia And bmes)
End Function
