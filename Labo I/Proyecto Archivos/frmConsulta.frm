VERSION 5.00
Object = "{3B7C8863-D78F-101B-B9B5-04021C009402}#1.2#0"; "richtx32.OCX"
Begin VB.Form frmConsulta 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Administracion de Consultas"
   ClientHeight    =   4755
   ClientLeft      =   45
   ClientTop       =   735
   ClientWidth     =   10500
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   4755
   ScaleWidth      =   10500
   ShowInTaskbar   =   0   'False
   Begin VB.ListBox lstConsultas 
      Height          =   4155
      Left            =   4440
      TabIndex        =   3
      Top             =   480
      Width           =   3015
   End
   Begin RichTextLib.RichTextBox richtxtbox 
      Height          =   4215
      Left            =   120
      TabIndex        =   1
      Top             =   480
      Width           =   4215
      _ExtentX        =   7435
      _ExtentY        =   7435
      _Version        =   393217
      MaxLength       =   255
      TextRTF         =   $"frmConsulta.frx":0000
   End
   Begin VB.ListBox lstVer 
      Height          =   4155
      Left            =   7560
      TabIndex        =   0
      Top             =   480
      Width           =   2895
   End
   Begin VB.Label Label3 
      Caption         =   "Pacientes"
      Height          =   255
      Left            =   7560
      TabIndex        =   5
      Top             =   120
      Width           =   2895
   End
   Begin VB.Label Label2 
      Caption         =   "Consultas"
      Height          =   375
      Left            =   4440
      TabIndex        =   4
      Top             =   120
      Width           =   3135
   End
   Begin VB.Label Label1 
      Caption         =   "Anotaciones Adicionales de la Sesion"
      Height          =   255
      Left            =   120
      TabIndex        =   2
      Top             =   120
      Width           =   2655
   End
   Begin VB.Menu mnuNuevaSes 
      Caption         =   "Nueva Sesion"
   End
   Begin VB.Menu mnuSave 
      Caption         =   "Guardar Sesion"
   End
   Begin VB.Menu mnuVolver 
      Caption         =   "Volver"
   End
End
Attribute VB_Name = "frmConsulta"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub Form_Activate()
ListaCl
End Sub

Private Sub Form_Unload(Cancel As Integer)
Me.Hide
End Sub

Private Sub ListaCl()
On Error GoTo manejoerr
lstVer.Clear
Dim x As Integer: x = 1
Dim paciente As paciente
Open App.Path & "\Pacientes.dat" For Random As #2 Len = Len(paciente)
    Get #2, x, paciente
    Do While Not EOF(1): DoEvents
        With paciente
            lstVer.AddItem "Nombre  " & .Nombre & " Telefono " & .Telefono & " Edad " & .Edad & " Estado Civil " & .E_Civil
        End With
        x = x + 1
        Get #2, x, paciente
    Loop
Close #2
Exit Sub
manejoerr:
    Select Case MsgBox("Error!  " & Err.Description, vbAbortRetryIgnore + vbCritical)
        Case Is = vbRetry
            Resume 0
        Case Is = vbIgnore
            Resume Next
        Case Is = vbAbort
            MsgBox "La aplicacion se cerrara"
            End
    End Select
    
End Sub

Private Sub ListaCons()
On Error GoTo manejoerr
lstConsultas.Clear
Dim x As Integer: x = 1
Dim paciente As paciente, Consulta As Sesion
Open App.Path & "\Pacientes.dat" For Random As #1 Len = Len(paciente)
    Get #1, lstVer.ListIndex + 1, paciente
Close #1

Open App.Path & "\Consultas" & "\Paciente_" & paciente.Nombre & "_Consulta" & "\Consultas.dat" For Random As #1 Len = Len(Consulta)
    Get #1, x, Consulta
    Do While Not EOF(1): DoEvents
        With Consulta
            lstConsultas.AddItem .Fecha & "   -   " & .Hora
        End With
        x = x + 1
        Get #1, x, Consulta
    Loop
