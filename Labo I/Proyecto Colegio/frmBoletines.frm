VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "MSFLXGRD.OCX"
Begin VB.Form frmBoletines 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Emision de Boletines"
   ClientHeight    =   7680
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   13425
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   59.466
   ScaleMode       =   0  'User
   ScaleWidth      =   67.395
   ShowInTaskbar   =   0   'False
   Begin VB.Frame frmBoletin 
      Caption         =   "Controles Boletin"
      Height          =   1935
      Left            =   4800
      TabIndex        =   7
      Top             =   5640
      Width           =   8535
      Begin VB.CommandButton cmdDefinitivas 
         Caption         =   "Cerrar Notas Definitivas"
         Height          =   495
         Left            =   7320
         TabIndex        =   26
         Top             =   1200
         Width           =   1095
      End
      Begin VB.CommandButton cmdPromedios 
         Caption         =   "Cerrar Trimestres"
         Height          =   495
         Left            =   6240
         TabIndex        =   25
         Top             =   1200
         Width           =   975
      End
      Begin VB.TextBox txtCurso 
         BackColor       =   &H00C0C0C0&
         Height          =   405
         Left            =   5040
         Locked          =   -1  'True
         TabIndex        =   24
         Top             =   720
         Width           =   2655
      End
      Begin VB.TextBox txtAlumno 
         BackColor       =   &H00C0C0C0&
         Height          =   405
         Left            =   5040
         Locked          =   -1  'True
         TabIndex        =   22
         Top             =   240
         Width           =   2655
      End
      Begin VB.CommandButton cmdLimpiar 
         Caption         =   "Limpiar Boletin"
         Height          =   495
         Left            =   4200
         TabIndex        =   19
         Top             =   1200
         Width           =   1935
      End
      Begin VB.CommandButton cmdCalif 
         Caption         =   "< -- Ingresar Calificacion en Posicion"
         Height          =   495
         Left            =   2160
         TabIndex        =   18
         Top             =   1200
         Width           =   1935
      End
      Begin VB.TextBox txtCalificacion 
         Height          =   285
         Left            =   2880
         MaxLength       =   2
         TabIndex        =   17
         Top             =   720
         Width           =   495
      End
      Begin VB.Label Label7 
         Caption         =   "Curso :"
         Height          =   255
         Left            =   4080
         TabIndex        =   23
         Top             =   720
         Width           =   615
      End
      Begin VB.Label Label6 
         Caption         =   "Alumno :"
         Height          =   255
         Left            =   4080
         TabIndex        =   21
         Top             =   360
         Width           =   735
      End
      Begin VB.Label Label5 
         Caption         =   "Ingrese o Modifique Calificacion :"
         Height          =   375
         Left            =   2280
         TabIndex        =   16
         Top             =   240
         Width           =   1815
      End
      Begin VB.Label lblInstancia 
         Caption         =   "Vacio"
         Height          =   255
         Left            =   960
         TabIndex        =   15
         Top             =   1440
         Width           =   2055
      End
      Begin VB.Label lblMateria 
         Caption         =   "Vacio"
         Height          =   255
         Left            =   960
         TabIndex        =   14
         Top             =   1080
         Width           =   1935
      End
      Begin VB.Label Label4 
         Caption         =   "Instancia :"
         Height          =   255
         Left            =   120
         TabIndex        =   13
         Top             =   1440
         Width           =   735
      End
      Begin VB.Label Label3 
         Caption         =   "Materia :"
         Height          =   255
         Left            =   120
         TabIndex        =   12
         Top             =   1080
         Width           =   735
      End
      Begin VB.Label Label2 
         Caption         =   "Columna :"
         Height          =   255
         Left            =   120
         TabIndex        =   11
         Top             =   720
         Width           =   735
      End
      Begin VB.Label Label1 
         Caption         =   "Fila :"
         Height          =   255
         Left            =   120
         TabIndex        =   10
         Top             =   360
         Width           =   615
      End
      Begin VB.Label lblColumna 
         Caption         =   "Vacio"
         Height          =   375
         Left            =   960
         TabIndex        =   9
         Top             =   720
         Width           =   1335
      End
      Begin VB.Label lblFila 
         Caption         =   "Vacio"
         Height          =   255
         Left            =   960
         TabIndex        =   8
         Top             =   360
         Width           =   1335
      End
   End
   Begin MSFlexGridLib.MSFlexGrid flexBoletin 
      Height          =   5415
      Left            =   4800
      TabIndex        =   6
      Top             =   120
      Width           =   8655
      _ExtentX        =   15266
      _ExtentY        =   9551
      _Version        =   393216
   End
   Begin VB.Frame frmAlAs 
      Caption         =   "Controles Datos"
      Height          =   1935
      Left            =   120
      TabIndex        =   2
      Top             =   5640
      Width           =   4575
      Begin VB.CommandButton Command1 
         Caption         =   "Cerrar Ventana"
         Height          =   615
         Left            =   2280
         TabIndex        =   20
         Top             =   1080
         Width           =   2055
      End
      Begin VB.CommandButton cmdRefresh 
         Caption         =   "Actualizar Planillas"
         Height          =   615
         Left            =   240
         TabIndex        =   5
         Top             =   1080
         Width           =   1935
      End
      Begin VB.ComboBox cmbOrdenAl 
         Height          =   315
         ItemData        =   "frmBoletines.frx":0000
         Left            =   2280
         List            =   "frmBoletines.frx":001C
         Style           =   2  'Dropdown List
         TabIndex        =   4
         Top             =   480
         Width           =   2055
      End
      Begin VB.CommandButton cmdOrdenA 
         Caption         =   "Ordenar Alumnos por"
         Height          =   615
         Left            =   240
         TabIndex        =   3
         Top             =   360
         Width           =   1935
      End
   End
   Begin MSFlexGridLib.MSFlexGrid FlexMateriasB 
      Height          =   2655
      Left            =   120
      TabIndex        =   1
      Top             =   2880
      Width           =   4650
      _ExtentX        =   8202
      _ExtentY        =   4683
      _Version        =   393216
   End
   Begin MSFlexGridLib.MSFlexGrid flexAlumnosB 
      Height          =   2655
      Left            =   105
      TabIndex        =   0
      Top             =   105
      Width           =   4635
      _ExtentX        =   8176
      _ExtentY        =   4683
      _Version        =   393216
   End
