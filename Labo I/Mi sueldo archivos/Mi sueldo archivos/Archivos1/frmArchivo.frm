VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Begin VB.Form frmArchivos 
   BackColor       =   &H00808080&
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Administracion De Sueldo"
   ClientHeight    =   8850
   ClientLeft      =   150
   ClientTop       =   540
   ClientWidth     =   9135
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Moveable        =   0   'False
   ScaleHeight     =   8850
   ScaleWidth      =   9135
   StartUpPosition =   2  'CenterScreen
   Begin MSComCtl2.DTPicker txtFecha 
      Height          =   375
      Left            =   3480
      TabIndex        =   29
      Top             =   7080
      Width           =   1095
      _ExtentX        =   1931
      _ExtentY        =   661
      _Version        =   393216
      Format          =   20971521
      CurrentDate     =   39719
   End
   Begin VB.CommandButton cmdOrdenam 
      Caption         =   "Comentario"
      Height          =   255
      Index           =   4
      Left            =   6960
      TabIndex        =   22
      Top             =   1560
      Width           =   2055
   End
   Begin VB.CommandButton cmdOrdenam 
      Caption         =   "Importe"
      Height          =   255
      Index           =   3
      Left            =   3360
      TabIndex        =   21
      Top             =   1560
      Width           =   1335
   End
   Begin VB.CommandButton cmdOrdenam 
      Caption         =   "Hora"
      Height          =   255
      Index           =   2
      Left            =   1800
      TabIndex        =   20
      Top             =   1560
      Width           =   1587
   End
   Begin VB.CommandButton cmdOrdenam 
      Caption         =   "Fecha"
      Height          =   255
      Index           =   1
      Left            =   240
      TabIndex        =   19
      Top             =   1560
      Width           =   1587
   End
   Begin MSComctlLib.StatusBar SBar 
      Align           =   2  'Align Bottom
      Height          =   375
      Left            =   0
      TabIndex        =   17
      Top             =   8475
      Width           =   9135
      _ExtentX        =   16113
      _ExtentY        =   661
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   4
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            AutoSize        =   2
            Text            =   "Ultimo Backup"
            TextSave        =   "Ultimo Backup"
         EndProperty
         BeginProperty Panel2 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            AutoSize        =   2
            Text            =   "Cantidad Registros"
            TextSave        =   "Cantidad Registros"
         EndProperty
         BeginProperty Panel3 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            AutoSize        =   2
            Text            =   "Capital"
            TextSave        =   "Capital"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            AutoSize        =   2
            Text            =   "Sueldo"
            TextSave        =   "Sueldo"
         EndProperty
      EndProperty
   End
   Begin VB.Frame Frame2 
      BackColor       =   &H00808080&
      Caption         =   "Manejo del Archivo "
      Height          =   7335
      Left            =   120
      TabIndex        =   14
      Top             =   1080
      Width           =   9015
      Begin VB.CommandButton cmdHasta 
         Caption         =   "Seleccionar Hasta la posicion Actual"
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   6.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   6240
         TabIndex        =   26
         Top             =   3120
         Width           =   2640
      End
      Begin VB.CommandButton cmdDesde 
         Caption         =   "Seleccionar Desde la posicion Actual"
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   6.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   3240
         TabIndex        =   25
         Top             =   3120
         Width           =   2640
      End
      Begin VB.CommandButton cmdSelect 
         Caption         =   "Seleccionar Todos o Ninguno ( Invertir Seleccion)"
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   6.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   240
         TabIndex        =   24
         Top             =   3120
         Width           =   2640
      End
      Begin VB.CommandButton cmdOrdenam 
         Caption         =   "Motivo"
         Height          =   255
         Index           =   0
         Left            =   4560
         TabIndex        =   18
         Top             =   480
         Width           =   2295
      End
      Begin VB.TextBox txtVer 
         BackColor       =   &H00FF8080&
         Height          =   1335
         Left            =   120
         Locked          =   -1  'True
         MultiLine       =   -1  'True
         TabIndex        =   11
         Top             =   3480
         Width           =   8775
      End
      Begin VB.Frame Frame4 
         BackColor       =   &H00808080&
         Caption         =   "Controles"
         Height          =   2295
         Left            =   4920
         TabIndex        =   16
         Top             =   4920
         Width           =   3855
         Begin VB.TextBox txtSueldo 
            BackColor       =   &H00808080&
            Height          =   285
            Left            =   2880
            TabIndex        =   27
            Text            =   "679"
            ToolTipText     =   "Sueldo"
            Top             =   240
            Width           =   495
         End
         Begin VB.CommandButton cmdOrdenar 
            Caption         =   "^^ &Ordenar"
            Height          =   495
            Left            =   1920
            TabIndex        =   9
            Top             =   1560
            Width           =   1575
         End
         Begin VB.ComboBox cmbOrden 
            Height          =   315
            ItemData        =   "frmArchivo.frx":0000
            Left            =   1920
            List            =   "frmArchivo.frx":0002
            Style           =   2  'Dropdown List
            TabIndex        =   8
            ToolTipText     =   "1 - Motivo ; 2 - Fecha ; 3 - Hora ; 4 - Importe ; 5 - Comentario"
            Top             =   1200
            Width           =   1575
         End
         Begin VB.CommandButton cmdCerrar 
            Caption         =   "&Cierre de Libros"
            Height          =   495
            Left            =   1920
            TabIndex        =   7
            Top             =   600
            Width           =   1575
         End
         Begin VB.CommandButton cmdModi 
            Caption         =   "&Modificar Entradas Seleccionadas"
            Height          =   495
            Left            =   240
            TabIndex        =   6
            Top             =   1560
            Width           =   1575
         End
         Begin VB.CommandButton cmdBaja 
            Caption         =   "&Borrar Entradas Seleccionadas"
            Height          =   495
            Left            =   240
            TabIndex        =   5
            Top             =   960
            Width           =   1575
         End
         Begin VB.CommandButton cmdAlta 
            Caption         =   "<<<&Ingresar Registro"
            Height          =   495
            Left            =   240
            TabIndex        =   4
            Top             =   360
            Width           =   1575
         End
         Begin VB.Label Label1 
            BackColor       =   &H00808080&
            Caption         =   "   Sueldo:"
            Height          =   255
            Left            =   2040
            TabIndex        =   28
            Top             =   240
            Width           =   735
         End
      End
      Begin VB.TextBox txtImporte 
         Height          =   375
         Left            =   3360
         TabIndex        =   2
         Text            =   "Importe"
         Top             =   5160
         Width           =   1095
      End
      Begin VB.TextBox txtComentario 
         Height          =   855
         Left            =   240
         TabIndex        =   1
         Text            =   "Comentario"
         Top             =   6000
         Width           =   3015
      End
      Begin VB.TextBox txtMotivo 
         Height          =   855
         Left            =   240
         TabIndex        =   0
         Text            =   "Motivo"
         Top             =   5160
         Width           =   3015
      End
      Begin VB.ListBox lstVer 
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   6.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   2310
         Left            =   120
         Style           =   1  'Checkbox
         TabIndex        =   10
         Top             =   840
         Width           =   8775
      End
      Begin VB.Frame Frame3 
         BackColor       =   &H00808080&
         Caption         =   "Alta o Modificacion"
         Height          =   2295
         Left            =   120
         TabIndex        =   15
         Top             =   4920
         Width           =   4695
         Begin VB.TextBox txtHora 
            Height          =   405
            Left            =   3240
            TabIndex        =   32
            ToolTipText     =   "hh:mm:ss"
            Top             =   1560
            Width           =   1095
         End
         Begin VB.CheckBox chkHora 
            BackColor       =   &H00808080&
            Height          =   375
            Left            =   4320
            TabIndex        =   31
            Top             =   1560
            Width           =   255
         End
         Begin VB.CheckBox chkFecha 
            BackColor       =   &H00808080&
            Height          =   375
            Left            =   4320
            TabIndex        =   30
            Top             =   1080
            Width           =   255
         End
         Begin VB.ComboBox cmbMoneda 
            Height          =   315
            ItemData        =   "frmArchivo.frx":0004
            Left            =   3240
            List            =   "frmArchivo.frx":0011
            Style           =   2  'Dropdown List
            TabIndex        =   3
            Top             =   720
            Width           =   1095
         End
      End
      Begin VB.Frame Frame5 
         BackColor       =   &H00808080&
         Caption         =   "Controles de Ordenamiento"
         Height          =   615
         Left            =   0
         TabIndex        =   23
         Top             =   240
         Width           =   8895
      End
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H00808080&
      Caption         =   "Ruta del Archivo"
      Height          =   855
      Left            =   120
      TabIndex        =   13
      Top             =   120
      Width           =   9015
      Begin MSComDlg.CommonDialog cdVentana 
         Left            =   120
         Top             =   240
         _ExtentX        =   847
         _ExtentY        =   847
         _Version        =   393216
      End
      Begin VB.TextBox txtRuta 
         Height          =   405
         Left            =   360
         Locked          =   -1  'True
         TabIndex        =   12
         Top             =   240
         Width           =   8535
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
   End
   Begin VB.Menu A 
      Caption         =   "Administracion de Archivo"
      Begin VB.Menu xAlta 
         Caption         =   "Ingresar Nuevo Registro"
      End
      Begin VB.Menu xBaja 
         Caption         =   "Borrar Entradas Seleccionadas"
      End
      Begin VB.Menu xModifica 
         Caption         =   "Modificar Entradas Seleccionadas"
      End
      Begin VB.Menu spacee2 
         Caption         =   "-"
      End
      Begin VB.Menu xBackup 
         Caption         =   "Backup"
      End
   End
   Begin VB.Menu Orden 
      Caption         =   "Ordenamiento de Archivo"
      Begin VB.Menu ordFecha 
         Caption         =   "Ordenar Archivo por Fecha"
      End
      Begin VB.Menu ordHora 
         Caption         =   "Ordenar Archivo por Hora"
      End
      Begin VB.Menu ordImporte 
         Caption         =   "Ordenar Archivo por Importe"
      End
      Begin VB.Menu ordComent 
         Caption         =   "Ordenar Archivo por Comentario"
      End
      Begin VB.Menu ordMotivo 
         Caption         =   "Ordenar Archivo por Motivo"
      End
      Begin VB.Menu xSpacee 
         Caption         =   "-"
      End
      Begin VB.Menu Decre 
         Caption         =   "Ordenamiento Decreciente"
         Checked         =   -1  'True
      End
      Begin VB.Menu Crece 
         Caption         =   "Ordenamiento Creciente"
      End
   End
   Begin VB.Menu Appss 
      Caption         =   "Opciones de Aplicacion"
      Begin VB.Menu ocult 
         Caption         =   "Ocultar"
         Shortcut        =   ^K
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
    Motivo As String * 30
    Comentario As String * 30
    Importe As Single
    Fecha As String * 20
    Hora As String * 20
