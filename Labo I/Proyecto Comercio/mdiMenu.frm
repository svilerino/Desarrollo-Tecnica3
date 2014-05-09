VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.MDIForm mdiMenu 
   BackColor       =   &H00C0C0C0&
   Caption         =   "Sistema de Comercio"
   ClientHeight    =   3120
   ClientLeft      =   165
   ClientTop       =   525
   ClientWidth     =   4680
   Icon            =   "mdiMenu.frx":0000
   LinkTopic       =   "MDIForm1"
   Moveable        =   0   'False
   StartUpPosition =   2  'CenterScreen
   WindowState     =   2  'Maximized
   Begin MSComctlLib.StatusBar StatusBar1 
      Align           =   2  'Align Bottom
      Height          =   255
      Left            =   0
      TabIndex        =   0
      Top             =   2865
      Width           =   4680
      _ExtentX        =   8255
      _ExtentY        =   450
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   1
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
         EndProperty
      EndProperty
   End
   Begin VB.Menu mnuFile 
      Caption         =   "&Archivos"
      Begin VB.Menu mnuStock 
         Caption         =   "Stock"
         Begin VB.Menu mnuAltaStock 
            Caption         =   "Alta"
            Begin VB.Menu mnuAltaStockReal 
               Caption         =   "Real"
            End
            Begin VB.Menu mnuExistenteAltaStock 
               Caption         =   "Existente"
               Enabled         =   0   'False
            End
         End
         Begin VB.Menu mnuBaja 
            Caption         =   "Baja"
         End
         Begin VB.Menu mnuModiStock 
            Caption         =   "Modificacion"
         End
      End
      Begin VB.Menu mnuEspacios 
         Caption         =   "-"
      End
      Begin VB.Menu mnuConsultaBajas 
         Caption         =   "Consulta Historico Bajas"
      End
      Begin VB.Menu mnuStockLista 
         Caption         =   "Consulta Stock"
      End
      Begin VB.Menu Espacio 
         Caption         =   "-"
      End
      Begin VB.Menu mnuOrd 
         Caption         =   "Ordenamiento por :"
         Begin VB.Menu mnuOrden 
            Caption         =   "Codigo"
            Index           =   1
         End
         Begin VB.Menu mnuOrden 
            Caption         =   "Nombre"
            Index           =   2
         End
         Begin VB.Menu mnuOrden 
            Caption         =   "Precio"
            Index           =   3
         End
         Begin VB.Menu mnuOrden 
            Caption         =   "Stock"
            Index           =   4
         End
         Begin VB.Menu mnuOrden 
            Caption         =   "Estado"
            Index           =   5
         End
         Begin VB.Menu mnuEspacio 
            Caption         =   "-"
         End
         Begin VB.Menu mnuDesc 
            Caption         =   "Descendente"
         End
         Begin VB.Menu mnuAsc 
            Caption         =   "Ascendente"
            Checked         =   -1  'True
         End
      End
   End
   Begin VB.Menu mnuVentas 
      Caption         =   "&Ventas"
      Begin VB.Menu mnuNuevaVenta 
         Caption         =   "Nueva Venta"
      End
      Begin VB.Menu mnuListados 
         Caption         =   "Listados"
         Begin VB.Menu mnuVentasG 
            Caption         =   "Ventas Generales"
         End
         Begin VB.Menu mnuVentasDiarias 
            Caption         =   "Ventas Diarias"
         End
      End
      Begin VB.Menu mnuVolcar 
         Caption         =   "Volcar Ventas Diaras a Totales"
      End
   End
   Begin VB.Menu mnuVentana 
      Caption         =   "&Ventanas"
      Begin VB.Menu mnuProd 
         Caption         =   "Ventana de Mercaderia"
      End
      Begin VB.Menu mnuVentas2 
         Caption         =   "Ventana de Ventas"
      End
      Begin VB.Menu mnuSpace1 
         Caption         =   "-"
      End
      Begin VB.Menu mnuCascada 
         Caption         =   "Cascada"
      End
      Begin VB.Menu mnuMosaicoH 
         Caption         =   "Mosaico Horizontal"
      End
      Begin VB.Menu mnuMosaicoV 
         Caption         =   "Mosaico Vertical"
      End
   End
   Begin VB.Menu mnuExit 
      Caption         =   "Salir"
   End
