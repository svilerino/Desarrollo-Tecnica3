VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.MDIForm MDIMenu 
   BackColor       =   &H8000000C&
   Caption         =   "Menu"
   ClientHeight    =   7905
   ClientLeft      =   165
   ClientTop       =   555
   ClientWidth     =   11475
   LinkTopic       =   "MDIForm1"
   StartUpPosition =   2  'CenterScreen
   WindowState     =   2  'Maximized
   Begin VB.Timer tmrActualizar 
      Interval        =   1000
      Left            =   840
      Top             =   3720
   End
   Begin MSComctlLib.StatusBar sbarmdi 
      Align           =   2  'Align Bottom
      Height          =   270
      Left            =   0
      TabIndex        =   0
      Top             =   7635
      Width           =   11475
      _ExtentX        =   20241
      _ExtentY        =   476
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   2
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
         EndProperty
         BeginProperty Panel2 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
         EndProperty
      EndProperty
   End
   Begin VB.Menu mnuSys 
      Caption         =   "&Sistema"
      Begin VB.Menu mnuLogoff 
         Caption         =   "Cerrar Sesion"
      End
      Begin VB.Menu mnuExitt 
         Caption         =   "Salir"
      End
      Begin VB.Menu mnuscp 
         Caption         =   "-"
      End
      Begin VB.Menu mnumos 
         Caption         =   "Mosaico"
         Begin VB.Menu mnutilehor 
            Caption         =   "Horizontal"
         End
         Begin VB.Menu mnutileVer 
            Caption         =   "Vertical"
         End
      End
      Begin VB.Menu mnutilecasca 
         Caption         =   "Cascada"
      End
   End
   Begin VB.Menu mnuAl 
      Caption         =   "&Alumnos"
      Begin VB.Menu mnuConsultaAl 
         Caption         =   "Consulta"
      End
      Begin VB.Menu mnuAltaAlumno 
         Caption         =   "Alta"
         Begin VB.Menu mnuAltaReal 
            Caption         =   "Real"
         End
         Begin VB.Menu mnuAltaExistente 
            Caption         =   "Reactivar"
         End
      End
      Begin VB.Menu mnuModiALumnos 
         Caption         =   "Modificacion (Contempla Bajas)"
      End
      Begin VB.Menu mnuxord 
         Caption         =   "Ordenamiento"
         Begin VB.Menu mnuOrd 
            Caption         =   "Nombre"
            Index           =   1
         End
         Begin VB.Menu mnuOrd 
            Caption         =   "Apellido"
            Index           =   2
         End
         Begin VB.Menu mnuOrd 
            Caption         =   "Edad"
            Index           =   3
         End
         Begin VB.Menu mnuOrd 
            Caption         =   "Dni"
            Index           =   4
         End
         Begin VB.Menu mnuOrd 
            Caption         =   "Año"
            Index           =   5
         End
         Begin VB.Menu mnuOrd 
            Caption         =   "Division"
            Index           =   6
         End
         Begin VB.Menu mnuOrd 
            Caption         =   "Condicion del Alumno(A-B)"
            Index           =   7
         End
         Begin VB.Menu mnuSCape 
            Caption         =   "-"
         End
         Begin VB.Menu mnuDecre 
            Caption         =   "Decreciente"
            Checked         =   -1  'True
         End
         Begin VB.Menu mnuCrece 
            Caption         =   "Creciente"
         End
      End
      Begin VB.Menu mnufilter 
         Caption         =   "Filtrar Alumnos Por:"
         Begin VB.Menu mnuBajaFiltrar 
            Caption         =   "Bajas"
         End
         Begin VB.Menu mnuAltaFiltrar 
            Caption         =   "Altas"
         End
         Begin VB.Menu mnuTodoFiltrar 
            Caption         =   "Todos"
         End
      End
   End
   Begin VB.Menu mnuMatria 
      Caption         =   "A&signaturas"
      Begin VB.Menu mnuConsultaAsig 
         Caption         =   "Consulta"
      End
      Begin VB.Menu mnuNuevaMat 
         Caption         =   "Nueva Asignatura"
      End
      Begin VB.Menu mnuModiMateria 
         Caption         =   "Modificar Asignatura"
      End
      Begin VB.Menu mnuBajaMat 
         Caption         =   "Eliminar Asignatura"
      End
      Begin VB.Menu mnuordmater 
         Caption         =   "Ordenamiento"
         Begin VB.Menu mnuOrdMat 
            Caption         =   "Profesor"
            Index           =   1
         End
         Begin VB.Menu mnuOrdMat 
            Caption         =   "Nombre"
            Index           =   2
         End
         Begin VB.Menu mnuSCao 
            Caption         =   "-"
         End
         Begin VB.Menu mnuCreceMat 
            Caption         =   "Creciente"
         End
         Begin VB.Menu mnuDecreMat 
            Caption         =   "Decreciente"
         End
      End
   End
   Begin VB.Menu mnuBolAct 
      Caption         =   "Boletines y Actas"
      Begin VB.Menu mnuNewBoletin 
         Caption         =   "Crear Boletines"
      End
   End
