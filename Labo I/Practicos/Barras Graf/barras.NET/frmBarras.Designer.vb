<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> Partial Class frmBarras
#Region "Código generado por el Diseñador de Windows Forms "
	<System.Diagnostics.DebuggerNonUserCode()> Public Sub New()
		MyBase.New()
		'Llamada necesaria para el Diseñador de Windows Forms.
		InitializeComponent()
	End Sub
	'Form invalida a Dispose para limpiar la lista de componentes.
	<System.Diagnostics.DebuggerNonUserCode()> Protected Overloads Overrides Sub Dispose(ByVal Disposing As Boolean)
		If Disposing Then
			If Not components Is Nothing Then
				components.Dispose()
			End If
		End If
		MyBase.Dispose(Disposing)
	End Sub
	'Requerido por el Diseñador de Windows Forms
	Private components As System.ComponentModel.IContainer
	Public ToolTip1 As System.Windows.Forms.ToolTip
	Public WithEvents cmdGraf As System.Windows.Forms.Button
	Public WithEvents Frame1 As System.Windows.Forms.GroupBox
	Public WithEvents pic As System.Windows.Forms.PictureBox
	'NOTA: el Diseñador de Windows Forms necesita el siguiente procedimiento
	'Se puede modificar mediante el Diseñador de Windows Forms.
	'No lo modifique con el editor de código.
	<System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()
		Dim resources As System.Resources.ResourceManager = New System.Resources.ResourceManager(GetType(frmBarras))
		Me.components = New System.ComponentModel.Container()
		Me.ToolTip1 = New System.Windows.Forms.ToolTip(components)
		Me.Frame1 = New System.Windows.Forms.GroupBox
		Me.cmdGraf = New System.Windows.Forms.Button
		Me.pic = New System.Windows.Forms.PictureBox
		Me.Frame1.SuspendLayout()
		Me.SuspendLayout()
		Me.ToolTip1.Active = True
		Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog
		Me.Text = "Barras"
		Me.ClientSize = New System.Drawing.Size(483, 420)
		Me.Location = New System.Drawing.Point(3, 29)
		Me.MaximizeBox = False
		Me.MinimizeBox = False
		Me.ShowInTaskbar = False
		Me.StartPosition = System.Windows.Forms.FormStartPosition.WindowsDefaultLocation
		Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
		Me.BackColor = System.Drawing.SystemColors.Control
		Me.ControlBox = True
		Me.Enabled = True
		Me.KeyPreview = False
		Me.Cursor = System.Windows.Forms.Cursors.Default
		Me.RightToLeft = System.Windows.Forms.RightToLeft.No
		Me.HelpButton = False
		Me.WindowState = System.Windows.Forms.FormWindowState.Normal
		Me.Name = "frmBarras"
		Me.Frame1.Text = "Controles"
		Me.Frame1.Size = New System.Drawing.Size(465, 81)
		Me.Frame1.Location = New System.Drawing.Point(8, 328)
		Me.Frame1.TabIndex = 1
		Me.Frame1.BackColor = System.Drawing.SystemColors.Control
		Me.Frame1.Enabled = True
		Me.Frame1.ForeColor = System.Drawing.SystemColors.ControlText
		Me.Frame1.RightToLeft = System.Windows.Forms.RightToLeft.No
		Me.Frame1.Visible = True
		Me.Frame1.Padding = New System.Windows.Forms.Padding(0)
		Me.Frame1.Name = "Frame1"
		Me.cmdGraf.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
		Me.cmdGraf.Text = "Graficar"
		Me.cmdGraf.Size = New System.Drawing.Size(145, 25)
		Me.cmdGraf.Location = New System.Drawing.Point(8, 16)
		Me.cmdGraf.TabIndex = 2
		Me.cmdGraf.BackColor = System.Drawing.SystemColors.Control
		Me.cmdGraf.CausesValidation = True
		Me.cmdGraf.Enabled = True
		Me.cmdGraf.ForeColor = System.Drawing.SystemColors.ControlText
		Me.cmdGraf.Cursor = System.Windows.Forms.Cursors.Default
		Me.cmdGraf.RightToLeft = System.Windows.Forms.RightToLeft.No
		Me.cmdGraf.TabStop = True
		Me.cmdGraf.Name = "cmdGraf"
		Me.pic.Size = New System.Drawing.Size(465, 305)
		Me.pic.Location = New System.Drawing.Point(8, 8)
		Me.pic.TabIndex = 0
		Me.pic.Dock = System.Windows.Forms.DockStyle.None
		Me.pic.BackColor = System.Drawing.SystemColors.Control
		Me.pic.CausesValidation = True
		Me.pic.Enabled = True
		Me.pic.ForeColor = System.Drawing.SystemColors.ControlText
		Me.pic.Cursor = System.Windows.Forms.Cursors.Default
		Me.pic.RightToLeft = System.Windows.Forms.RightToLeft.No
		Me.pic.TabStop = True
		Me.pic.Visible = True
		Me.pic.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Normal
		Me.pic.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D
		Me.pic.Name = "pic"
		Me.Controls.Add(Frame1)
		Me.Controls.Add(pic)
		Me.Frame1.Controls.Add(cmdGraf)
		Me.Frame1.ResumeLayout(False)
		Me.ResumeLayout(False)
		Me.PerformLayout()
	End Sub
#End Region 
End Class