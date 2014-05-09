VERSION 5.00
Begin VB.Form frmPacientes 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Administracion de Pacientes"
   ClientHeight    =   7140
   ClientLeft      =   45
   ClientTop       =   735
   ClientWidth     =   9210
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   7140
   ScaleWidth      =   9210
   ShowInTaskbar   =   0   'False
   Begin VB.ListBox lstVer 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   6990
      Left            =   120
      Style           =   1  'Checkbox
      TabIndex        =   0
      Top             =   120
      Width           =   9015
   End
   Begin VB.Menu mnuPaciente 
      Caption         =   "&Paciente"
      Begin VB.Menu mnuAlta 
         Caption         =   "Dar de Alta Nuevo Paciente"
      End
      Begin VB.Menu mnuBaja 
         Caption         =   "Dar de Baja Paciente"
      End
      Begin VB.Menu mnuModi 
         Caption         =   "Modificar Datos de Paciente"
      End
   End
   Begin VB.Menu mnuSalir 
      Caption         =   "Volver"
   End
End
Attribute VB_Name = "frmPacientes"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub Form_Load()
Lista
End Sub

Private Sub Form_Unload(Cancel As Integer)
Cancel = 0
Me.Hide
End Sub

Private Sub mnuAlta_Click()
Dim paciente As paciente
Open App.Path & "\Pacientes.dat" For Random As #1 Len = Len(paciente)
    With frmCargaCl
        .txtEdad.Text = ""
        .txtNombre.Text = ""
        .txtTelefono.Text = ""
        .cmbEstadoCivil.ListIndex = -1
        .Show 1
        paciente.Nombre = .txtNombre.Text
        paciente.Telefono = .txtTelefono.Text
        paciente.E_Civil = .cmbEstadoCivil.Text
        paciente.Edad = Val(.txtEdad.Text)
    End With
    Put #1, LOF(1) / Len(paciente) + 1, paciente
Close #1
Open App.Path & "\Historias" & "\Paciente_" & paciente.Nombre & ".dat" For Random As #1 Len = Len(paciente)
Close #1
MkDir App.Path & "\Consultas" & "\Paciente_" & paciente.Nombre & "_Consulta"
Lista
End Sub

Private Sub Lista()
lstVer.Clear
Dim x As Integer: x = 1
Dim paciente As paciente
Open App.Path & "\Pacientes.dat" For Random As #1 Len = Len(paciente)
    Get #1, x, paciente
    Do While Not EOF(1): DoEvents
        With paciente
            lstVer.AddItem "Nombre  " & .Nombre & " Telefono " & .Telefono & " Edad " & .Edad & " Estado Civil " & .E_Civil
        End With
        x = x + 1
        Get #1, x, paciente
    Loop
Close #1
End Sub

Private Sub mnuBaja_Click()
Dim paciente As paciente, x As Integer, cont As Integer: cont = 1
Open App.Path & "\Pacientes.dat" For Random As #1 Len = Len(paciente)
Open App.Path & "\Pacientes.tmp" For Random As #2 Len = Len(paciente)
For x = 0 To lstVer.ListCount - 1
    If (lstVer.Selected(x)) Then
        If (MsgBox("Desea Eliminar :  " & lstVer.List(x) & " ?", vbQuestion + vbYesNo, "Baja") = vbNo) Then
            Get #1, x + 1, paciente
            Put #2, x + 1, paciente
            cont = cont + 1
        Else
            If (MsgBox("Desea Eliminar Tambien su Historia Clinica ?", vbQuestion + vbYesNo) = vbYes) Then
                Get #1, x + 1, paciente
                Open App.Path & "\Historias" & "\Paciente_" & paciente.Nombre & ".dat" For Random As #5 Len = 2
                    If (LOF(5) <> 0) Then
                        Kill App.Path & "\Historias" & "\Paciente_" & paciente.Nombre & ".dat"
                    End If
                Close #5
                If Not (Dir(App.Path & "\Consultas" & "\Paciente_" & paciente.Nombre & "_Consulta", vbDirectory) = vbNullString) Then
                    RmDir App.Path & "\Consultas" & "\Paciente_" & paciente.Nombre & "_Consulta"
                End If
            End If
        End If
    Else
        Get #1, x + 1, paciente
        Put #2, x + 1, paciente
        cont = cont + 1
    End If
Next x
Close #1, #2
Kill App.Path & "\Pacientes.dat"
Name App.Path & "\Pacientes.tmp" As App.Path & "\Pacientes.dat"
Lista
End Sub

Private Sub mnuLista_Click()
Lista
End Sub

Private Sub mnuModi_Click()
Dim paciente As paciente, x As Integer
Open App.Path & "\Pacientes.dat" For Random As #1 Len = Len(paciente)
For x = 0 To lstVer.ListCount - 1
    If (lstVer.Selected(x)) Then
        If (MsgBox("Desea Modificar :  " & lstVer.List(x) & " ?", vbQuestion + vbYesNo, "Modificacion") = vbYes) Then
        Get #1, x + 1, paciente
    With frmCargaCl
        .txtEdad.Text = Str(paciente.Edad)
        .txtNombre.Text = paciente.Nombre
        .txtTelefono.Text = paciente.Telefono
        .cmbEstadoCivil.Text = paciente.E_Civil
        .Show 1
        paciente.Nombre = .txtNombre.Text
        paciente.Telefono = .txtTelefono.Text
        paciente.E_Civil = .cmbEstadoCivil.Text
        paciente.Edad = Val(.txtEdad.Text)
    End With
        Put #1, x + 1, paciente
        End If
    End If
Next x
Close #1
Lista
End Sub

Private Sub mnuSalir_Click()
Me.Hide
End Sub
