Attribute VB_Name = "Clase"
Option Explicit
Public cancelarAltamodi As Boolean

Public Type usuario
    Nombre As String * 12
    Password As String * 12
    Administrador As Boolean
End Type
Public UsuarioActivo As usuario

Public Type Alumno
    Nombre As String * 10
    Apellido As String * 10
    Edad As Byte
    Dni As String * 8
    Año As String * 1
    Division As String * 1
    Estado As Boolean
    Comentarios As String * 25
End Type

Public Type asignatura
    Nombre As String * 15
    Profesor As String * 15
End Type

Private Type Division
    Alumnos(11) As Alumno
    Asignaturas(4) As asignatura
End Type

Public Sub Salir()
End
End Sub

Sub main()
frmInit.Show 1
frmUsuarios.Show
End Sub

Public Sub SubSalir()
End
End Sub

Public Sub Administrador()
With MDIMenu
    .Caption = "Sistema de Colegio, Iniciado Como Administrador,Acceso total a las funciones."
End With
End Sub

Public Sub Invitado()
MDIMenu.Caption = "Sistema de Colegio, Iniciado Como Invitado,Acceso limitado a las funciones."

With MDIMenu 'Desactivacion de ABM Alumnos
    .mnuAltaExistente.Enabled = False
    .mnuModiALumnos.Enabled = False
    .mnuAltaAlumno.Enabled = False
End With

With MDIMenu 'Desactivacion de ABM Asignaturas
    .mnuBajaMat.Enabled = False
    .mnuModiMateria.Enabled = False
    .mnuNuevaMat.Enabled = False
End With

End Sub

Public Sub IniciaFlexAlumnos()
Dim x As Integer
With frmAlumnos.FlexAlumnos
    .Clear
    .Rows = 1
    .Cols = 9
    .AllowBigSelection = False
    .AllowUserResizing = flexResizeNone
    .ColWidth(0) = 1000
    .ColWidth(1) = 3000
    .ColWidth(2) = 3000
    .ColWidth(3) = 3000
    .ColWidth(4) = 3000
    .ColWidth(5) = 1500
    .ColWidth(6) = 1500
    .ColWidth(7) = 1500
    .ColWidth(8) = 7500
    .TextMatrix(0, 0) = "Numero"
    .TextMatrix(0, 1) = "Nombre"
    .TextMatrix(0, 2) = "Apellido"
    .TextMatrix(0, 3) = "Edad"
    .TextMatrix(0, 4) = "DNI"
    .TextMatrix(0, 5) = "Año"
    .TextMatrix(0, 6) = "Division"
    .TextMatrix(0, 7) = "Estado"
    .TextMatrix(0, 8) = "Comentarios"
    .BackColorSel = vbYellow
    .ForeColorSel = vbBlack
    .BackColorFixed = vbBlack
    .ForeColorFixed = vbWhite
    .GridColor = vbMagenta
End With
End Sub


Public Sub CargarFlexAlumnos()
Dim n As Integer, Alumno As Alumno
Open App.Path & "\Alumnos.dat" For Random As #2 Len = Len(Alumno)
For n = 1 To LOF(2) / Len(Alumno)
Get #2, n, Alumno
With frmAlumnos
    .FlexAlumnos.Rows = .FlexAlumnos.Rows + 1
    .FlexAlumnos.TextMatrix(.FlexAlumnos.Rows - 1, 1) = Trim(Alumno.Nombre)
    .FlexAlumnos.TextMatrix(.FlexAlumnos.Rows - 1, 2) = Trim(Alumno.Apellido)
    .FlexAlumnos.TextMatrix(.FlexAlumnos.Rows - 1, 3) = Trim(Str(Alumno.Edad))
    .FlexAlumnos.TextMatrix(.FlexAlumnos.Rows - 1, 4) = Trim(Alumno.Dni)
    .FlexAlumnos.TextMatrix(.FlexAlumnos.Rows - 1, 5) = Trim(Alumno.Año)
    .FlexAlumnos.TextMatrix(.FlexAlumnos.Rows - 1, 6) = Trim(Alumno.Division)
    .FlexAlumnos.TextMatrix(.FlexAlumnos.Rows - 1, 7) = Trim(Alumno.Estado)
    .FlexAlumnos.TextMatrix(.FlexAlumnos.Rows - 1, 8) = Trim(Alumno.Comentarios)
    .FlexAlumnos.TextMatrix(n, 0) = Str(n)
