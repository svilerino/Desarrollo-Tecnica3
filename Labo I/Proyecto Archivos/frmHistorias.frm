VERSION 5.00
Object = "{3B7C8863-D78F-101B-B9B5-04021C009402}#1.2#0"; "richtx32.OCX"
Begin VB.Form frmHistorias 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Administracion de Historias Clinicas"
   ClientHeight    =   3990
   ClientLeft      =   45
   ClientTop       =   735
   ClientWidth     =   12045
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   3990
   ScaleWidth      =   12045
   ShowInTaskbar   =   0   'False
   Begin VB.ListBox lstVer 
      Height          =   3765
      Left            =   4200
      TabIndex        =   1
      Top             =   120
      Width           =   7695
   End
   Begin RichTextLib.RichTextBox richtxtBox 
      Height          =   3855
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   3855
      _ExtentX        =   6800
      _ExtentY        =   6800
      _Version        =   393217
      MaxLength       =   255
      TextRTF         =   $"frmHistorias.frx":0000
   End
   Begin VB.Menu mnuSave 
      Caption         =   "Guardar Historia Clinica"
   End
   Begin VB.Menu mnuSalir 
      Caption         =   "Volver"
   End
End
Attribute VB_Name = "frmHistorias"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub Form_Activate()
ListaCl
End Sub

Private Sub Form_Unload(Cancel As Integer)
Cancel = 0
Me.Hide
End Sub

Private Sub ListaCl()
lstVer.Clear
Dim x As Integer: x = 1
Dim paciente As paciente
Open App.Path & "\Pacientes.dat" For Random As #3 Len = Len(paciente)
    Get #3, x, paciente
    Do While Not EOF(3): DoEvents
        With paciente
            lstVer.AddItem "Nombre  " & .Nombre & " Telefono " & .Telefono & " Edad " & .Edad & " Estado Civil " & .E_Civil
        End With
        x = x + 1
        Get #3, x, paciente
    Loop
Close #1
End Sub

Private Sub VerHisto()
Dim paciente As paciente, historia As HClinica
Open App.Path & "\Pacientes.dat" For Random As #1 Len = Len(paciente)
    Get #1, lstVer.ListIndex + 1, paciente
Close #1
Open App.Path & "\Historias" & "\Paciente_" & paciente.Nombre & ".dat" For Random As #1 Len = Len(historia)
    Get #1, 1, historia.historia
    If Not EOF(1) Then
        richtxtbox.Text = Trim(historia.historia)
    Else
        richtxtbox.Text = "Archivo Vacio"
    End If
Close #1
End Sub

Private Sub lstVer_Click()
VerHisto
End Sub

Private Sub mnuSalir_Click()
Me.Hide
End Sub

Private Sub mnuSave_Click()
Dim paciente As paciente, historia As HClinica
Open App.Path & "\Pacientes.dat" For Random As #1 Len = Len(paciente)
    Get #1, lstVer.ListIndex + 1, paciente
Close #1
Open App.Path & "\Historias" & "\Paciente_" & paciente.Nombre & ".dat" For Random As #1 Len = Len(historia)
    historia.historia = richtxtbox.Text
    Put #1, 1, historia.historia
Close #1
End Sub

