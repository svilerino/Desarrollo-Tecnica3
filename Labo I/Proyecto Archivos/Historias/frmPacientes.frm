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
         Caption         =   "Alta"
      End
      Begin VB.Menu mnuBaja 
         Caption         =   "Baja"
      End
      Begin VB.Menu mnuModi 
         Caption         =   "Modificacion"
      End
      Begin VB.Menu mnuLista 
         Caption         =   "Actualizar Lista"
      End
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

Private Sub mnuAlta_Click()
Dim Paciente As Paciente
Open App.Path & "\Pacientes.dat" For Random As #1 Len = Len(Paciente)
    With frmCargaCl
        .txtEdad.Text = ""
        .txtNombre.Text = ""
        .txtTelefono.Text = ""
        .cmbEstadoCivil.ListIndex = -1
        .Show 1
        Paciente.Nombre = .txtNombre.Text
        Paciente.Telefono = .txtTelefono.Text
        Paciente.E_Civil = .cmbEstadoCivil.Text
        Paciente.Edad = Val(.txtEdad.Text)
    End With
    Put #1, LOF(1) / Len(Paciente) + 1, Paciente
Close #1
Lista
End Sub

Private Sub Lista()
lstVer.Clear
Dim x As Integer: x = 1
Dim Paciente As Paciente
Open App.Path & "\Pacientes.dat" For Random As #1 Len = Len(Paciente)
    Get #1, x, Paciente
    Do While Not EOF(1): DoEvents
        With Paciente
            lstVer.AddItem "Nombre  " & .Nombre & " Telefono " & .Telefono & " Edad " & .Edad & " Estado Civil " & .E_Civil
        End With
        x = x + 1
        Get #1, x, Paciente
    Loop
Close #1
End Sub

Private Sub mnuBaja_Click()
Dim Paciente As Paciente, x As Integer, cont As Integer: cont = 1
Open App.Path & "\Pacientes.dat" For Random As #1 Len = Len(Paciente)
Open App.Path & "\Pacientes.tmp" For Random As #2 Len = Len(Paciente)
For x = 0 To lstVer.ListCount - 1
    If (lstVer.Selected(x)) Then
        If (MsgBox("Desea Eliminar :  " & lstVer.List(x) & " ?", vbQuestion + vbYesNo, "Baja") = vbNo) Then
            Get #1, x + 1, Paciente
            Put #2, x + 1, Paciente
            cont = cont + 1
        End If
    Else
        Get #1, x + 1, Paciente
        Put #2, x + 1, Paciente
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
Dim Paciente As Paciente, x As Integer
Open App.Path & "\Pacientes.dat" For Random As #1 Len = Len(Paciente)
For x = 0 To lstVer.ListCount - 1
    If (lstVer.Selected(x)) Then
        If (MsgBox("Desea Modificar :  " & lstVer.List(x) & " ?", vbQuestion + vbYesNo, "Modificacion") = vbYes) Then
        Get #1, x + 1, Paciente
    With frmCargaCl
        .txtEdad.Text = Str(Paciente.Edad)
        .txtNombre.Text = Paciente.Nombre
        .txtTelefono.Text = Paciente.Telefono
        .cmbEstadoCivil.Text = Paciente.E_Civil
        .Show 1
        Paciente.Nombre = .txtNombre.Text
        Paciente.Telefono = .txtTelefono.Text
        Paciente.E_Civil = .cmbEstadoCivil.Text
        Paciente.Edad = Val(.txtEdad.Text)
    End With
        Put #1, x + 1, Paciente
        End If
    End If
Next x
Close #1
Lista
End Sub
