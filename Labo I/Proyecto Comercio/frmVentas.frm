VERSION 5.00
Begin VB.Form frmVentas 
   BackColor       =   &H00404040&
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Ventas"
   ClientHeight    =   9915
   ClientLeft      =   8565
   ClientTop       =   4110
   ClientWidth     =   10410
   Icon            =   "frmVentas.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   9915
   ScaleWidth      =   10410
   ShowInTaskbar   =   0   'False
   Begin VB.TextBox txtNTicket 
      Height          =   285
      Left            =   6600
      Locked          =   -1  'True
      TabIndex        =   20
      Top             =   7920
      Width           =   3255
   End
   Begin VB.CommandButton cmdMod 
      Caption         =   "Editar Stock"
      Height          =   735
      Left            =   960
      Picture         =   "frmVentas.frx":0442
      Style           =   1  'Graphical
      TabIndex        =   18
      Top             =   8880
      Width           =   2415
   End
   Begin VB.CommandButton cmdBack 
      Caption         =   "Volver Atras"
      Height          =   735
      Left            =   4320
      Picture         =   "frmVentas.frx":0B84
      Style           =   1  'Graphical
      TabIndex        =   17
      Top             =   8880
      Width           =   2415
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Quitar de Carrito"
      Height          =   855
      Left            =   4680
      Picture         =   "frmVentas.frx":0FC6
      Style           =   1  'Graphical
      TabIndex        =   15
      Top             =   6480
      Width           =   975
   End
   Begin VB.TextBox txtTotalV 
      Alignment       =   1  'Right Justify
      BackColor       =   &H008080FF&
      Height          =   285
      Left            =   6600
      Locked          =   -1  'True
      TabIndex        =   14
      Text            =   "0"
      Top             =   7560
      Width           =   3255
   End
   Begin VB.Frame frmControles 
      BackColor       =   &H00404040&
      Caption         =   "Controles"
      ForeColor       =   &H00FFFFFF&
      Height          =   1455
      Left            =   120
      TabIndex        =   10
      Top             =   8400
      Width           =   10215
      Begin VB.CommandButton cmdOK 
         Caption         =   "Confirmar Compra"
         Height          =   735
         Left            =   6960
         Picture         =   "frmVentas.frx":1408
         Style           =   1  'Graphical
         TabIndex        =   16
         Top             =   480
         Width           =   2415
      End
   End
   Begin VB.TextBox txtCantidad 
      Alignment       =   2  'Center
      Height          =   375
      Left            =   4920
      TabIndex        =   9
      Text            =   "1"
      Top             =   2520
      Width           =   375
   End
   Begin VB.CommandButton CmdComprar 
      Caption         =   "Agregar a Carrito"
      Height          =   855
      Left            =   4680
      Picture         =   "frmVentas.frx":184A
      Style           =   1  'Graphical
      TabIndex        =   7
      Top             =   1200
      Width           =   975
   End
   Begin VB.TextBox txtStock 
      BackColor       =   &H00C0C0C0&
      Height          =   405
      Left            =   4080
      Locked          =   -1  'True
      TabIndex        =   6
      Top             =   7800
      Width           =   495
   End
   Begin VB.TextBox txtProductoSel 
      BackColor       =   &H00C0C0C0&
      Height          =   405
      Left            =   240
      Locked          =   -1  'True
      TabIndex        =   4
      Top             =   7800
      Width           =   3735
   End
   Begin VB.TextBox txtBusqueda2 
      BackColor       =   &H00404040&
      Height          =   495
      Left            =   5880
      TabIndex        =   3
      Top             =   360
      Width           =   4335
   End
   Begin VB.ListBox lstCarrito 
      BackColor       =   &H00800000&
      BeginProperty Font 
         Name            =   "Terminal"
         Size            =   9
         Charset         =   255
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0080FF80&
      Height          =   6360
      Left            =   5880
      TabIndex        =   2
      Top             =   1080
      Width           =   4335
   End
   Begin VB.TextBox txtBusqueda1 
      BackColor       =   &H00404040&
      Height          =   495
      Left            =   120
      TabIndex        =   1
      Top             =   360
      Width           =   4335
   End
   Begin VB.ListBox lstVentas 
      BackColor       =   &H00800000&
      BeginProperty Font 
         Name            =   "Terminal"
         Size            =   9
         Charset         =   255
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00E0E0E0&
      Height          =   6360
      Left            =   120
      TabIndex        =   0
      Top             =   1080
      Width           =   4335
   End
   Begin VB.Label Label6 
      BackColor       =   &H00404040&
      Caption         =   "Nº Ticket"
      ForeColor       =   &H00FFFF00&
      Height          =   375
      Left            =   5880
      TabIndex        =   19
      Top             =   7920
      Width           =   735
   End
   Begin VB.Label Label5 
      BackColor       =   &H00404040&
      Caption         =   "$.-"
      ForeColor       =   &H00FFFF00&
      Height          =   255
      Left            =   9960
      TabIndex        =   13
      Top             =   7560
      Width           =   375
   End
   Begin VB.Label Label4 
      BackColor       =   &H00404040&
      Caption         =   "Ingrese Busqueda"
      ForeColor       =   &H00FFFF00&
      Height          =   255
      Left            =   5880
      TabIndex        =   12
      Top             =   120
      Width           =   4455
   End
   Begin VB.Label Label3 
      BackColor       =   &H00404040&
      Caption         =   "Filtrar Productos"
      ForeColor       =   &H00FFFF00&
      Height          =   255
      Left            =   120
      TabIndex        =   11
      Top             =   120
      Width           =   4455
   End
   Begin VB.Label Label2 
      BackColor       =   &H00C0C0C0&
      Caption         =   "Cantidad"
      Height          =   255
      Left            =   4800
      TabIndex        =   8
      Top             =   2160
      Width           =   735
   End
   Begin VB.Label Label1 
      BackColor       =   &H00404040&
      Caption         =   "Total :"
      ForeColor       =   &H00FFFF00&
      Height          =   375
      Left            =   5880
      TabIndex        =   5
      Top             =   7560
      Width           =   615
   End
