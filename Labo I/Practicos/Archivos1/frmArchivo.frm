VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Begin VB.Form frmArchivos 
   BackColor       =   &H00808080&
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Archivos"
   ClientHeight    =   7575
   ClientLeft      =   150
   ClientTop       =   540
   ClientWidth     =   8445
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Moveable        =   0   'False
   ScaleHeight     =   7575
   ScaleWidth      =   8445
   StartUpPosition =   2  'CenterScreen
   Begin VB.Frame Frame2 
      BackColor       =   &H00808080&
      Caption         =   "Visualizar Archivo "
      Height          =   6375
      Left            =   120
      TabIndex        =   2
      Top             =   1080
      Width           =   8295
      Begin VB.ListBox lstVer 
         Height          =   5910
         Left            =   120
         Style           =   1  'Checkbox
         TabIndex        =   3
         Top             =   240
         Width           =   7935
      End
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H00808080&
      Caption         =   "Ruta del Archivo"
      Height          =   855
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   8175
      Begin MSComDlg.CommonDialog cdVentana 
         Left            =   120
         Top             =   240
         _ExtentX        =   847
         _ExtentY        =   847
         _Version        =   393216
      End
      Begin VB.TextBox txtRuta 
         Height          =   405
         Left            =   840
         Locked          =   -1  'True
         TabIndex        =   1
         Top             =   240
         Width           =   7095
      End
   End
   Begin VB.Menu file 
      Caption         =   "&Archivo"
      Begin VB.Menu xVer 
         Caption         =   "Visualizar Archivo Existente"
      End
      Begin VB.Menu xOpen 
         Caption         =   "Abrir Archivo Nuevo"
      End
      Begin VB.Menu xKill 
         Caption         =   "Matar Archivo"
      End
      Begin VB.Menu A 
         Caption         =   "-"
      End
      Begin VB.Menu xAlta 
         Caption         =   "Dar Alta"
      End
      Begin VB.Menu xBaja 
         Caption         =   "Dar Baja"
      End
      Begin VB.Menu xModifica 
         Caption         =   "Modificar Elemento"
      End
      Begin VB.Menu space2 
         Caption         =   "-"
      End
      Begin VB.Menu ordNombre 
         Caption         =   "Ordenar Archivo por Nombre"
      End
      Begin VB.Menu ordApe 
         Caption         =   "Ordenar Archivo por Apellido"
      End
      Begin VB.Menu ordedad 
         Caption         =   "Ordenar Archivo por Edad"
      End
      Begin VB.Menu space1 
         Caption         =   "-"
      End
      Begin VB.Menu Exit 
         Caption         =   "Salir"
      End
   End
End
Attribute VB_Name = "frmArchivos"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Private Type Registros
    Nombre As String * 15
    Apellido As String * 15
    Edad As Byte
End Type
Private Sub DialogOpen(ByVal forma As Byte)
With cdVentana
    .CancelError = False
    .InitDir = App.Path
    .Filter = "Archivo de Datos(*.dat)|*.dat"
    Select Case forma
        Case Is = 1
            .ShowOpen
            .DialogTitle = "Abrir Archivo"
        Case Is = 2
            .ShowSave
            .DialogTitle = "Guardar Archivo"
    End Select
    txtRuta.Text = .FileName
End With
End Sub

Private Sub Exit_Click()
Form_Unload 0
End Sub

Private Sub Form_Unload(Cancel As Integer)
End
End Sub
Private Sub Ordenar(ByVal Campo As Byte)
Dim registro As Registros, auxiliar As Registros
Dim n As Byte, k As Byte, varCampos As Variant, varAuxi
Open txtRuta.Text For Random As #1 Len = Len(registro)
For n = 1 To LOF(1) / Len(registro) - 1
    Get #1, n, registro
    For k = n + 1 To LOF(1) / Len(registro)
        Get #1, k, auxiliar
        Select Case Campo
            Case Is = 1
                varCampos = registro.Nombre
                varAuxi = auxiliar.Nombre
            Case Is = 2
                varCampos = registro.Apellido
                varAuxi = auxiliar.Apellido
            Case Is = 3
                varCampos = registro.Edad
                varAuxi = auxiliar.Edad
        End Select
        If (varCampos > varAuxi) Then
            Put #1, k, registro
            Put #1, n, auxiliar
            registro = auxiliar
        End If
    Next k