End Type
Private Sub DialogOpen(ByVal forma As Integer)
With cdVentana
    .CancelError = False
    .InitDir = App.Path
    .Filter = "Archivo de Datos(*.dat)|*.dat"
    Select Case forma
        Case Is = 1
            .DialogTitle = "Abrir Archivo"
            .ShowOpen
            If (txtRuta.Text <> "") Then
                Lista
            End If
            txtRuta.Text = .FileName
        Case Is = 2
            .DialogTitle = "Guardar Archivo"
            .ShowSave
    End Select
    txtRuta.Text = .FileName
End With
End Sub

Private Sub cmdAlta_Click()
xAlta_Click
End Sub

Private Sub cmdBaja_Click()
xBaja_Click
End Sub

Private Sub cmdCerrar_Click()
CerrarLibros
Lista
End Sub

Private Sub cmdDesde_Click()
Dim x As Integer
For x = lstVer.ListIndex To lstVer.ListCount - 1
    lstVer.Selected(x) = Not (lstVer.Selected(x))
Next x
lstVer.ListIndex = 0
End Sub

Private Sub cmdHasta_Click()
Dim x As Integer
For x = 0 To lstVer.ListIndex
    lstVer.Selected(x) = Not (lstVer.Selected(x))
Next x
lstVer.ListIndex = 0
End Sub