End
Attribute VB_Name = "frmVentas"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub cmdBack_Click()
Form_Unload 0
End Sub

Private Sub CmdComprar_Click()
If lstVentas.ListIndex = -1 Then
    MsgBox "Seleccione un Producto"
    Exit Sub
End If

Dim Producto As Producto, item As ItemCarrito
Open App.Path & "\Stock.dat" For Random As #1 Len = Len(Producto)
Open App.Path & "\Carrito.tmp" For Random As #2 Len = Len(item)
    Get #1, lstVentas.ListIndex + 1, Producto
    If (Producto.Stock < Val(txtCantidad.Text) Or Producto.Estado = False) Then
        MsgBox " No Disponemos de Stock Para Cubrir Su pedido, o el producto no se encuentra Disponible, por favor verifique el Stock."
    Else
        Producto.Stock = Producto.Stock - Val(txtCantidad.Text)
        item.Producto = Producto
        item.Cantidad = Val(txtCantidad.Text)
        Put #2, LOF(2) / Len(item) + 1, item
        Put #1, lstVentas.ListIndex + 1, Producto
        lstCarrito.AddItem Producto.Nombre & "  " & Str(Producto.Precio) & "  x" & txtCantidad.Text & "  Subtotal: " & Str(Producto.Precio * item.Cantidad)
        txtTotalV.Text = Str(Val(txtTotalV.Text) + Val(Trim(Str(Producto.Precio))) * item.Cantidad)
    End If
Close #1, #2
Limpiar
ListaStockVentas
End Sub
Private Sub Limpiar()
txtBusqueda1.Text = ""
txtBusqueda2.Text = ""
txtCantidad.Text = "1"
End Sub

Private Sub cmdMod_Click()
frmStock.Show
frmStock.SetFocus
frmStock.WindowState = 2
ListaStock
End Sub

Private Sub cmdOK_Click()
Dim item As ItemCarrito, ticket As ticket
Dim x As Integer
Open App.Path & "\Carrito.tmp" For Random As #1 Len = Len(item)
Open App.Path & "\Ventas_diarias.dat" For Random As #2 Len = Len(ticket)
Open App.Path & "\Ventas_totales.dat" For Random As #3 Len = Len(ticket)
For x = 1 To LOF(1) / Len(item)
    Get #1, x, item
    ticket.item = item
    ticket.Numero = Val(txtNTicket.Text)
    Put #2, LOF(2) / Len(ticket) + 1, ticket
Next x
Close #1, #2, #3
Limpiar
txtTotalV.Text = ""
lstCarrito.Clear
ListaStockVentas
MsgBox "Ticket Añadido al final de Ventas diarias,sito en: " & App.Path & "\Ventas_diarias.dat"

Dim ticket1 As Integer
Open App.Path & "\carrito.tmp" For Random As #1 Len = Len(item)
Close #1
Kill App.Path & "\carrito.tmp"

Open App.Path & "\Ticket.dat" For Random As #1 Len = Len(ticket1)
    ticket1 = Val(txtNTicket.Text)
    Put #1, 1, ticket1
Close #1
Form_Load
End Sub

Private Sub Command1_Click()
Dim x As Integer, n As Integer: n = 1
Dim Producto As Producto, item As ItemCarrito
Open App.Path & "\Stock.dat" For Random As #1 Len = Len(Producto)
Open App.Path & "\Carrito.tmp" For Random As #2 Len = Len(item)
Open App.Path & "\Carrito.tmpo" For Random As #3 Len = Len(item)
        For x = 0 To lstCarrito.ListCount - 1
            If (x <> lstCarrito.ListIndex) Then
                Get #2, x + 1, item
                Put #3, n, item
                n = n + 1
            Else
                Get #2, x + 1, item
                Get #1, item.Producto.Codigo, Producto
                txtTotalV.Text = Str(Val(txtTotalV.Text) - Val(Trim(Str(Producto.Precio))) * item.Cantidad)
                Producto.Stock = Producto.Stock + item.Cantidad
                Put #1, item.Producto.Codigo, Producto
            End If
        Next x
        