Next n
Close #1
End Sub

Private Sub ordApe_Click()
Ordenar 2
Lista
End Sub

Private Sub ordedad_Click()
Ordenar 3
Lista
End Sub

Private Sub ordNombre_Click()
Ordenar 1
Lista
End Sub

Private Sub xAlta_Click()
Dim registro As Registros
Open txtRuta.Text For Random As #1 Len = Len(registro)
With registro
    .Nombre = InputBox("Ingrese Nombre", "Nueva Alta")
    .Apellido = InputBox("Ingrese Apellido", "Nueva Alta")
    .Edad = Val(InputBox("Ingrese Edad", "Nueva Alta"))
End With
Put #1, LOF(1) / Len(registro) + 1, registro
Close #1
Ordenar 1
Lista
End Sub

Private Sub xBaja_Click()
Dim registro As Registros, x As Byte, cont As Byte
Dim result As VbMsgBoxResult
Open txtRuta.Text For Random As #1 Len = Len(registro)
Open App.Path & "\Temporal.dat" For Random As #2 Len = Len(registro)
cont = 1
For x = 0 To lstVer.ListCount - 1
    If (lstVer.Selected(x)) Then
        result = MsgBox("Desea Eliminar " & lstVer.List(x), vbYesNo + vbInformation)
        If (result = vbNo) Then
            Get #1, x + 1, registro
            Put #2, cont, registro
            cont = cont + 1
        End If
    Else
        Get #1, x + 1, registro
        Put #2, cont, registro
        cont = cont + 1
    End If
Next x
Close #1, #2
Kill txtRuta.Text
Name App.Path & "\Temporal.dat" As txtRuta.Text
Ordenar 1
Lista
End Sub

Private Sub xKill_Click()
Dim result As VbMsgBoxResult
result = MsgBox("Desea Eliminar El archivo: " & txtRuta.Text & "?", vbYesNo + vbInformation)
If (result = vbYes) Then
    Kill txtRuta.Text
    MsgBox "Archivo Borrado."
Else
    MsgBox "Usuario Cancelo operacion."
End If
End Sub

Private Sub xModifica_Click()
Dim registro As Registros, x As Byte
Dim result As VbMsgBoxResult
Open txtRuta.Text For Random As #1 Len = Len(registro)
For x = 0 To lstVer.ListCount - 1
    If (lstVer.Selected(x)) Then
        result = MsgBox("Desea Modificar el registro " & lstVer.List(x) & "?", vbYesNo + vbInformation)
        If (result = vbYes) Then
            Select Case InputBox("Ingrese Modificacion : Nombre, Apellido o Edad, Cancelar devuelve Vacio", "Mofidicacion")
                Case Is = "Nombre"
                    Get #1, x + 1, registro
                    registro.Nombre = InputBox("Ingrese Nombre Nuevo, Cancelar devuelve Vacio", "Modificacion")
                    Put #1, x + 1, registro
                Case Is = "Apellido"
                    Get #1, x + 1, registro
                    registro.Apellido = InputBox("Ingrese Apellido Nuevo, Cancelar devuelve Vacio", "Modificacion")
                    Put #1, x + 1, registro
                Case Is = "Edad"
                    Get #1, x + 1, registro
                    registro.Edad = Val(InputBox("Ingrese Edad Nueva, Cancelar devuelve 0", "Modificacion"))
                    Put #1, x + 1, registro
                Case Else
                    MsgBox "Dato Invalido,Repita la operacion."
            End Select
        End If
    End If
Next x
Close #1
Ordenar 1
Lista
End Sub

Private Sub xOpen_Click()
Dim registro As Registros
DialogOpen 2
If (txtRuta.Text <> "") Then
    Open txtRuta.Text For Random As #1 Len = Len(registro)
    Close #1
End If
End Sub

Private Sub xVer_Click()
DialogOpen 1
Lista
End Sub
Private Sub Lista()
lstVer.Clear
Dim registro As Registros, x As Byte
x = 1
Open txtRuta.Text For Random As #1 Len = Len(registro)
Get #1, x, registro
Do While Not (EOF(1))
    lstVer.AddItem registro.Nombre & " " & registro.Apellido & " " & Val(registro.Edad)
    x = x + 1
    Get #1, x, registro
Loop
Close #1
End Sub
