Attribute VB_Name = "mdlArchivos"
Option Explicit

Public Type Paciente
    Nombre As String * 20
    Edad As Byte
    E_Civil As String * 10
    Telefono As String * 15
 End Type

Public Type Sesion
    Fecha As String * 10
    Hora As String * 10
    Impr_diag As String * 255
    consulta As String * 255
    numero As Integer
End Type
Public Type Hclinica
    historia As String * 255
End Type

Public Sub Info(ByVal Enviador As String, ByVal Mensaje As String, ByVal time As Integer)
With frmInfo
    .Timer1.Enabled = True
    .Caption = "Mensaje enviado por : " & Enviador
    .lblInfo.Caption = Mensaje
    .Timer1.Interval = time
    .Show 1
    .Timer1.Enabled = False
End With
    
End Sub
