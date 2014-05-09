VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "MSFLXGRD.OCX"
Begin VB.Form frmAlumnos 
   Caption         =   "Alumnos"
   ClientHeight    =   10230
   ClientLeft      =   270
   ClientTop       =   450
   ClientWidth     =   13410
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   107.233
   ScaleMode       =   0  'User
   ScaleWidth      =   100.112
   Begin VB.TextBox txtBusqueda2 
      Height          =   375
      Left            =   120
      TabIndex        =   2
      ToolTipText     =   "DNI"
      Top             =   9720
      Width           =   13215
   End
   Begin VB.TextBox txtBusqueda 
      Height          =   382
      Left            =   120
      TabIndex        =   1
      ToolTipText     =   "Nombre y Apellidos"
      Top             =   9158
      Width           =   13215
   End
   Begin MSFlexGridLib.MSFlexGrid FlexAlumnos 
      Height          =   8985
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   13200
      _ExtentX        =   23283
      _ExtentY        =   15849
      _Version        =   393216
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
End
Attribute VB_Name = "frmAlumnos"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub FlexAlumnos_DblClick()
ModiAlumnos
End Sub

Private Sub Form_Load()
IniciaFlexAlumnos
Form_Resize
CargarFlexAlumnos
With txtBusqueda
    .BackColor = vbBlack
    .ForeColor = vbWhite
End With

With txtBusqueda2
    .BackColor = vbBlack
    .ForeColor = vbWhite
End With
End Sub

Private Sub Form_Resize()
Dim Alto_Lista As Single
Dim Ancho_Lista As Single
Dim ancho_margen_derecho As Single: ancho_margen_derecho = 0.5

     ' No es necesario ajustar cuando la ventana está minimizada _
'       ... además por que genera error
If WindowState = vbMinimized Then Exit Sub

     Ancho_Lista = ScaleWidth - ancho_margen_derecho - FlexAlumnos.Left

     FlexAlumnos.Width = Ancho_Lista
     txtBusqueda.Width = Ancho_Lista

     Alto_Lista = ScaleHeight - ancho_margen_derecho - FlexAlumnos.Top

     'Esto es necesario comprobar para que el valor no sea negativo _
      .. y genere error
If Alto_Lista <= 10 Then
         Alto_Lista = 10
End If

     'Posiciona el control ( Ajusta ancho y alto )
     FlexAlumnos.Move FlexAlumnos.Left, FlexAlumnos.Top, ScaleWidth - (ancho_margen_derecho) - FlexAlumnos.Left, Alto_Lista - 10
     txtBusqueda.Move FlexAlumnos.Left, FlexAlumnos.Top + FlexAlumnos.Height + 2, ScaleWidth - (ancho_margen_derecho) - txtBusqueda.Left, txtBusqueda.Height
     txtBusqueda2.Move FlexAlumnos.Left, FlexAlumnos.Top + FlexAlumnos.Height + txtBusqueda.Height + 2, ScaleWidth - (ancho_margen_derecho) - txtBusqueda2.Left, txtBusqueda2.Height
End Sub


Private Sub txtBusqueda_Change()

IniciaFlexAlumnos
Dim n As Integer, Alumno As Alumno, Encontro As Boolean: Encontro = False
Open App.Path & "\Alumnos.dat" For Random As #2 Len = Len(Alumno)
For n = 1 To LOF(2) / Len(Alumno)
Get #2, n, Alumno