Close #1
Exit Sub
manejoerr:
    Select Case MsgBox("Error!  " & Err.Description, vbAbortRetryIgnore + vbCritical)
        Case Is = vbRetry
            Resume 0
        Case Is = vbIgnore
            Resume Next
        Case Is = vbAbort
            MsgBox "La aplicacion se cerrara"
            End
    End Select
    

End Sub

Private Sub lstConsultas_Click()
On Error GoTo manejoerr

Dim Consulta As Sesion, paciente As paciente
Open App.Path & "\Pacientes.dat" For Random As #1 Len = Len(paciente)
    Get #1, lstVer.ListIndex + 1, paciente
Close #1

Open App.Path & "\Consultas" & "\Paciente_" & paciente.Nombre & "_Consulta\" & Trim(Str(lstConsultas.ListIndex + 1)) & ".dat" For Random As #1 Len = Len(Consulta)
        Get #1, 1, Consulta
    If Not (EOF(1)) Then
        richtxtbox.Text = Trim(Consulta.Consulta)
    Else
        richtxtbox.Text = "Consulta Vacia"
    End If
Close #1
Exit Sub
manejoerr:
    Select Case MsgBox("Error!  " & Err.Description, vbAbortRetryIgnore + vbCritical)
        Case Is = vbRetry
            Resume 0
        Case Is = vbIgnore
            Resume Next
        Case Is = vbAbort
            MsgBox "La aplicacion se cerrara"
            End
    End Select
    

End Sub

Private Sub lstVer_Click()
richtxtbox.Text = ""
ListaCons
End Sub

Private Sub mnuNuevaSes_Click()
On Error GoTo manejoerr
Dim Consulta As Sesion, paciente As paciente
Open App.Path & "\Pacientes.dat" For Random As #1 Len = Len(paciente)
    Get #1, lstVer.ListIndex + 1, paciente
Close #1
Open App.Path & "\Consultas" & "\Paciente_" & paciente.Nombre & "_Consulta" & "\Consultas.dat" For Random As #1 Len = Len(Consulta)
    Consulta.Fecha = Date
    Consulta.Hora = Time
    Consulta.Numero = LOF(1) / Len(Consulta) + 1
    Put #1, LOF(1) / Len(Consulta) + 1, Consulta
Close #1

Open App.Path & "\Consultas" & "\Paciente_" & paciente.Nombre & "_Consulta\" & Consulta.Numero & ".dat" For Random As #1 Len = Len(Consulta)
Close #1
Info "Consultas", "Nueva Sesion Creada", 1000
ListaCons
Exit Sub
manejoerr:
    Select Case MsgBox("Error!  " & Err.Description, vbAbortRetryIgnore + vbCritical)
        Case Is = vbRetry
            Resume 0
        Case Is = vbIgnore
            Resume Next
        Case Is = vbAbort
            MsgBox "La aplicacion se cerrara"
            End
    End Select
    

End Sub

Private Sub mnuSave_Click()
On Error GoTo manejoerr
Dim Consulta As Sesion, paciente As paciente
Open App.Path & "\Pacientes.dat" For Random As #1 Len = Len(paciente)
    Get #1, lstVer.ListIndex + 1, paciente
Close #1

Open App.Path & "\Consultas" & "\Paciente_" & paciente.Nombre & "_Consulta\" & Trim(Str(lstConsultas.ListIndex + 1)) & ".dat" For Random As #1 Len = Len(Consulta)
    Consulta.Consulta = richtxtbox.Text
    Put #1, LOF(1) / Len(Consulta), Consulta
Close #1
Info "Consultas", "Consulta Guardada en :" & paciente.Nombre, 1000
Exit Sub
manejoerr:
    Select Case MsgBox("Error!  " & Err.Description, vbAbortRetryIgnore + vbCritical)
        Case Is = vbRetry
            Resume 0
        Case Is = vbIgnore
            Resume Next
        Case Is = vbAbort
            MsgBox "La aplicacion se cerrara"
            End
    End Select
    


End Sub

Private Sub mnuVolver_Click()
Me.Hide
End Sub