Private Sub cmdModi_Click()
xModifica_Click
End Sub

Private Sub cmdOrdenam_Click(Index As Integer)
Ordenar Index + 1
Decre_Click
End Sub

Private Sub cmdOrdenar_Click()
Ordenar Val(cmbOrden.Text)
End Sub

Private Sub cmdSelect_Click()
Dim x As Integer
For x = 0 To lstVer.ListCount - 1
    lstVer.Selected(x) = Not (lstVer.Selected(x))
Next x
lstVer.ListIndex = 0
End Sub

Private Sub Crece_Click()
Decre.Checked = Not (Decre.Checked)
Crece.Checked = Not (Crece.Checked)
End Sub


Private Sub Decre_Click()
Decre.Checked = Not (Decre.Checked)
Crece.Checked = Not (Crece.Checked)
End Sub

Private Sub Exit_Click()
Form_Unload 0
End Sub

Private Sub Form_Load()
cmbMoneda.ListIndex = 0
txtRuta.Text = App.Path & "\file001.dat"
Dim x As Integer
For x = 1 To 5
    cmbOrden.AddItem Str(x)
Next x
End Sub
Private Sub CerrarLibros()
Dim x As Integer, total As Registros, Calculototal As Single: x = 1
Dim Sueldo As Single
Sueldo = Val(txtSueldo.Text)
Open txtRuta.Text For Random As #1 Len = Len(total)
Get #1, x, total
Do While Not EOF(1): DoEvents
    If Not (total.Motivo = " --------- Cierre de Libro    ") Then
        Calculototal = Calculototal + total.Importe
    End If
    x = x + 1
    Get #1, x, total