End With
Next n
Close #2
End Sub

Public Sub AltaAlumnoReal()
Dim n As Integer, Alumno As Alumno
Open App.Path & "\Alumnos.dat" For Random As #1 Len = Len(Alumno)
With frmDatosAlumno
    For n = 0 To 6
        .txtDatos(n) = ""
    Next n
    .Caption = "Alta"
    .Show 1
End With
If Not (cancelarAltamodi) Then
    With Alumno
        .Nombre = frmDatosAlumno.txtDatos(0).Text
        .Apellido = frmDatosAlumno.txtDatos(1).Text
        .Edad = Val(frmDatosAlumno.txtDatos(2).Text)
        .Dni = frmDatosAlumno.txtDatos(3).Text
        .Año = frmDatosAlumno.txtDatos(4).Text
        .Division = frmDatosAlumno.txtDatos(5).Text
        .Estado = (frmDatosAlumno.chkActivo.Value = 1)
        .Comentarios = frmDatosAlumno.txtDatos(6).Text
    End With
    Put #1, LOF(1) / Len(Alumno) + 1, Alumno
End If
Close #1
End Sub

Public Sub ModiAlumnos()

Dim n As Integer, Alumno As Alumno
Open App.Path & "\Alumnos.dat" For Random As #1 Len = Len(Alumno)
Get #1, frmAlumnos.FlexAlumnos.Row, Alumno
With frmDatosAlumno
    .Caption = "Modificacion"
    .txtDatos(0) = Trim(Alumno.Nombre)
    .txtDatos(1) = Trim(Alumno.Apellido)
    .txtDatos(2) = Trim(Alumno.Edad)
    .txtDatos(3) = Trim(Alumno.Dni)
    .txtDatos(4) = Trim(Alumno.Año)
    .txtDatos(5) = Trim(Alumno.Division)
    If (Alumno.Estado = True) Then
        .chkActivo.Value = 1
    Else
        .chkActivo.Value = 0
    End If
    .txtDatos(6) = Trim(Alumno.Comentarios)
    .Show 1
End With

If Not (cancelarAltamodi) Then
    With Alumno
        .Nombre = frmDatosAlumno.txtDatos(0).Text
        .Apellido = frmDatosAlumno.txtDatos(1).Text
        .Edad = Val(frmDatosAlumno.txtDatos(2).Text)
        .Dni = frmDatosAlumno.txtDatos(3).Text
        .Año = frmDatosAlumno.txtDatos(4).Text
        .Division = frmDatosAlumno.txtDatos(5).Text
        .Estado = (frmDatosAlumno.chkActivo.Value = 1)
        .Comentarios = frmDatosAlumno.txtDatos(6).Text
    End With
  Put #1, frmAlumnos.FlexAlumnos.Row, Alumno
      
End If
Close #1

End Sub

Public Sub ModiAlumnosReact()

Dim n As Integer, Alumno As Alumno
Open App.Path & "\Alumnos.dat" For Random As #1 Len = Len(Alumno)
Get #1, frmAlumnos.FlexAlumnos.Row, Alumno
If Alumno.Estado = False Then
    Alumno.Estado = True
    Alumno.Comentarios = ""
Else
    MsgBox "Alumno Activo"
End If
    Put #1, frmAlumnos.FlexAlumnos.Row, Alumno
Close #1

End Sub