If (LCase(Left(Trim(Alumno.Nombre) & " " & Trim(Alumno.Apellido), Len(txtBusqueda.Text))) = LCase(txtBusqueda.Text)) Then
    With frmAlumnos
        .FlexAlumnos.Rows = .FlexAlumnos.Rows + 1
        .FlexAlumnos.TextMatrix(.FlexAlumnos.Rows - 1, 1) = Trim(Alumno.Nombre)
        .FlexAlumnos.TextMatrix(.FlexAlumnos.Rows - 1, 2) = Trim(Alumno.Apellido)
        .FlexAlumnos.TextMatrix(.FlexAlumnos.Rows - 1, 3) = Trim(Str(Alumno.Edad))
        .FlexAlumnos.TextMatrix(.FlexAlumnos.Rows - 1, 4) = Trim(Alumno.Dni)
        .FlexAlumnos.TextMatrix(.FlexAlumnos.Rows - 1, 5) = Trim(Alumno.Año)
        .FlexAlumnos.TextMatrix(.FlexAlumnos.Rows - 1, 6) = Trim(Alumno.Division)
        .FlexAlumnos.TextMatrix(.FlexAlumnos.Rows - 1, 7) = Trim(Alumno.Estado)
        .FlexAlumnos.TextMatrix(.FlexAlumnos.Rows - 1, 8) = Trim(Alumno.Comentarios)
    End With
    Encontro = True
End If
    
Next n

For n = 1 To frmAlumnos.FlexAlumnos.Rows - 1
    frmAlumnos.FlexAlumnos.TextMatrix(n, 0) = Str(n)
Next n
Close #2

If (Encontro) Then
    With txtBusqueda
        .BackColor = vbGreen
        .FontBold = True
        .FontItalic = False
    End With
Else
    With txtBusqueda
        .BackColor = vbRed
        .FontItalic = True
        .FontBold = False
    End With
End If
If (Len(txtBusqueda.Text) = 0) Then
    With txtBusqueda
        .BackColor = vbBlack
        .ForeColor = vbWhite
        .FontItalic = False
        .FontBold = False
    End With
End If

End Sub

Private Sub txtBusqueda2_Change()

IniciaFlexAlumnos
Dim n As Integer, Alumno As Alumno, Encontro As Boolean: Encontro = False
Open App.Path & "\Alumnos.dat" For Random As #2 Len = Len(Alumno)
For n = 1 To LOF(2) / Len(Alumno)
Get #2, n, Alumno

If (LCase(Left(Trim(Alumno.Dni), Len(txtBusqueda2.Text))) = LCase(txtBusqueda2.Text)) Then
    With frmAlumnos
        .FlexAlumnos.Rows = .FlexAlumnos.Rows + 1
        .FlexAlumnos.TextMatrix(.FlexAlumnos.Rows - 1, 1) = Trim(Alumno.Nombre)
        .FlexAlumnos.TextMatrix(.FlexAlumnos.Rows - 1, 2) = Trim(Alumno.Apellido)
        .FlexAlumnos.TextMatrix(.FlexAlumnos.Rows - 1, 3) = Trim(Str(Alumno.Edad))
        .FlexAlumnos.TextMatrix(.FlexAlumnos.Rows - 1, 4) = Trim(Alumno.Dni)
        .FlexAlumnos.TextMatrix(.FlexAlumnos.Rows - 1, 5) = Trim(Alumno.Año)
        .FlexAlumnos.TextMatrix(.FlexAlumnos.Rows - 1, 6) = Trim(Alumno.Division)
        .FlexAlumnos.TextMatrix(.FlexAlumnos.Rows - 1, 7) = Trim(Alumno.Estado)
        .FlexAlumnos.TextMatrix(.FlexAlumnos.Rows - 1, 8) = Trim(Alumno.Comentarios)
    End With
    Encontro = True
End If
    
Next n

For n = 1 To frmAlumnos.FlexAlumnos.Rows - 1
    frmAlumnos.FlexAlumnos.TextMatrix(n, 0) = Str(n)
Next n
Close #2

If (Encontro) Then
    With txtBusqueda2
        .BackColor = vbGreen
        .FontBold = True
        .FontItalic = False
    End With
Else
    With txtBusqueda2
        .BackColor = vbRed
        .FontItalic = True
        .FontBold = False
    End With
End If
If (Len(txtBusqueda2.Text) = 0) Then
    With txtBusqueda2
        .BackColor = vbBlack
        .ForeColor = vbWhite
        .FontItalic = False
        .FontBold = False
    End With
End If

End Sub