End
Attribute VB_Name = "mdiMenu"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub MDIForm_Load()
Me.Caption = "Sistema de Comercio, Version BETA: " & App.Major & "." & App.Minor & "." & App.Revision
End Sub

Private Sub MDIForm_Unload(Cancel As Integer)
MsgBox "Diseñado y programado en Visual Basic 6.0 por Vileriño Silvio - silvernw@gmail.com, 4to 2da. 2008. Maria Sanchez de thompson. Tecnica nº 3 DE 9, CAP.FED ,BSAS, Argentina"
End
End Sub

Private Sub mnuCascada_Click()
Me.Arrange vbCascade
End Sub

Private Sub mnuDesc_Click()
mnuDesc.Checked = Not (mnuDesc.Checked)
mnuAsc.Checked = Not (mnuAsc.Checked)
End Sub
Private Sub mnuAsc_Click()
mnuDesc.Checked = Not (mnuDesc.Checked)
mnuAsc.Checked = Not (mnuAsc.Checked)
End Sub

Private Sub mnuExistenteAltaStock_Click()
Dim x As Integer, Producto As Producto, cont As Integer: cont = 1
Open App.Path & "\Stock.dat" For Random As #1 Len = Len(Producto)
Open App.Path & "\Historico_bajas.dat" For Random As #2 Len = Len(Producto)
Open App.Path & "\Historico_bajas.tmp" For Random As #3 Len = Len(Producto)

For x = 0 To frmStock.lstStock.ListCount - 1
    If (frmStock.lstStock.Selected(x)) Then
        If (MsgBox("Desea Enviar el Producto " & frmStock.lstStock.List(x) & " Al Stock Activo?", vbQuestion + vbYesNo, "Baja") = vbYes) Then
            Get #2, x + 1, Producto
            Producto.Estado = True
            Put #1, Producto.Codigo, Producto
        Else
            Get #2, x + 1, Producto
            Put #3, cont, Producto
            cont = cont + 1
        End If
    Else
        Get #2, x + 1, Producto
        Put #3, cont, Producto
        cont = cont + 1
    End If
Next x

Close #1, #2, #3

Kill App.Path & "\Historico_bajas.dat"
Name App.Path & "\Historico_bajas.tmp" As App.Path & "\Historico_bajas.dat"
ListaStock
ListaBajas
End Sub

Private Sub mnuAltaStockReal_Click()
Dim Producto As Producto
frmStock.Show
Open App.Path & "\Stock.dat" For Random As #1 Len = Len(Producto)
    With frmCargaProd
        .txtNombre.Text = ""
        .txtPrecio.Text = ""
        .txtStock.Text = ""
        .Show 1
    End With
If frmCargaProd.Cancel = False Then
    With Producto
        .Nombre = frmCargaProd.txtNombre.Text
        .Precio = Val(frmCargaProd.txtPrecio.Text)
        .Stock = Val(frmCargaProd.txtStock.Text)
        .Codigo = LOF(1) / Len(Producto) + 1
        .Estado = True
    End With
    Put #1, LOF(1) / Len(Producto) + 1, Producto
End If
Close #1
ListaStock
End Sub

'baja original , problema, espacios vacios sin codigos de producto.

