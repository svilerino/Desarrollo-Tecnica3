VERSION 5.00
Begin VB.Form frmArchivos 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Productos"
   ClientHeight    =   3795
   ClientLeft      =   45
   ClientTop       =   735
   ClientWidth     =   7575
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Moveable        =   0   'False
   ScaleHeight     =   3795
   ScaleWidth      =   7575
   StartUpPosition =   2  'CenterScreen
   Begin VB.Frame Frame1 
      Caption         =   "Visualizacion"
      Height          =   3735
      Left            =   120
      TabIndex        =   0
      Top             =   0
      Width           =   7335
      Begin VB.TextBox txtVer 
         Appearance      =   0  'Flat
         Height          =   735
         Left            =   120
         Locked          =   -1  'True
         TabIndex        =   2
         Top             =   2880
         Width           =   7095
      End
      Begin VB.ListBox lstVer 
         Height          =   2085
         Left            =   120
         Style           =   1  'Checkbox
         TabIndex        =   1
         Top             =   240
         Width           =   7095
      End
      Begin VB.Label Label1 
         Caption         =   "Info de Producto"
         Height          =   375
         Left            =   120
         TabIndex        =   3
         Top             =   2520
         Width           =   7095
      End
   End
   Begin VB.Menu mnuFile 
      Caption         =   "&Producto"
      Begin VB.Menu mnuNvoProd 
         Caption         =   "Nuevo Producto"
      End
      Begin VB.Menu mnuModiProd 
         Caption         =   "Modificar Producto"
      End
      Begin VB.Menu mnuBaja 
         Caption         =   "Dar de Baja Producto"
      End
   End
   Begin VB.Menu mnuApp 
      Caption         =   "A&plicacion"
      Begin VB.Menu mnuMinimizar 
         Caption         =   "Minimizar"
      End
      Begin VB.Menu mnuSalir 
         Caption         =   "Salir"
      End
   End
   Begin VB.Menu mnuVer 
      Caption         =   "Visualizar Archivo (Crea si no Existe)"
   End
   Begin VB.Menu mnuClientes 
      Caption         =   "Clientes"
   End
End
Attribute VB_Name = "frmArchivos"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub lstVer_Click()
txtVer.Text = lstVer.List(lstVer.ListIndex)
End Sub

Private Sub mnuBaja_Click()
Dim variable As Producto, cont As Integer: cont = 1
Open App.Path & "\Productos.dat" For Random As #1 Len = Len(variable)
Open App.Path & "\Temporal.dat" For Random As #2 Len = Len(variable)
Dim x As Integer
For x = 0 To lstVer.ListCount - 1
    If (lstVer.Selected(x)) Then
        If (MsgBox("Desea Dar de Baja: " & lstVer.List(x) & "?", vbQuestion + vbYesNo, "Baja") = vbNo) Then
            Get #1, x + 1, variable
            Put #2, cont, variable
            cont = cont + 1
        End If
    Else
        Get #1, x + 1, variable
        Put #2, cont, variable
        cont = cont + 1
    End If
Next x
Close #1, #2
Kill App.Path & "\Productos.dat"
Name App.Path & "\Temporal.dat" As App.Path & "\Productos.dat"
Lista
End Sub

Private Sub mnuClientes_Click()
frmClientes.Show
End Sub

Private Sub mnuModiProd_Click()
Dim Producto As Producto
Dim x As Integer
Open App.Path & "\Productos.dat" For Random As #1 Len = Len(Producto)
For x = 0 To lstVer.ListCount - 1
    If (lstVer.Selected(x)) Then
        If (MsgBox("Desea Modificar el Registro: " & lstVer.List(x) & "?", vbYesNo + vbQuestion, "Modificacion") = vbYes) Then
            Get #1, x + 1, Producto
            frmCarga.frmChk.Enabled = True
            frmCarga.Label1.Visible = True
            frmCarga.Show 1
            With Producto
                If (frmCarga.chkProducto.Value = 1) Then .Nombre = frmCarga.txtProducto.Text
                If (frmCarga.chkPrecio.Value = 1) Then .Precio = Val(frmCarga.txtPrecio.Text)
                If (frmCarga.chkCantidad.Value = 1) Then .Cantidad = Val(frmCarga.txtCantidad.Text)
            End With
            frmCarga.frmChk.Enabled = False
            frmCarga.Label1.Visible = False
            Put #1, x + 1, Producto
        End If
    End If
Next x
Close #1
Lista
End Sub

Private Sub mnuNvoProd_Click()
Dim Producto As Producto
Open App.Path & "\Productos.dat" For Random As #1 Len = Len(Producto)
If (MsgBox("Desea Ingresar un Nuevo Producto?", vbYesNo + vbQuestion, "Alta") = vbYes) Then
    frmCarga.Show 1
    With Producto
        .Nombre = frmCarga.txtProducto.Text
        .Precio = Val(frmCarga.txtPrecio.Text)
        .Cantidad = Val(frmCarga.txtCantidad.Text)
    End With
    Put #1, LOF(1) / Len(Producto) + 1, Producto
End If
Close #1
Lista
End Sub

Private Sub Lista()
lstVer.Clear
Dim x As Integer
Dim registro As Producto
x = 1
Open App.Path & "\Productos.dat" For Random As #1 Len = Len(registro)
Get #1, x, registro
Do While Not (EOF(1)): DoEvents
    lstVer.AddItem "Producto: " & registro.Nombre & " Precio:" & Str(registro.Precio) & " Cantidad:" & Str(registro.Cantidad)
    x = x + 1
    Get #1, x, registro
Loop
Close #1
End Sub

Private Sub mnuVer_Click()
Lista
End Sub