End
Attribute VB_Name = "frmBoletines"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub PasaMataBoletin()
Dim X As Integer
For X = 1 To FlexMateriasB.Rows - 1
With frmBoletines.flexBoletin
    .Cols = .Cols + 1
    .TextMatrix(0, .Cols - 1) = FlexMateriasB.TextMatrix(X, 1)
End With
Next X
End Sub

Private Sub cmdCalif_Click()
If (Val(lblFila.Caption) <> 0 And Val(lblColumna.Caption) <> 0) Then
    flexBoletin.TextMatrix(Val(lblFila.Caption), Val(lblColumna.Caption)) = txtCalificacion.Text
Else
    MsgBox "Seleccione una Posicion"
End If
End Sub

Private Sub cmdLimpiar_Click()
IniciaFlexBoletin
PasaMataBoletin
End Sub

Private Sub cmdOrdenA_Click()
Ordenar cmbOrdenAl.ListIndex + 1, App.Path & "\Alumnos.dat"
IniciaFlexAlumnosB
CargarFlexAlumnosB
End Sub

Private Sub cmdPromedios_Click()
Dim n As Integer, m As Integer

For n = 1 To flexBoletin.Cols - 1
    flexBoletin.TextMatrix(4, n) = "0"
Next n

For n = 1 To flexBoletin.Cols - 1
    For m = 1 To flexBoletin.Rows - 5
        With flexBoletin
            .TextMatrix(4, n) = Trim(Str(Val(.TextMatrix(4, n)) + Val(.TextMatrix(m, n))))
        End With
    Next m
    flexBoletin.TextMatrix(4, n) = Trim(Str(Round(Val(flexBoletin.TextMatrix(4, n)) / 3, 2)))
    If (Val(flexBoletin.TextMatrix(4, n)) >= 6) Then
        flexBoletin.TextMatrix(5, n) = "-"
        flexBoletin.TextMatrix(6, n) = "-"
        flexBoletin.TextMatrix(7, n) = flexBoletin.TextMatrix(4, n)
    Else
        If (Val(flexBoletin.TextMatrix(4, n)) < 4) Then
            flexBoletin.TextMatrix(5, n) = "-"
        End If
    End If
