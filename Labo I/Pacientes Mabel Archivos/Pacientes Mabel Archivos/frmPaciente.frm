VERSION 5.00
Begin VB.Form frmPaciente 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Administrador de Pacientes"
   ClientHeight    =   7080
   ClientLeft      =   150
   ClientTop       =   810
   ClientWidth     =   7770
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   7080
   ScaleWidth      =   7770
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "Command1"
      Height          =   195
      Left            =   1680
      TabIndex        =   8
      Top             =   4680
      Width           =   495
   End
   Begin VB.TextBox txtProp 
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1695
      Left            =   4080
      Locked          =   -1  'True
      TabIndex        =   7
      Top             =   2400
      Width           =   3495
   End
   Begin VB.Frame frmVisual 
      Caption         =   "Visualizacion y Seleccion"
      Height          =   4215
      Left            =   120
      TabIndex        =   0
      Top             =   0
      Width           =   7575
      Begin VB.ListBox lstProp 
         Height          =   1425
         Left            =   3960
         TabIndex        =   6
         Top             =   720
         Width           =   3495
      End
      Begin VB.ComboBox cmbProp 
         Height          =   315
         Left            =   5760
         Style           =   2  'Dropdown List
         TabIndex        =   5
         Top             =   240
         Width           =   1695
      End
      Begin VB.TextBox txtVer 
         Appearance      =   0  'Flat
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1695
         Left            =   120
         Locked          =   -1  'True
         MultiLine       =   -1  'True
         TabIndex        =   2
         Top             =   2400
         Width           =   3495
      End
      Begin VB.ListBox lstVer 
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1410
         Left            =   120
         Style           =   1  'Checkbox
         TabIndex        =   1
         Top             =   720
         Width           =   3495
      End
      Begin VB.Label Label2 
         Caption         =   "Propiedad de Paciente"
         Height          =   255
         Left            =   3960
         TabIndex        =   4
         Top             =   360
         Width           =   1695
      End
      Begin VB.Label Label1 
         Caption         =   "Pacientes"
         Height          =   255
         Left            =   120
         TabIndex        =   3
         Top             =   360
         Width           =   3495
      End
   End
   Begin VB.Menu mnuApp 
      Caption         =   "&Aplicacion"
      Begin VB.Menu mnuMinimizar 
         Caption         =   "Minimizar"
      End
      Begin VB.Menu mnuSalir 
         Caption         =   "Salir"
      End
   End
   Begin VB.Menu mnuPaciente 
      Caption         =   "&Pacientes"
      Begin VB.Menu mnuVer 
         Caption         =   "Visualizar"
      End
      Begin VB.Menu mnuPacAlta 
         Caption         =   "Dar de Alta Nuevo Paciente"
      End
      Begin VB.Menu mnuVolverALta 
         Caption         =   "Volver a Dar de Alta Existente"
      End
      Begin VB.Menu mnuPacBaja 
         Caption         =   "Dar de Baja Paciente Existente"
      End
      Begin VB.Menu mnuPacModiDato 
         Caption         =   "Modificar Datos De Paciente"
      End
   End
   Begin VB.Menu mnuSes 
      Caption         =   "&Sesiones"
      Begin VB.Menu mnuSesNueva 
         Caption         =   "Nueva Sesion"
      End
      Begin VB.Menu mnuSesModi 
         Caption         =   "Modificar Sesion Existente"
      End
   End
End
Attribute VB_Name = "frmPaciente"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub Command1_Click()
frmCarga.Show 1
End Sub

Private Sub Form_Unload(Cancel As Integer)
End
End Sub

Private Sub lstVer_Click()
Dim paciente As paciente
txtVer.Text = lstVer.Text
Open App.Path & "\Pacientes.dat" For Random As #1 Len = Len(paciente)
    Get #1, lstVer.ListIndex + 1, paciente
    If Not (paciente.Estado) Then
        txtVer.BackColor = vbRed
    Else
        txtVer.BackColor = vbGreen
    End If
Close #1
End Sub

Private Sub mnuMinimizar_Click()
frmPaciente.WindowState = 1
End Sub