'Private Sub mnuBaja_Click()
'Dim x As Integer, Producto As Producto, cont As Integer: cont = 1
'Dim cont1 As Integer: cont1 = 1
'Open App.Path & "\Stock.dat" For Random As #1 Len = Len(Producto)
'Open App.Path & "\Stock.tmp" For Random As #2 Len = Len(Producto)
'Open App.Path & "\Historico_bajas.dat" For Random As #3 Len = Len(Producto)
'For x = 0 To frmStock.lstStock.ListCount - 1
'    If (frmStock.lstStock.Selected(x)) Then
'        If (MsgBox("Desea Enviar el Producto " & frmStock.lstStock.List(x) & " Al Historico de Bajas ?", vbQuestion + vbYesNo, "Baja") = vbNo) Then
'            Get #1, x + 1, Producto
'            Put #2, cont, Producto
'            cont = cont + 1
'        Else
'            Get #1, x + 1, Producto
'            Put #3, LOF(3) / Len(Producto) + 1, Producto
'
'        End If
'    Else
'        Get #1, x + 1, Producto
'        Put #2, cont, Producto
'        cont = cont + 1
'    End If
'Next x
'Close #1, #2, #3
'Kill App.Path & "\Stock.dat"
'Name App.Path & "\Stock.tmp" As App.Path & "\Stock.dat"
'ListaStock
'End Sub

'baja nueva. solo Desactiva
Private Sub mnuBaja_Click()
Dim x As Integer, Producto As Producto
Open App.Path & "\Stock.dat" For Random As #1 Len = Len(Producto)
Open App.Path & "\Historico_bajas.dat" For Random As #2 Len = Len(Producto)
For x = 0 To frmStock.lstStock.ListCount - 1
    If (frmStock.lstStock.Selected(x)) Then
        If (MsgBox("Desea Enviar el Producto " & frmStock.lstStock.List(x) & " Al Historico de Bajas ?", vbQuestion + vbYesNo, "Baja") = vbYes) Then
            Get #1, x + 1, Producto
            Producto.Estado = False
            Put #2, LOF(2) / Len(Producto) + 1, Producto
            Put #1, x + 1, Producto
        End If
    End If
Next x
Close #1, #2
ListaStock
End Sub

Private Sub mnuConsultaBajas_Click()
ListaBajas
End Sub

Private Sub mnuExit_Click()
MDIForm_Unload 0
End Sub

Private Sub mnuModiStock_Click()
Dim x As Integer, Producto As Producto
Open App.Path & "\Stock.dat" For Random As #1 Len = Len(Producto)
For x = 0 To frmStock.lstStock.ListCount - 1
    If (frmStock.lstStock.Selected(x)) Then
        If (MsgBox("Desea Modificar el Producto " & frmStock.lstStock.List(x) & " ?", vbQuestion + vbYesNo, "Baja") = vbYes) Then
            Get #1, x + 1, Producto
            With frmCargaProd
                .txtNombre.Text = Trim(Producto.Nombre)
                .txtPrecio.Text = Producto.Precio
                .txtStock.Text = Producto.Stock
                .Show 1
            End With
            If frmCargaProd.Cancel = False Then
                 With Producto
                    .Nombre = frmCargaProd.txtNombre.Text
                    .Precio = Val(frmCargaProd.txtPrecio.Text)
                    .Stock = Val(frmCargaProd.txtStock.Text)
                End With
                Put #1, x + 1, Producto
            End If
        End If
    End If
Next x
Close #1
ListaStock
End Sub

Private Sub mnuMosaicoH_Click()
Me.Arrange vbTileHorizontal
End Sub

Private Sub mnuMosaicoV_Click()
Me.Arrange vbTileVertical
End Sub

Private Sub mnuNuevaVenta_Click()
mnuAsc.Enabled = True
mnuDesc.Enabled = False
Ordenar 1, App.Path & "\Stock.dat"
frmVentas.Show
frmVentas.SetFocus
End Sub

Private Sub mnuOrden_Click(Index As Integer)
Ordenar Index, App.Path & "\Stock.dat"
ListaStock
ListaStockVentas
End Sub

Private Sub mnuProd_Click()
ListaStock
End Sub

Private Sub mnuStockLista_Click()
ListaStock
End Sub

Private Sub mnuVentas2_Click()
frmVentas.Show
frmVentas.SetFocus
End Sub

Private Sub mnuVentasDiarias_Click()
ListadosDiarios
End Sub


Private Sub mnuVentasG_Click()
OrdenarListados App.Path & "\Ventas_totales.dat"
Listados App.Path & "\Ventas_totales.dat"
End Sub

Private Sub mnuVolcar_Click()
VolcarTotales
End Sub