Next n

End Sub

Private Sub cmdRefresh_Click()
IniciaFlexAlumnosB
CargarFlexAlumnosB
IniciaFlexMateriasB
CargarFlexMateriasB
End Sub

Private Sub flexAlumnosB_Click()
txtAlumno.Text = flexAlumnosB.TextMatrix(flexAlumnosB.Row, 1) & ", " & flexAlumnosB.TextMatrix(flexAlumnosB.Row, 2)
txtCurso.Text = flexAlumnosB.TextMatrix(flexAlumnosB.Row, 5) & ", " & flexAlumnosB.TextMatrix(flexAlumnosB.Row, 6)
End Sub

Private Sub flexBoletin_Click()
lblFila.Caption = Str(flexBoletin.Row)
lblColumna.Caption = Str(flexBoletin.Col)
lblMateria.Caption = flexBoletin.TextMatrix(0, flexBoletin.Col)
lblInstancia.Caption = flexBoletin.TextMatrix(flexBoletin.Row, 0)
txtCalificacion.Text = Str(Val(flexBoletin.TextMatrix(flexBoletin.Row, flexBoletin.Col)))
End Sub

Private Sub flexBoletin_KeyPress(KeyAscii As Integer)
lblFila.Caption = Str(flexBoletin.Row)
lblColumna.Caption = Str(flexBoletin.Col)
lblMateria.Caption = flexBoletin.TextMatrix(0, flexBoletin.Col)
lblInstancia.Caption = flexBoletin.TextMatrix(flexBoletin.Row, 0)
txtCalificacion.Text = Str(Val(flexBoletin.TextMatrix(flexBoletin.Row, flexBoletin.Col)))
End Sub

Private Sub Form_Load()
IniciaFlexAlumnosB
CargarFlexAlumnosB
IniciaFlexMateriasB
CargarFlexMateriasB
IniciaFlexBoletin
PasaMataBoletin
End Sub

Private Sub IniciaFlexMateriasB()
Dim X As Integer
With frmBoletines.FlexMateriasB
    .Clear
    .Rows = 1
    .Cols = 3
    .AllowBigSelection = True
    .AllowUserResizing = flexResizeNone
    .ColWidth(0) = 1000
    .ColWidth(1) = 2000
    .ColWidth(2) = 2000
    .TextMatrix(0, 0) = "Numero"
    .TextMatrix(0, 1) = "Asignatura"
    .TextMatrix(0, 2) = "Profesor"
    .BackColorSel = vbYellow
    .ForeColorSel = vbBlack
    .BackColorFixed = vbBlack
    .ForeColorFixed = vbWhite
    .GridColor = vbCyan
End With
End Sub

Private Sub CargarFlexMateriasB()
Dim n As Integer, asignatura As asignatura
Open App.Path & "\Asignaturas.dat" For Random As #2 Len = Len(asignatura)
For n = 1 To LOF(2) / Len(asignatura)
Get #2, n, asignatura
With frmBoletines
    .FlexMateriasB.Rows = .FlexMateriasB.Rows + 1
    .FlexMateriasB.TextMatrix(.FlexMateriasB.Rows - 1, 1) = Trim(asignatura.Nombre)
    .FlexMateriasB.TextMatrix(.FlexMateriasB.Rows - 1, 2) = Trim(asignatura.Profesor)
    .FlexMateriasB.TextMatrix(n, 0) = Str(n)
End With
Next n
Close #2
End Sub

