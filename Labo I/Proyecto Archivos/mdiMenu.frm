VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "mscomctl.ocx"
Begin VB.MDIForm mdiMenu 
   BackColor       =   &H8000000C&
   Caption         =   "Administracion de Pacientes"
   ClientHeight    =   3090
   ClientLeft      =   165
   ClientTop       =   825
   ClientWidth     =   4890
   LinkTopic       =   "MDIForm1"
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin MSComctlLib.StatusBar MDISBar 
      Align           =   2  'Align Bottom
      Height          =   375
      Left            =   0
      TabIndex        =   0
      Top             =   2715
      Width           =   4890
      _ExtentX        =   8625
      _ExtentY        =   661
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   2
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
         EndProperty
         BeginProperty Panel2 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
         EndProperty
      EndProperty
   End
   Begin MSComDlg.CommonDialog CD 
      Left            =   360
      Top             =   240
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.Menu mnuPacientes 
      Caption         =   "&Pacientes"
   End
   Begin VB.Menu mnuHisto 
      Caption         =   "&Historias Clinicas"
   End
   Begin VB.Menu mnuConsu 
      Caption         =   "&Consultas"
   End
   Begin VB.Menu mnuOpciones 
      Caption         =   "&Opciones"
      Begin VB.Menu mnuColor 
         Caption         =   "Colores Fondo"
         Begin VB.Menu mnuColorMdi 
            Caption         =   "Menu Principal"
         End
         Begin VB.Menu mnuColorCons 
            Caption         =   "Consultas"
         End
         Begin VB.Menu mnuColorHistorias 
            Caption         =   "Historias"
         End
         Begin VB.Menu mnuColorPacientes 
            Caption         =   "Pacientes"
         End
      End
   End
   Begin VB.Menu mnuSalir 
      Caption         =   "&Salir"
   End
End
Attribute VB_Name = "mdiMenu"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Private Sub ErrorInit(ByVal Ruta As String)
    MsgBox "No existe el Directorio: " & Ruta & ", se creara el directorio faltante."
End Sub

Private Sub FileInit()
Dim Historias As String: Historias = App.Path & "\Historias"
Dim Configuracion As String: Configuracion = App.Path & "\Configuracion"
Dim Colores As String: Colores = App.Path & "\Configuracion\Colores"
Dim Consultas As String: Consultas = App.Path & "\Consultas"
If Dir(Configuracion, vbDirectory) = vbNullString Then
    ErrorInit Configuracion
    MkDir Configuracion
    MkDir Colores
Else
    If Dir(Colores, vbDirectory) = vbNullString Then
        ErrorInit Colores
        MkDir Colores
    End If
End If

If Dir(Historias, vbDirectory) = vbNullString Then
    ErrorInit Historias
    MkDir Historias
End If

If Dir(Consultas, vbDirectory) = vbNullString Then
    ErrorInit Consultas
    MkDir Consultas
End If

End Sub
Private Sub Statusbar()
MDISBar.Panels(1).Text = "Pacientes: " & Str(frmPacientes.lstVer.ListCount)
frmPacientes.Hide
End Sub

Private Sub MDIForm_Load()
On Error GoTo manejoerr
FileInit
Info "Menu Principal", "Comprobadas Carpetas de Programa", 250
'CargarConf
Info "Menu Principal", "Configuraciones Cargadas con Exito", 500
Statusbar
Info "Menu Principal", "Barra de estado Actualizada", 500
Exit Sub

manejoerr:
    MsgBox Err.Description
    Select Case MsgBox("Error: " & Err.Description, vbAbortRetryIgnore + vbCritical)
        Case Is = vbRetry
            Resume 0
        Case Is = vbAbort
            MsgBox "La aplicacion se cerrara"
        Case Is = vbIgnore
            Resume Next
    End Select
End Sub

Private Sub MDIForm_Unload(Cancel As Integer)
End
End Sub

Private Sub mnuColorCons_Click()
Dim color As Long
CD.ShowColor
frmConsulta.BackColor = CD.color
Open App.Path & "\Configuracion" & "\Colores" & "\Consultas.dat" For Random As #1 Len = Len(color)
    With frmConsulta
        color = .BackColor
        .Label1.BackColor = .BackColor
        .Label2.BackColor = .BackColor
        .Label3.BackColor = .BackColor
        .Hide
    End With
    Put #1, 1, color
Close #1
End Sub

Private Sub mnuColorHistorias_Click()
Dim color As Long
CD.ShowColor
frmHistorias.BackColor = CD.color
Open App.Path & "\Configuracion" & "\Colores" & "\Historias.dat" For Random As #1 Len = Len(color)
    color = frmHistorias.BackColor
    Put #1, 1, color
Close #1
frmHistorias.Hide
End Sub

Private Sub mnuColorMdi_Click()
Dim color As Long
CD.ShowColor
mdiMenu.BackColor = CD.color
Open App.Path & "\Configuracion" & "\Colores" & "\Menu.dat" For Random As #1 Len = Len(color)
    color = mdiMenu.BackColor
    Put #1, 1, color
Close #1
End Sub

Private Sub mnuColorPacientes_Click()
Dim color As Long
CD.ShowColor
frmPacientes.BackColor = CD.color
Open App.Path & "\Configuracion" & "\Colores" & "\Pacientes.dat" For Random As #1 Len = Len(color)
    color = frmPacientes.BackColor
    Put #1, 1, color
Close #1
frmPacientes.Hide
End Sub

Private Sub mnuConsu_Click()
frmConsulta.Show
End Sub

Private Sub mnuHisto_Click()
frmHistorias.Show
End Sub

Private Sub mnuPacientes_Click()
frmPacientes.Show
End Sub

Private Sub mnuSalir_Click()
MDIForm_Unload 0
End Sub

Private Sub CargarConf()
On Error GoTo manejoerr
Dim color As Long
Open App.Path & "\Configuracion" & "\Colores" & "\Menu.dat" For Random As #5 Len = Len(color)
    Get #5, 1, color
    mdiMenu.BackColor = color
Close #5

Open App.Path & "\Configuracion" & "\Colores" & "\Consultas.dat" For Random As #5 Len = Len(color)
        Get #5, 1, color
        With frmConsulta
            .BackColor = color
            .Label1.BackColor = .BackColor
            .Label2.BackColor = .BackColor
            .Label3.BackColor = .BackColor
            .Hide
        End With
Close #5

Open App.Path & "\Configuracion" & "\Colores" & "\Historias.dat" For Random As #5 Len = Len(color)
        Get #5, 1, color
        frmHistorias.BackColor = color
        frmHistorias.Hide
Close #5

Open App.Path & "\Configuracion" & "\Colores" & "\Pacientes.dat" For Random As #5 Len = Len(color)
        Get #5, 1, color
        frmPacientes.BackColor = color
        frmPacientes.Hide
Close #5

Exit Sub

manejoerr:
    MsgBox Err.Description & Err.Source
End Sub
