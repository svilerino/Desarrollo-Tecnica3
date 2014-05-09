VERSION 5.00
Begin VB.Form frm1eva3trim 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "1Eva3trim"
   ClientHeight    =   4140
   ClientLeft      =   150
   ClientTop       =   540
   ClientWidth     =   5370
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4140
   ScaleWidth      =   5370
   StartUpPosition =   2  'CenterScreen
   Begin VB.TextBox txtFecha 
      Height          =   375
      Index           =   2
      Left            =   3240
      MaxLength       =   4
      TabIndex        =   6
      Top             =   3480
      Width           =   615
   End
   Begin VB.TextBox txtFecha 
      Height          =   375
      Index           =   1
      Left            =   2640
      MaxLength       =   2
      TabIndex        =   5
      Top             =   3480
      Width           =   495
   End
   Begin VB.Frame Frame2 
      Caption         =   "Control De Vencimientos"
      Height          =   1335
      Left            =   120
      TabIndex        =   2
      Top             =   2640
      Width           =   5055
      Begin VB.TextBox txtFecha 
         Height          =   375
         Index           =   0
         Left            =   1920
         MaxLength       =   2
         TabIndex        =   4
         Top             =   840
         Width           =   495
      End
      Begin VB.CommandButton cmdControlVenc 
         Caption         =   "Dar de Baja Elementos Vencidos"
         Height          =   495
         Left            =   240
         TabIndex        =   3
         Top             =   240
         Width           =   4575
      End
      Begin VB.Label Label1 
         Caption         =   "Ingrese dd:mm:aaaa"
         Height          =   375
         Left            =   120
         TabIndex        =   7
         Top             =   840
         Width           =   1575
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "Visualizacion de Productos"
      Height          =   2415
      Left            =   0
      TabIndex        =   0
      Top             =   120
      Width           =   5295
      Begin VB.ListBox lstVer 
         Height          =   2085
         Left            =   120
         Style           =   1  'Checkbox
         TabIndex        =   1
         Top             =   240
         Width           =   5055
      End
   End
   Begin VB.Menu mnuProd 
      Caption         =   "Producto"
      Begin VB.Menu mnuAlta 
         Caption         =   "Nuevo Producto"
      End
      Begin VB.Menu mnuModiProd 
         Caption         =   "Modificar Producto"
      End
      Begin VB.Menu mnuBajaProd 
         Caption         =   "Baja Producto"
      End
      Begin VB.Menu mnuSpace1 
         Caption         =   "-"
      End
      Begin VB.Menu mnuAbrir 
         Caption         =   "Abrir Archivo de Productos"
      End
   End
   Begin VB.Menu mnuSalir 
      Caption         =   "Salir"
   End
End
Attribute VB_Name = "frm1eva3trim"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
'Evaluación:
'Una aplicación, deberá permitir hacer ABM de productos, donde lo que se almacena es: Nombre, Precio, y Fecha de
'vencimiento.
'El Nombre no debe superar los 10 caracteres, y el Precio los dos decimales, por lo que esos datos deben ser validados por
'la aplicación. En todo momento, se debereá mostrar en una lista el contenido del archivo ordanado por Precio en forma
'descendente. Un botón deberá levantar una fecha ingresada por el usuario y dar de baja a los productos vencidos. Serán
'aquellos donde la fecha de vencimiento es estrictamente menor a la ingresada.
'Poner dartos del alumno y enunciado al principio del código.
'Poner titulo en la solapa del o de los Forms.
'Guardar como 1eva3trim en carpeta homónima en el raíz de la cuenta del alumno.
'Usar el objeto App.
'_________________________________________
'Alumno: Vileriño , 4to2da

Private Type Producto 'tipo declarado por usuario
    Nombre As String * 10
    Precio As Single
    F_Venc As String * 10
End Type

Private Function ValetxtFecha(ByVal dia As String, mes As String) As Boolean ' funcion que valida que las fechas esten dentro del rango
Dim bdia As Boolean, bmes As Boolean
bdia = (Val(dia) > 0 And Val(dia) < 32)
bmes = (Val(mes) > 0 And Val(mes) < 13)
ValetxtFecha = (bdia And bmes)
End Function

Private Sub cmdControlVenc_Click() 'controla vencimiento y da Bajas
Dim x As Integer, F_ing As String
Dim Producto As Producto
Dim cont As Integer: cont = 1

If Not (ValetxtFecha(txtFecha(0).Text, txtFecha(1).Text)) Then
    MsgBox "Fecha Invalida"
    For x = 0 To 1
        txtFecha(x).Text = ""
    Next x
    txtFecha(0).SetFocus
Else
    F_ing = txtFecha(0).Text & "\" & txtFecha(1).Text & "\" & txtFecha(2).Text
End If

'Open App.Path & "\Productos.dat" For Random As #1 Len = Len(Producto)
'Open App.Path & "\ProductosTmp.dat" For Random As #2 Len = Len(Producto)
'For x = 0 To lstVer.ListCount - 1
'    Get #1, x + 1, Producto
'    With Producto
'        If (.F_Venc > F_ing) Then  =====>>> falta validacion y criterio de fecha menor :(
'            Put #2, cont, Producto
'            cont = cont + 1
'        End If
'    End With
'Next x
'Close #1, #2
'Kill App.Path & "\Productos.dat"
'Name App.Path & "\ProductosTmp.dat" As App.Path & "\Productos.dat"
'Lista 'actualiza datos