Public Sub Ordenar(ByVal Campo As Integer, ByVal Archivo As String)
Dim Alumno As Alumno, Auxiliar As Alumno
Dim n As Integer, k As Integer, varCampos As Variant, varAuxi As Variant
Open Archivo For Random As #1 Len = Len(Alumno)
For n = 1 To LOF(1) / Len(Alumno) - 1
    Get #1, n, Alumno
    For k = n + 1 To LOF(1) / Len(Alumno)
        Get #1, k, Auxiliar
        Select Case Campo
            Case Is = 1
                varCampos = Alumno.Nombre
                varAuxi = Auxiliar.Nombre
            Case Is = 2
                varCampos = Alumno.Apellido
                varAuxi = Auxiliar.Apellido
            Case Is = 4
                varCampos = Alumno.Dni
                varAuxi = Auxiliar.Dni
            Case Is = 3
                varCampos = Val(Alumno.Edad)
                varAuxi = Val(Auxiliar.Edad)
            Case Is = 5
                varCampos = Alumno.Año
                varAuxi = Auxiliar.Año
            Case Is = 6
                varCampos = Alumno.Division
                varAuxi = Auxiliar.Division
            Case Is = 7
                varCampos = Alumno.Estado
                varCampos = Auxiliar.Estado
            End Select
            
            
         If (MDIMenu.mnuDecre.Checked) Then
            If (varCampos < varAuxi) Then
                Put #1, k, Alumno
                Put #1, n, Auxiliar
                Alumno = Auxiliar
            End If
         Else
             If (varCampos > varAuxi) Then
                 Put #1, k, Alumno
                 Put #1, n, Auxiliar
                 Alumno = Auxiliar
             End If
         End If
         
    Next k
Next n
Close #1
End Sub

Public Sub IniciaFlexMaterias()
Dim x As Integer
With frmMaterias.FlexMaterias
    .Clear
    .Rows = 1
    .Cols = 3
    .AllowBigSelection = False
    .AllowUserResizing = flexResizeNone
    .ColWidth(0) = 1000
    .ColWidth(1) = 5000
    .ColWidth(2) = 5000
    .TextMatrix(0, 0) = "Numero"
    .TextMatrix(0, 1) = "Asignatura"
    .TextMatrix(0, 2) = "Profesor"
    .BackColorSel = vbYellow
    .ForeColorSel = vbBlack
    .BackColorFixed = vbBlack
    .ForeColorFixed = vbWhite
    .GridColor = vbCyan
End With
End Sub


Public Sub CargarFlexMaterias()
Dim n As Integer, asignatura As asignatura
Open App.Path & "\Asignaturas.dat" For Random As #2 Len = Len(asignatura)
For n = 1 To LOF(2) / Len(asignatura)
Get #2, n, asignatura
With frmMaterias
    .FlexMaterias.Rows = .FlexMaterias.Rows + 1
    .FlexMaterias.TextMatrix(.FlexMaterias.Rows - 1, 1) = Trim(asignatura.Nombre)
    .FlexMaterias.TextMatrix(.FlexMaterias.Rows - 1, 2) = Trim(asignatura.Profesor)
    .FlexMaterias.TextMatrix(n, 0) = Str(n)
End With
Next n
Close #2
End Sub

Public Sub AltaAsignatura()
Dim n As Integer, asignatura As asignatura
Open App.Path & "\Asignaturas.dat" For Random As #1 Len = Len(asignatura)
With frmDatosMateria
    For n = 0 To 1
        .txtDatos(n) = ""
    Next n
    .Caption = "Alta"
    .Show 1
End With
If Not (cancelarAltamodi) Then
    With asignatura
        .Nombre = frmDatosMateria.txtDatos(0).Text
        .Profesor = frmDatosMateria.txtDatos(1).Text
    End With
    Put #1, LOF(1) / Len(asignatura) + 1, asignatura
End If
Close #1
End Sub


Public Sub ModiAsignatura()

Dim n As Integer, asignatura As asignatura
Open App.Path & "\Asignaturas.dat" For Random As #1 Len = Len(asignatura)
Get #1, frmMaterias.FlexMaterias.Row, asignatura
With frmDatosMateria
    .Caption = "Modificacion"
    .txtDatos(0) = Trim(asignatura.Nombre)
    .txtDatos(1) = Trim(asignatura.Profesor)
    .Show 1
End With

If Not (cancelarAltamodi) Then
    With asignatura
        .Nombre = frmDatosMateria.txtDatos(0).Text
        .Profesor = frmDatosMateria.txtDatos(1).Text
    End With
  Put #1, frmMaterias.FlexMaterias.Row, asignatura
      