Loop
'Alta de Gastos
total.Fecha = Date
total.Hora = Time
total.Importe = Calculototal
total.Motivo = " --------- Cierre de Libro"
total.Comentario = " --------- Total Gastado"
SBar.Panels(4).Text = "Gastos:" & Str(total.Importe)
Put #1, LOF(1) / Len(total) + 1, total
'Alta de Bienes
total.Fecha = Date
total.Hora = Time
total.Importe = Sueldo - Calculototal
total.Motivo = " --------- Cierre de Libro"
total.Comentario = " --------- Total de Capital"
SBar.Panels(3).Text = "Capital:" & Str(total.Importe)
Put #1, LOF(1) / Len(total) + 1, total
Close #1
End Sub
Private Sub Backup()
Dim variable As Registros
Dim x As Integer
Open App.Path & "\Backup.dat" For Random As #2 Len = Len(variable)
Open txtRuta.Text For Random As #1 Len = Len(variable)
x = 1
Get #1, x, variable
Do While Not EOF(1): DoEvents
    Put #2, x, variable
    x = x + 1
    Get #1, x, variable
Loop
Close #1, #2
End Sub
Private Sub Form_Unload(Cancel As Integer)
End
End Sub
Private Sub Ordenar(ByVal Campo As Integer)
Dim Registro As Registros, auxiliar As Registros
Dim n As Integer, k As Integer, varCampos As Variant, varAuxi As Variant
Open txtRuta.Text For Random As #1 Len = Len(Registro)
For n = 1 To LOF(1) / Len(Registro) - 1
    Get #1, n, Registro
    For k = n + 1 To LOF(1) / Len(Registro)
        Get #1, k, auxiliar
        Select Case Campo
            Case Is = 1
                varCampos = Registro.Motivo
                varAuxi = auxiliar.Motivo
            Case Is = 2
                varCampos = Registro.Fecha
                varAuxi = auxiliar.Fecha
            Case Is = 3
                varCampos = Registro.Hora
                varAuxi = auxiliar.Hora
            Case Is = 4
                varCampos = Registro.Importe
                varAuxi = auxiliar.Importe
            Case Is = 5
                varCampos = Registro.Comentario
                varAuxi = auxiliar.Comentario
        End Select
         If (Decre.Checked) Then
            If (varCampos < varAuxi) Then
                Put #1, k, Registro
                Put #1, n, auxiliar
                Registro = auxiliar
            End If
         Else
             If (varCampos > varAuxi) Then
                 Put #1, k, Registro
                 Put #1, n, auxiliar
                 Registro = auxiliar
             End If
         End If
    Next k
