Attribute VB_Name = "Clase1"
Option Explicit

Public Type Producto
    Nombre As String * 15
    Precio As Single
    Stock As Integer
    Codigo As Integer
    Estado As Boolean
End Type
Public Type ItemCarrito
    Producto As Producto
    Cantidad As Integer
End Type

Public Type ticket
    item As ItemCarrito
    Numero As Integer
End Type
Sub Main()
frmInit.Show 1
mdiMenu.Show
End Sub

Public Sub ListaStock()
mdiMenu.mnuExistenteAltaStock.Enabled = False
frmStock.Caption = "Stock"
frmStock.lstStock.Clear
Dim x As Integer
Dim Producto As Producto
x = 1
Open App.Path & "\Stock.dat" For Random As #1 Len = Len(Producto)
    Get #1, x, Producto
    Do While Not (EOF(1)): DoEvents
        frmStock.lstStock.AddItem Producto.Nombre & "Codigo:" & Str(Producto.Codigo) & " Precio:" & Str(Producto.Precio) & " Stock:" & Str(Producto.Stock) & "  Activo: " & Producto.Estado
        x = x + 1
        Get #1, x, Producto
    Loop
Close #1
End Sub
Public Sub ListaStockVentas()
frmVentas.lstVentas.Clear
Dim x As Integer
Dim Producto As Producto
x = 1
Open App.Path & "\Stock.dat" For Random As #1 Len = Len(Producto)
    Get #1, x, Producto
    Do While Not (EOF(1)): DoEvents
        frmVentas.lstVentas.AddItem Producto.Nombre & "Codigo:" & Str(Producto.Codigo) & " Precio:" & Str(Producto.Precio) & " Stock:" & Str(Producto.Stock) & "  Activo: " & Producto.Estado
        x = x + 1
        Get #1, x, Producto
    Loop
Close #1
End Sub

Public Sub ListaBajas()
mdiMenu.mnuExistenteAltaStock.Enabled = True
frmStock.Caption = "Historico Bajas"
frmStock.lstStock.Clear
Dim x As Integer
Dim Producto As Producto
x = 1
Open App.Path & "\Historico_bajas.dat" For Random As #2 Len = Len(Producto)
    Get #2, x, Producto
    Do While Not (EOF(2)): DoEvents
        frmStock.lstStock.AddItem Producto.Nombre & "Codigo:" & Str(Producto.Codigo) & " Precio:" & Str(Producto.Precio) & " Stock:" & Str(Producto.Stock) & "  Activo: " & Producto.Estado
        x = x + 1
        Get #2, x, Producto
    Loop
Close #2

End Sub

Public Sub Ordenar(ByVal Campo As Integer, ByVal Archivo As String)
Dim Producto As Producto, auxiliar As Producto
Dim n As Integer, k As Integer, varCampos As Variant, varAuxi As Variant
Open Archivo For Random As #1 Len = Len(Producto)
For n = 1 To LOF(1) / Len(Producto) - 1
    Get #1, n, Producto
    For k = n + 1 To LOF(1) / Len(Producto)
        Get #1, k, auxiliar
        Select Case Campo
            Case Is = 2
                varCampos = Producto.Nombre
                varAuxi = auxiliar.Nombre
            Case Is = 3
                varCampos = Producto.Precio
                varAuxi = auxiliar.Precio
            Case Is = 4
                varCampos = Producto.Stock
                varAuxi = auxiliar.Stock
            Case Is = 1
                varCampos = Producto.Codigo
                varAuxi = auxiliar.Codigo
            Case Is = 5
                varCampos = Producto.Estado
                varAuxi = auxiliar.Estado
            End Select
         If (mdiMenu.mnuDesc.Checked) Then
            If (varCampos < varAuxi) Then
                Put #1, k, Producto
                Put #1, n, auxiliar
                Producto = auxiliar
            End If
         Else
             If (varCampos > varAuxi) Then
                 Put #1, k, Producto
                 Put #1, n, auxiliar
                 Producto = auxiliar
             End If
         End If
    Next k
Next n
Close #1
End Sub

Public Sub Listados(ByVal Archivo As String)
frmListados.Show
frmListados.Caption = "Listados - " & "Viendo: " & Archivo
frmListados.lstListados.Clear
Dim x As Integer, total As Single
Dim ticket As ticket
Open Archivo For Random As #1 Len = Len(ticket)
    For x = 1 To LOF(1) / Len(ticket)
        Get #1, x, ticket
        With ticket.item.Producto
            frmListados.lstListados.AddItem .Nombre & "  " & .Precio & " * " & ticket.item.Cantidad & "  Subtotal: " & Str(.Precio * ticket.item.Cantidad) & " Num Ticket: " & Str(ticket.Numero)
            total = total + .Precio * ticket.item.Cantidad
        End With
    Next x
    frmListados.lstListados.AddItem "Total Ventas: " & Str(total)
Close #1
End Sub

Public Sub VolcarTotales()
Dim item As ItemCarrito
Dim x As Integer
Open App.Path & "\Ventas_diarias.dat" For Random As #1 Len = Len(item)
Open App.Path & "\Ventas_totales.dat" For Random As #2 Len = Len(item)
For x = 1 To LOF(1) / Len(item)
    Get #1, x, item
    Put #2, LOF(2) / Len(item) + 1, item
Next x
Close #1, #2
MsgBox "Ventas Diarias, sito en: " & App.Path & "\Ventas_Diarias.dat" & "fue Volcado en: Ventas totales,sito en: " & App.Path & "\Ventas_totales.dat"
End Sub
Public Sub OrdenarListados(ByVal Archivo As String)
Dim item As ticket, auxiliar As ticket
Dim n As Integer, k As Integer, varCampos As Variant, varAuxi As Variant
Open Archivo For Random As #1 Len = Len(item)
For n = 1 To LOF(1) / Len(item) - 1
    Get #1, n, item
    For k = n + 1 To LOF(1) / Len(item)
        Get #1, k, auxiliar
        
            
                varCampos = item.item.Producto.Nombre
                varAuxi = auxiliar.item.Producto.Nombre
            
         If (mdiMenu.mnuDesc.Checked) Then
            If (varCampos < varAuxi) Then
                Put #1, k, item
                Put #1, n, auxiliar
                item = auxiliar
            End If
         Else
             If (varCampos > varAuxi) Then
                 Put #1, k, item
                 Put #1, n, auxiliar
                 item = auxiliar
             End If
         End If
    Next k
Next n
Close #1
End Sub

Public Sub ListadosDiarios()
Listados App.Path & "\Ventas_diarias.dat"
End Sub
