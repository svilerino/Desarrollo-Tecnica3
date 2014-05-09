VERSION 5.00
Begin VB.Form frmClientes 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Clientes"
   ClientHeight    =   5250
   ClientLeft      =   150
   ClientTop       =   840
   ClientWidth     =   8850
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5250
   ScaleWidth      =   8850
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame1 
      Caption         =   "Clientes"
      Height          =   3735
      Left            =   120
      TabIndex        =   0
      Top             =   240
      Width           =   8535
      Begin VB.ListBox lstVer 
         Height          =   3210
         Left            =   120
         Style           =   1  'Checkbox
         TabIndex        =   1
         Top             =   360
         Width           =   8295
      End
   End
   Begin VB.Menu mnuCliente 
      Caption         =   "&Cliente"
      Begin VB.Menu mnuCompra 
         Caption         =   "Comprar"
      End
      Begin VB.Menu mnuHistorial 
         Caption         =   "Acceder a su Historial"
      End
      Begin VB.Menu mnuSpace1 
         Caption         =   "-"
      End
      Begin VB.Menu mnuNvoCliente 
         Caption         =   "Nuevo Cliente"
      End
      Begin VB.Menu mnuBaja 
         Caption         =   "Baja Cliente"
      End
      Begin VB.Menu mnuModi 
         Caption         =   "Modificar Cliente"
      End
   End
End
Attribute VB_Name = "frmClientes"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Type Cliente
    Nombre As String * 10
    Apellido As String * 10
    NroCta As Integer
End Type


Private Sub Form_Load()

End Sub

Private Sub mnuNvoCliente_Click()
Dim variable As Cliente, Cuenta As Integer
Open App.Path & "\Clientes\InfoCtas.dat" For Random As #1 Len = Len(Cuenta)
    If Not (EOF(1)) Then
        Get #1, LOF(1) / Len(Cuenta), Cuenta
    Else
        Cuenta = 1
    End If
Close #1

Open App.Path & "\Clientes\" & Trim(Str(Cuenta)) & ".dat" For Random As #1 Len = Len(variable)
    frmCargaCL.Show 1
    With variable
        .Nombre = frmCargaCL.txtNombre
        .Apellido = frmCargaCL.txtApellido
        .NroCta = Cuenta
    End With
    Put #1, 1, variable
Close #1

Cuenta = Cuenta + 1

Open App.Path & "\Clientes\InfoCtas.dat" For Random As #1 Len = Len(Cuenta)
    Put #1, LOF(1) / Len(Cuenta) + 1, Cuenta
Close #1
Lista
End Sub

Private Sub Lista()
lstVer.Clear
Dim Cuenta As Integer, variable As Cliente
Cuenta = 1
Open App.Path & "\Clientes\InfoCtas.dat" For Random As #1 Len = Len(Cuenta)
    Get #1, Cuenta, variable
    Do While Not EOF(1)
        With variable
            lstVer.AddItem "Nombre " & .Nombre & " Apellido " & .Apellido & " NroCta:" & Str(.NroCta)
        End With
        Cuenta = Cuenta + 1
        Get #1, Cuenta, variable
    Loop
Close #1
    
End Sub