End If
Close #1

End Sub


Public Sub OrdenarAsignatura(ByVal Campo As Integer, ByVal Archivo As String)
Dim asignatura As asignatura, Auxiliar As asignatura
Dim n As Integer, k As Integer, varCampos As Variant, varAuxi As Variant
Open Archivo For Random As #1 Len = Len(asignatura)
For n = 1 To LOF(1) / Len(asignatura) - 1
    Get #1, n, asignatura
    For k = n + 1 To LOF(1) / Len(asignatura)
        Get #1, k, Auxiliar
        Select Case Campo
            Case Is = 2
                varCampos = asignatura.Nombre
                varAuxi = Auxiliar.Nombre
            Case Is = 1
                varCampos = asignatura.Profesor
                varAuxi = Auxiliar.Profesor
            End Select
            
         If (MDIMenu.mnuDecreMat.Checked) Then
            If (varCampos < varAuxi) Then
                Put #1, k, asignatura
                Put #1, n, Auxiliar
                asignatura = Auxiliar
            End If
         Else
             If (varCampos > varAuxi) Then
                 Put #1, k, asignatura
                 Put #1, n, Auxiliar
                 asignatura = Auxiliar
             End If
         End If
         
    Next k
Next n
Close #1
End Sub

Public Sub BajaAsignatura()

Dim n As Integer, asignatura As asignatura, cont As Integer: cont = 1
Open App.Path & "\Asignaturas.dat" For Random As #1 Len = Len(asignatura)
Open App.Path & "\Asignaturas.tmp" For Random As #2 Len = Len(asignatura)

For n = 1 To LOF(1) / Len(asignatura)
    If (n <> frmMaterias.FlexMaterias.Row) Then
        Get #1, n, asignatura
        Put #2, cont, asignatura
        cont = cont + 1
    Else
        If (MsgBox("Desea Eliminar: " & frmMaterias.FlexMaterias.RowData(n), vbYesNo + vbQuestion, "Baja") = vbNo) Then
            Get #1, n, asignatura
            Put #2, cont, asignatura
            cont = cont + 1
        End If
    End If
Next n
Close #1, #2
Kill App.Path & "\Asignaturas.dat"
Name App.Path & "\Asignaturas.tmp" As App.Path & "\Asignaturas.dat"

End Sub

Public Sub FiltradoAlumnos(ByVal Estado As Boolean)

IniciaFlexAlumnos
Dim n As Integer, Alumno As Alumno
Open App.Path & "\Alumnos.dat" For Random As #2 Len = Len(Alumno)
For n = 1 To LOF(2) / Len(Alumno)
        Get #2, n, Alumno
        If (Alumno.Estado = Estado) Then
            With frmAlumnos
                .FlexAlumnos.Rows = .FlexAlumnos.Rows + 1
                .FlexAlumnos.TextMatrix(.FlexAlumnos.Rows - 1, 1) = Trim(Alumno.Nombre)
                .FlexAlumnos.TextMatrix(.FlexAlumnos.Rows - 1, 2) = Trim(Alumno.Apellido)
                .FlexAlumnos.TextMatrix(.FlexAlumnos.Rows - 1, 3) = Trim(Str(Alumno.Edad))
                .FlexAlumnos.TextMatrix(.FlexAlumnos.Rows - 1, 4) = Trim(Alumno.Dni)
                .FlexAlumnos.TextMatrix(.FlexAlumnos.Rows - 1, 5) = Trim(Alumno.Año)
                .FlexAlumnos.TextMatrix(.FlexAlumnos.Rows - 1, 6) = Trim(Alumno.Division)
                .FlexAlumnos.TextMatrix(.FlexAlumnos.Rows - 1, 7) = Trim(Alumno.Estado)
                .FlexAlumnos.TextMatrix(.FlexAlumnos.Rows - 1, 8) = Trim(Alumno.Comentarios)
            End With
        End If
Next n

For n = 1 To frmAlumnos.FlexAlumnos.Rows - 1
    frmAlumnos.FlexAlumnos.TextMatrix(n, 0) = Str(n)
Next n
Close #2

End Sub