Close #1, #2, #3
Kill App.Path & "\Carrito.tmp"
Name App.Path & "\Carrito.tmpo" As App.Path & "\Carrito.tmp"

txtCantidad.Text = "1"
ListaStockVentas
If Not (lstCarrito.ListIndex < 0) Then
    lstCarrito.RemoveItem (lstCarrito.ListIndex)
End If
Limpiar
End Sub

Private Sub Form_Load()
Dim ticket As Integer
Ordenar 1, App.Path & "\Stock.dat"
ListaStockVentas
Open App.Path & "\Ticket.dat" For Random As #1 Len = Len(ticket)
    Get #1, 1, ticket
    txtNTicket.Text = Str(Val(Trim(Str(ticket))) + 1)
Close #1
End Sub

Private Sub Form_Unload(Cancel As Integer)
Dim item As ItemCarrito, ticket As Integer
Open App.Path & "\carrito.tmp" For Random As #1 Len = Len(item)
Close #1
Kill App.Path & "\carrito.tmp"

Open App.Path & "\Ticket.dat" For Random As #1 Len = Len(ticket)
    ticket = Val(txtNTicket.Text)
    Put #1, 1, ticket
Close #1

Me.Hide
End Sub

Private Sub lstCarrito_KeyDown(KeyCode As Integer, Shift As Integer)
If KeyCode = vbKeyReturn Then txtBusqueda2.SetFocus
End Sub

Private Sub lstVentas_Click()
If (lstVentas.ListIndex > 0) Then
Dim Producto As Producto
Open App.Path & "\Stock.dat" For Random As #1 Len = Len(Producto)
    Get #1, lstVentas.ListIndex + 1, Producto
    txtProductoSel.Text = Producto.Codigo & "  " & Producto.Nombre
    txtStock.Text = Producto.Stock
Close #1
End If
End Sub

Private Sub lstVentas_KeyDown(KeyCode As Integer, Shift As Integer)
Select Case KeyCode
Case Is = vbKeyReturn
    txtBusqueda1.SetFocus
Case Is = vbKeySpace
    If (lstVentas.ListIndex < 0) Then lstVentas.ListIndex = 0
    CmdComprar_Click
End Select
End Sub

Private Sub txtBusqueda1_Change()
frmVentas.lstVentas.Clear
Dim x As Integer, boolsi As Boolean
Dim Producto As Producto
x = 1
Open App.Path & "\Stock.dat" For Random As #1 Len = Len(Producto)
    Get #1, x, Producto
    Do While Not (EOF(1)): DoEvents
        If LCase((Left(Producto.Nombre & "Codigo:" & Str(Producto.Codigo) & " Precio:" & Str(Producto.Precio) & " Stock:" & Str(Producto.Stock) & "  Activo: " & Producto.Estado, Len(txtBusqueda1.Text)))) = LCase(txtBusqueda1.Text) Then
            frmVentas.lstVentas.AddItem Producto.Nombre & "Codigo:" & Str(Producto.Codigo) & " Precio:" & Str(Producto.Precio) & " Stock:" & Str(Producto.Stock) & "  Activo: " & Producto.Estado
            boolsi = True
        End If
        x = x + 1
        Get #1, x, Producto
    Loop
Close #1


If Not (boolsi) Then
    lstVentas.ListIndex = -1
    txtBusqueda1.BackColor = vbRed
    txtBusqueda1.FontBold = True
Else
    txtBusqueda1.BackColor = vbGreen
    txtBusqueda1.FontBold = True
End If
If Len(txtBusqueda1.Text) = 0 Then
    txtBusqueda1.BackColor = &H404040
    txtBusqueda1.FontBold = False
End If
End Sub

Private Sub txtBusqueda1_KeyDown(KeyCode As Integer, Shift As Integer)
If KeyCode = vbKeyReturn Then lstVentas.SetFocus
End Sub

Private Sub txtBusqueda2_Change()
If (lstCarrito.ListCount > 0) Then
Dim n As Integer, boolsi As Boolean
n = 0
boolsi = False
Do: DoEvents
    lstCarrito.ListIndex = n
    If LCase((Left(lstCarrito.Text, Len(txtBusqueda2.Text)))) = LCase(txtBusqueda2.Text) Then
        boolsi = True
    End If
    n = n + 1
Loop While Not (n = lstCarrito.ListCount Or boolsi)

If Not (boolsi) Then
    lstCarrito.ListIndex = -1
    txtBusqueda2.BackColor = vbRed
    txtBusqueda2.FontBold = True
Else
    txtBusqueda2.BackColor = vbGreen
    txtBusqueda2.FontBold = True
End If
If Len(txtBusqueda2.Text) = 0 Then
    txtBusqueda2.BackColor = &H404040
    txtBusqueda2.FontBold = False
End If
End If
End Sub

Private Sub txtBusqueda2_KeyDown(KeyCode As Integer, Shift As Integer)
If KeyCode = vbKeyReturn Then lstCarrito.SetFocus
End Sub