Next n
Close #1
Lista
End Sub

Private Sub lstVer_Click()
txtVer.Text = lstVer.List(lstVer.ListIndex)
End Sub

Private Sub ocult_Click()
frmArchivos.WindowState = 1
End Sub

Private Sub ordComent_Click()
Ordenar 5
End Sub

Private Sub ordFecha_Click()
Ordenar 2
End Sub

Private Sub ordHora_Click()
Ordenar 3
End Sub

Private Sub ordImporte_Click()
Ordenar 4
End Sub

Private Sub ordMotivo_Click()
Ordenar 1
End Sub
Private Function CargaDatos() As Registros
If Not (chkFecha.Value = Checked) Then
    CargaDatos.Fecha = Date
Else
    CargaDatos.Fecha = txtFecha.Value
End If
If Not (chkHora.Value = Checked) Then
    CargaDatos.Hora = Time
Else
    CargaDatos.Hora = txtHora.Text
End If
CargaDatos.Importe = Val(txtImporte.Text)
CargaDatos.Comentario = txtComentario.Text
CargaDatos.Motivo = txtMotivo.Text
End Function


Private Sub txtComentario_Click()
With txtComentario
    .SelStart = 0
    .SelLength = Len(.Text)
End With
End Sub

Private Sub txtImporte_Click()
With txtImporte
    .SelStart = 0
    .SelLength = Len(.Text)
End With
cmbMoneda.ListIndex = 0
End Sub

Private Sub txtMotivo_click()
With txtMotivo
    .SelStart = 0
    .SelLength = Len(.Text)
End With
End Sub

Private Sub xAlta_Click()
Dim Alta As Registros
Alta = CargaDatos()
Open txtRuta.Text For Random As #1 Len = Len(Alta)
    Put #1, LOF(1) / Len(Alta) + 1, Alta
Close #1
Lista
End Sub

Private Sub xBackup_Click()
Backup
SBar.Panels(1).Text = "Ultimo backup a las : " & Time
End Sub

Private Sub xBaja_Click()
Dim Registro As Registros, x As Integer, cont As Integer
Dim result As VbMsgBoxResult
Open txtRuta.Text For Random As #1 Len = Len(Registro)
Open App.Path & "\Temporal.dat" For Random As #2 Len = Len(Registro)
cont = 1
For x = 0 To lstVer.ListCount - 1
    If (lstVer.Selected(x)) Then
        result = MsgBox("Desea Eliminar " & lstVer.List(x), vbYesNo + vbExclamation)
        If (result = vbNo) Then
            Get #1, x + 1, Registro
            Put #2, cont, Registro
            cont = cont + 1
        End If
    Else
        Get #1, x + 1, Registro
        Put #2, cont, Registro
        cont = cont + 1
    End If