End
Attribute VB_Name = "MDIMenu"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub MDIForm_Load()
sbarmdi.Panels(2).Text = Date
End Sub

Private Sub MDIForm_Unload(Cancel As Integer)
tmrActualizar.Enabled = False
frmUsuarios.Show
End Sub

Private Sub mnuAltaExistente_Click()
ModiAlumnosReact
IniciaFlexAlumnos
CargarFlexAlumnos
End Sub

Private Sub mnuAltaFiltrar_Click()
FiltradoAlumnos True
End Sub

Private Sub mnuAltaReal_Click()
AltaAlumnoReal
IniciaFlexAlumnos
CargarFlexAlumnos
End Sub

Private Sub mnuBajaFiltrar_Click()
FiltradoAlumnos False
End Sub

Private Sub mnuBajaMat_Click()
BajaAsignatura
IniciaFlexMaterias
CargarFlexMaterias
End Sub

Private Sub mnuConsultaAl_Click()
frmAlumnos.Show
End Sub

Private Sub mnuConsultaAsig_Click()
frmMaterias.Show
End Sub

Private Sub mnuCrece_Click()
mnuCrece.Checked = True
mnuDecre.Checked = False
End Sub

Private Sub mnuDecre_Click()
mnuCrece.Checked = False
mnuDecre.Checked = True
End Sub

Private Sub mnuExitt_Click()
If (MsgBox("Desea Salir?", vbYesNo + vbQuestion, "Salir") = vbYes) Then SubSalir
End Sub

Private Sub mnuLogoff_Click()
If (MsgBox("Desea Cerrar Sesion?", vbYesNo + vbQuestion, "Cerrar Sesion") = vbYes) Then
    Unload Me
End If
End Sub

Private Sub mnuModiALumnos_Click()
ModiAlumnos
IniciaFlexAlumnos
CargarFlexAlumnos
End Sub

Private Sub mnuModiMateria_Click()
ModiAsignatura
IniciaFlexMaterias
CargarFlexMaterias
End Sub

Private Sub mnuNewBoletin_Click()
frmBoletines.Show
End Sub

Private Sub mnuNuevaMat_Click()
AltaAsignatura
IniciaFlexMaterias
CargarFlexMaterias
End Sub

Private Sub mnuOrd_Click(Index As Integer)
Ordenar Index, App.Path & "\Alumnos.dat"
IniciaFlexAlumnos
CargarFlexAlumnos
End Sub

Private Sub mnuOrdMat_Click(Index As Integer)
OrdenarAsignatura Index, App.Path & "\asignaturas.dat"
IniciaFlexMaterias
CargarFlexMaterias
End Sub

Private Sub mnutilecasca_Click()
Me.Arrange vbCascade
End Sub

Private Sub mnutilehor_Click()
Me.Arrange vbTileHorizontal
End Sub

Private Sub mnutileVer_Click()
Me.Arrange vbTileVertical
End Sub

Private Sub mnuTodoFiltrar_Click()
IniciaFlexAlumnos
CargarFlexAlumnos
End Sub

Private Sub tmrActualizar_Timer()
DoEvents
sbarmdi.Panels(1).Text = Time
End Sub