Private Sub IniciaFlexBoletin()
With frmBoletines.flexBoletin
    .Clear
    .Rows = 2
    .Cols = 1
    .ColWidth(0) = 1500
    .TextMatrix(0, 0) = "Materia"
    .TextMatrix(.Rows - 1, 0) = "Trimestre Nº1"
    .Rows = .Rows + 1
    .TextMatrix(.Rows - 1, 0) = "Trimestre Nº2"
    .Rows = .Rows + 1
    .TextMatrix(.Rows - 1, 0) = "Trimestre Nº3"
    .Rows = .Rows + 1
    .TextMatrix(.Rows - 1, 0) = "Promedio Final"
    .Rows = .Rows + 1
    .TextMatrix(.Rows - 1, 0) = "N. Dic"
    .Rows = .Rows + 1
    .TextMatrix(.Rows - 1, 0) = "N. Mar"
    .Rows = .Rows + 1
    .TextMatrix(.Rows - 1, 0) = "N. Definit."
    .AllowBigSelection = True
    .AllowUserResizing = flexResizeNone
    .BackColorSel = vbYellow
    .ForeColorSel = vbBlack
    .BackColorFixed = vbBlack
    .ForeColorFixed = vbWhite
    .GridColor = vbRed
End With
End Sub


Public Sub IniciaFlexAlumnosB()
Dim X As Integer
With frmBoletines.flexAlumnosB
    .Clear
    .Rows = 1
    .Cols = 9
    .AllowBigSelection = True
    .AllowUserResizing = flexResizeNone
    .ColWidth(0) = 1000
    .ColWidth(1) = 1500
    .ColWidth(2) = 1500
    .ColWidth(3) = 500
    .ColWidth(4) = 1000
    .ColWidth(5) = 500
    .ColWidth(6) = 500
    .ColWidth(7) = 1500
    .ColWidth(8) = 5000
    .TextMatrix(0, 0) = "Numero"
    .TextMatrix(0, 1) = "Nombre"
    .TextMatrix(0, 2) = "Apellido"
    .TextMatrix(0, 3) = "Edad"
    .TextMatrix(0, 4) = "DNI"
    .TextMatrix(0, 5) = "Año"
    .TextMatrix(0, 6) = "Division"
    .TextMatrix(0, 7) = "Estado"
    .TextMatrix(0, 8) = "Comentarios"
    .BackColorSel = vbYellow
    .ForeColorSel = vbBlack
    .BackColorFixed = vbBlack
    .ForeColorFixed = vbWhite
    .GridColor = vbMagenta
End With
End Sub


Public Sub CargarFlexAlumnosB()
Dim n As Integer, Alumno As Alumno, cont As Integer
Open App.Path & "\Alumnos.dat" For Random As #2 Len = Len(Alumno)
For n = 1 To LOF(2) / Len(Alumno)
Get #2, n, Alumno
If (Alumno.Estado) Then
    With frmBoletines
        .flexAlumnosB.Rows = .flexAlumnosB.Rows + 1
        .flexAlumnosB.TextMatrix(.flexAlumnosB.Rows - 1, 1) = Trim(Alumno.Nombre)
        .flexAlumnosB.TextMatrix(.flexAlumnosB.Rows - 1, 2) = Trim(Alumno.Apellido)
        .flexAlumnosB.TextMatrix(.flexAlumnosB.Rows - 1, 3) = Trim(Str(Alumno.Edad))
        .flexAlumnosB.TextMatrix(.flexAlumnosB.Rows - 1, 4) = Trim(Alumno.Dni)
        .flexAlumnosB.TextMatrix(.flexAlumnosB.Rows - 1, 5) = Trim(Alumno.Año)
        .flexAlumnosB.TextMatrix(.flexAlumnosB.Rows - 1, 6) = Trim(Alumno.Division)
        .flexAlumnosB.TextMatrix(.flexAlumnosB.Rows - 1, 7) = Trim(Alumno.Estado)
        .flexAlumnosB.TextMatrix(.flexAlumnosB.Rows - 1, 8) = Trim(Alumno.Comentarios)
        .flexAlumnosB.TextMatrix(cont + 1, 0) = Str(cont)
    End With
    cont = cont + 1
End If
Next n
Close #2
End Sub
 