Next x
Close #1, #2
Kill txtRuta.Text
Name App.Path & "\Temporal.dat" As txtRuta.Text
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
Dim x As Integer, Registro As Registros
Open txtRuta.Text For Random As #1 Len = Len(Registro)
For x = 0 To lstVer.ListCount - 1
    If (lstVer.Selected(x)) Then
        If MsgBox("Desea modificar:  " & lstVer.List(x) & "  ?", vbYesNo + vbExclamation, "Modificacion") = vbYes Then
            Get #1, x + 1, Registro
            If MsgBox("Desea Modificar Motivo?", vbYesNo + vbInformation, "Modificacion") = vbYes Then
                txtMotivo.Text = InputBox("Ingrese Motivo", "Modificacion")
            Else
                txtMotivo.Text = Registro.Motivo
            End If
            If MsgBox("Desea Modificar Comentario?", vbYesNo + vbInformation, "Modificacion") = vbYes Then
                txtComentario.Text = InputBox("Ingrese Comentario", "Modificacion")
            Else
                txtComentario.Text = Registro.Comentario
            End If
            If MsgBox("Desea Modificar Importe?", vbYesNo + vbInformation, "Modificacion") = vbYes Then
                txtImporte.Text = InputBox("Ingrese Importe", "Modificacion")
            Else
                txtImporte.Text = Registro.Importe
            End If
            If MsgBox("Desea Modificar Moneda?", vbYesNo + vbInformation, "Modificacion") = vbYes Then
                cmbMoneda.ListIndex = Val(InputBox("Ingrese Moneda: 1- Pesos ; 2- Dolares; 3- Euros", "Modificacion")) - 1
            Else
                cmbMoneda.ListIndex = 0
            End If
            If MsgBox("Desea Modificar Fecha?", vbYesNo + vbInformation, "Modificacion") = vbYes Then
                txtFecha.Value = InputBox("Ingrese Fecha dd/mm/aaaa ", "Modificacion")
                chkFecha.Value = 1
            Else
                txtFecha.Value = Registro.Fecha
            End If
            If MsgBox("Desea Modificar Hora?", vbYesNo + vbInformation, "Modificacion") = vbYes Then
                txtHora.Text = InputBox("Ingrese Hora hh:mm:ss ", "Modificacion")
                chkHora.Value = 1
            Else
                txtHora.Text = Registro.Hora
            End If
            Registro = CargaDatos()
            Put #1, x + 1, Registro
        End If
    Else
    End If
Next x
Close #1
Lista
chkHora.Value = 0
chkFecha.Value = 0
End Sub

Private Sub xOpen_Click()
Dim Registro As Registros
DialogOpen 2
If (txtRuta.Text <> "") Then
    Open txtRuta.Text For Random As #1 Len = Len(Registro)
    If (LOF(1) <> 0) Then MsgBox "Archivo Existente, Se abrira y se mostrara en la lista."
    Close #1
    Lista
End If
End Sub

Private Sub xVer_Click()
DialogOpen 1
Lista
End Sub
Private Sub Lista()
lstVer.Clear
Dim Registro As Registros, x As Integer
'    Motivo As String * 30
'    Comentario As String * 30
'    Importe As Single
'    Fecha As String * 20
'    Hora As String * 20
x = 1
Open txtRuta.Text For Random As #1 Len = Len(Registro)
Get #1, x, Registro
Do While Not (EOF(1))
    With Registro
        lstVer.AddItem .Fecha & "  -  " & .Hora & "  -  " & Str(.Importe) & " " & cmbMoneda.Text & "  -          Motivo: " & .Motivo & " Comentarios: " & .Comentario
    End With
    x = x + 1
    Get #1, x, Registro
Loop
Close #1
If lstVer.ListCount > 0 Then
    cmdSelect.Enabled = True
    cmdDesde.Enabled = True
    cmdHasta.Enabled = True
Else
    cmdSelect.Enabled = False
    cmdDesde.Enabled = False
    cmdHasta.Enabled = False
End If
SBar.Panels(2).Text = "Cantidad de Registros: " & Str(lstVer.ListCount)
End Sub
