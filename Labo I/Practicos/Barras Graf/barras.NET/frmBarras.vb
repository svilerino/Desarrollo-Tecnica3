Option Strict Off
Option Explicit On
Imports VB = Microsoft.VisualBasic
Friend Class frmBarras
	Inherits System.Windows.Forms.Form
	
	Private Sub cmdGraf_Click(ByVal eventSender As System.Object, ByVal eventArgs As System.EventArgs) Handles cmdGraf.Click
		graficar()
	End Sub
	
	Private Sub frmBarras_Load(ByVal eventSender As System.Object, ByVal eventArgs As System.EventArgs) Handles MyBase.Load
		Randomize(VB.Timer())
	End Sub
	
	Private Sub ejes()
		Dim x2, x, y, y2 As Single
		
		x = 0 : y = (pic.ClientRectangle.Height / 2)
		x2 = pic.ClientRectangle.Width : y2 = (pic.ClientRectangle.Height / 2)
		'UPGRADE_ISSUE: PictureBox método pic.Line no se actualizó. Haga clic aquí para obtener más información: 'ms-help://MS.VSCC.v90/dv_commoner/local/redirect.htm?keyword="CC4C7EC0-C903-48FC-ACCC-81861D12DA4A"'
		pic.Line (x, y) - (x2, y2), System.Drawing.ColorTranslator.ToOle(System.Drawing.Color.Blue)
		
		x = (pic.ClientRectangle.Width / 2) : y = 0
		x2 = (pic.ClientRectangle.Width / 2) : y2 = (pic.ClientRectangle.Height)
		'UPGRADE_ISSUE: PictureBox método pic.Line no se actualizó. Haga clic aquí para obtener más información: 'ms-help://MS.VSCC.v90/dv_commoner/local/redirect.htm?keyword="CC4C7EC0-C903-48FC-ACCC-81861D12DA4A"'
		pic.Line (x, y) - (x2, y2), System.Drawing.ColorTranslator.ToOle(System.Drawing.Color.Blue)
		
	End Sub
	
	Private Sub barras(ByRef vec() As Byte)
		
	End Sub
	Private Sub numazar(ByRef vec() As Byte)
		Dim x As Byte
		For x = 0 To 4
			vec(x) = Fix(Rnd() * 50) + 1
		Next x
	End Sub
	
	Private Sub graficar()
		Dim vec(4) As Byte
		numazar(vec)
		'UPGRADE_ISSUE: PictureBox método pic.Cls no se actualizó. Haga clic aquí para obtener más información: 'ms-help://MS.VSCC.v90/dv_commoner/local/redirect.htm?keyword="CC4C7EC0-C903-48FC-ACCC-81861D12DA4A"'
		pic.Cls()
		ejes()
		barras(vec)
	End Sub
End Class