End Sub

Private Sub Form_Load() 'Muestra el archivo ordenado al abrir
Lista
End Sub

Private Sub Form_Unload(Cancel As Integer)
End
End Sub

Private Sub mnuAbrir_Click() 'abre el archivo ordenado
Lista
End Sub
Private Sub Orden() 'ordena de mayor a menor
Dim x As Integer, k As Integer, Producto As Producto, prdAux As Producto
Open App.Path & "\Productos.dat" For Random As #1 Len = Len(Producto)
For x = 1 To LOF(1) / Len(Producto) - 1
    Get #1, x, Producto
    For k = x + 1 To LOF(1) / Len(Producto)
        Get #1, k, prdAux
        If (Producto.Precio < prdAux.Precio) Then
            Put #1, k, Producto
            Put #1, x, prdAux
            Producto = prdAux
        End If
    Next k
Next x
Close #1
End Sub
Private Sub Lista() ' ordena y muestra en lista el archivo
Orden
lstVer.Clear
Dim Producto As Producto
Dim posi As Integer: posi = 1
Open App.Path & "\Productos.dat" For Random As #1 Len = Len(Producto)
Get #1, posi, Producto
Do While Not (EOF(1)): DoEvents
    lstVer.AddItem "Producto: " & Producto.Nombre & "  Precio" & Str(Producto.Precio) & "  Fecha Venc: " & Producto.F_Venc
    posi = posi + 1
    Get #1, posi, Producto
Loop
Close #1
End Sub

Private Sub mnuAlta_Click() 'nueva alta
Dim Producto As Producto
Open App.Path & "\Productos.dat" For Random As #1 Len = Len(Producto)
    frmCargaProd.Show 1
    With Producto 'carga datos del form modal cerrado
        .Nombre = frmCargaProd.txtNombre.Text
        .Precio = Val(frmCargaProd.txtPrecio.Text)
        .F_Venc = frmCargaProd.txtVenc(0).Text & "\" & frmCargaProd.txtVenc(1).Text & "\" & frmCargaProd.txtVenc(2).Text
    End With
    Put #1, LOF(1) / Len(Producto) + 1, Producto
Close #1
Lista 'actualiza datos
End Sub

Private Sub mnuBajaProd_Click() 'da bajas
Dim Producto As Producto
Dim x As Integer, cont As Integer: cont = 1
Open App.Path & "\Productos.dat" For Random As #1 Len = Len(Producto) 'abre dos archivos
Open App.Path & "\ProductosTmp.dat" For Random As #2 Len = Len(Producto)
For x = 0 To lstVer.ListCount - 1
    If (lstVer.Selected(x)) Then
        If (MsgBox("Desea Borrar: " & lstVer.List(x) & "  ?", vbQuestion + vbYesNo, "Baja") = vbNo) Then
            Get #1, x + 1, Producto 'ingresa los que desea conservar al archivo 2
            Put #2, cont, Producto
            cont = cont + 1
        End If
    Else
        Get #1, x + 1, Producto
        Put #2, cont, Producto 'ingresa los deseleccionados al archivo 2
        cont = cont + 1
    End If
Next x
Close #1, #2 'cierra ambos
Kill App.Path & "\Productos.dat" 'mata el original
Name App.Path & "\ProductosTmp.dat" As App.Path & "\Productos.dat" 'renombra el nuevo a original
Lista 'actualiza datos
End Sub

Private Sub mnuModiProd_Click() 'modifica
Dim Producto As Producto
Dim x As Integer
Open App.Path & "\Productos.dat" For Random As #1 Len = Len(Producto)
For x = 0 To lstVer.ListCount - 1
    If (lstVer.Selected(x)) Then
        If (MsgBox("Desea Modificar: " & lstVer.List(x) & "  ?", vbQuestion + vbYesNo, "Modificacion") = vbYes) Then
            Get #1, x + 1, Producto 'carga datos en variable
            frmCargaProd.frmChk.Enabled = True 'activa las opciones de modificacion del form
            frmCargaProd.Label4.Visible = True
            frmCargaProd.Show 1
            With Producto 'carga datos en variable segun checkbox
                If (frmCargaProd.chkModi(0).Value = 1) Then .Nombre = frmCargaProd.txtNombre.Text
                If (frmCargaProd.chkModi(1).Value = 1) Then .Precio = Val(frmCargaProd.txtPrecio.Text)
                If (frmCargaProd.chkModi(2).Value = 1) Then .F_Venc = frmCargaProd.txtVenc(0).Text & "\" & frmCargaProd.txtVenc(1).Text & "\" & frmCargaProd.txtVenc(2).Text
            End With
            frmCargaProd.frmChk.Enabled = False 'desactiva opciones de modificaicon del form
            frmCargaProd.Label4.Visible = False
            Put #1, x + 1, Producto 'carga nuevos datos
        End If
    End If
Next x
Close #1 'cierra
Lista 'actualiza datos
End Sub

Private Sub mnuSalir_Click()
Form_Unload 0
End Sub