Private Sub mnuPacAlta_Click()
Dim paciente As paciente
Open App.Path & "\Pacientes.dat" For Random As #1 Len = Len(paciente)
    frmCarga.Show 1
    With paciente
        .Nombre = frmCarga.txtNom.Text
        .Apellido = frmCarga.txtApe.Text
        .Edad = Val(frmCarga.txtEdad.Text)
        .Telefono = frmCarga.txtTel.Text
        .Celular = frmCarga.txtCelular.Text
        .E_Civil = frmCarga.cmbECivil.Text
        .Estado = True
    End With
    Put #1, LOF(1) / Len(paciente) + 1, paciente
Close #1
Lista
End Sub

Private Sub mnuPacBaja_Click()
Dim paciente As paciente, x As Integer, cont As Integer
Open App.Path & "\pacientes.dat" For Random As #1 Len = Len(paciente)
    For x = 0 To lstVer.ListCount - 1
        If (lstVer.Selected(x)) Then
            If (MsgBox("Desea Dar de Baja el Registro:  " & lstVer.List(x), vbQuestion + vbYesNo, "Modificacion") = vbYes) Then
                Get #1, x + 1, paciente
                paciente.Estado = False
                Put #1, x + 1, paciente
            End If
        End If
    Next x
Close #1
Lista
End Sub

Private Sub mnuPacModiDato_Click()
Dim paciente As paciente, x As Integer
Open App.Path & "\pacientes.dat" For Random As #1 Len = Len(paciente)
    For x = 0 To lstVer.ListCount - 1
        If (lstVer.Selected(x)) Then
            If (MsgBox("Desea Modificar el Registro:  " & lstVer.List(x), vbQuestion + vbYesNo, "Modificacion") = vbYes) Then
                Get #1, x + 1, paciente
                frmCarga.frmModi.Enabled = True
                frmCarga.lblModi.Visible = True
                frmCarga.Show 1
                With paciente
                    If (frmCarga.chkNom.Value = 1) Then .Nombre = frmCarga.txtNom.Text
                    If (frmCarga.chkApe.Value = 1) Then .Apellido = frmCarga.txtApe.Text
                    If (frmCarga.chkEdad.Value = 1) Then .Edad = Val(frmCarga.txtEdad.Text)
                    If (frmCarga.chkTel.Value = 1) Then .Telefono = frmCarga.txtTel
                    If (frmCarga.chkCelular.Value = 1) Then .Celular = frmCarga.txtCelular
                    If (frmCarga.chkECivil.Value = 1) Then .E_Civil = frmCarga.cmbECivil.Text
                End With
                frmCarga.frmModi.Enabled = False
                frmCarga.lblModi.Visible = False
                Put #1, x + 1, paciente
            End If
        End If
    Next x
Close #1
Lista
End Sub

Private Sub mnuSalir_Click()
Form_Unload 0
End Sub

Private Sub mnuSesModi_Click()
Dim Sesion As Sesion
Open App.Path & "\Sesiones.dat" For Random As #1 Len = Len(Sesion)

Close #1
End Sub

Private Sub mnuSesNueva_Click()
Dim Sesion As Sesion
Open App.Path & "\Sesiones.dat" For Random As #1 Len = Len(Sesion)

Close #1
End Sub

Private Sub Lista()
lstVer.Clear
Dim paciente As paciente
Dim x As Byte
x = 1
Open App.Path & "\Pacientes.dat" For Random As #1 Len = Len(paciente)
Get #1, x, paciente
Do While Not EOF(1): DoEvents
    lstVer.AddItem "Nombre: " & paciente.Nombre & " Apellido: " & paciente.Apellido & " Estado Civil: " & paciente.E_Civil & " Telefono: " & paciente.Telefono & " Celular: " & paciente.Celular & " Estado: " & paciente.Estado
    x = x + 1
    Get #1, x, paciente
Loop
Close #1
End Sub

Private Sub mnuVer_Click()
Lista
End Sub

Private Sub mnuVolverALta_Click()
Dim paciente As paciente, x As Integer, cont As Integer
Open App.Path & "\pacientes.dat" For Random As #1 Len = Len(paciente)
    For x = 0 To lstVer.ListCount - 1
        If (lstVer.Selected(x)) Then
            If (MsgBox("Desea Dar de Baja el Registro:  " & lstVer.List(x), vbQuestion + vbYesNo, "Modificacion") = vbYes) Then
                Get #1, x + 1, paciente
                paciente.Estado = True
                Put #1, x + 1, paciente
            End If
        End If
    Next x
Close #1
Lista

End Sub
