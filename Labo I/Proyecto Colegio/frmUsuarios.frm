VERSION 5.00
Begin VB.Form frmUsuarios 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Login"
   ClientHeight    =   4410
   ClientLeft      =   2835
   ClientTop       =   3480
   ClientWidth     =   6195
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2605.573
   ScaleMode       =   0  'User
   ScaleWidth      =   5816.77
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton cmdValid 
      Caption         =   "Validar Usuario"
      Height          =   375
      Left            =   1440
      TabIndex        =   2
      Top             =   1080
      Width           =   1935
   End
   Begin VB.Frame FrameUsuarios 
      Caption         =   "Manejo de Usuarios"
      Enabled         =   0   'False
      Height          =   2535
      Left            =   120
      TabIndex        =   14
      Top             =   1800
      Width           =   6015
      Begin VB.Frame frmModi 
         Caption         =   "Campos y Opciones"
         Enabled         =   0   'False
         Height          =   1695
         Left            =   1920
         TabIndex        =   18
         Top             =   720
         Width           =   3975
         Begin VB.CommandButton cmdNew 
            Caption         =   "Nuevo Usr"
            Enabled         =   0   'False
            Height          =   375
            Left            =   120
            TabIndex        =   11
            Top             =   1200
            Width           =   1335
         End
         Begin VB.CheckBox chkAdmin 
            Caption         =   "Administrador"
            Height          =   255
            Left            =   1800
            TabIndex        =   10
            Top             =   1320
            Width           =   1695
         End
         Begin VB.TextBox txtUsrMan 
            Height          =   375
            IMEMode         =   3  'DISABLE
            Left            =   1800
            MaxLength       =   12
            TabIndex        =   8
            Top             =   360
            Width           =   2055
         End
         Begin VB.TextBox txtPassMan 
            Height          =   375
            IMEMode         =   3  'DISABLE
            Left            =   1800
            MaxLength       =   12
            TabIndex        =   9
            Top             =   840
            Width           =   2055
         End
         Begin VB.Label lblLabels 
            Caption         =   "&Nombre de usuario:"
            Height          =   270
            Index           =   3
            Left            =   120
            TabIndex        =   20
            Top             =   360
            Width           =   1440
         End
         Begin VB.Label lblLabels 
            Caption         =   "&Contraseña:"
            Height          =   270
            Index           =   2
            Left            =   120
            TabIndex        =   19
            Top             =   840
            Width           =   1440
         End
      End
      Begin VB.CommandButton cmdModi 
         Caption         =   "Modificar Usuario"
         Enabled         =   0   'False
         Height          =   375
         Left            =   240
         TabIndex        =   13
         Top             =   1800
         Width           =   1455
      End
      Begin VB.ComboBox cmbUsuarioMan 
         Height          =   315
         Left            =   2280
         TabIndex        =   6
         Top             =   240
         Width           =   3495
      End
      Begin VB.CommandButton cmdKill 
         Caption         =   "Borrar Usuario"
         Enabled         =   0   'False
         Height          =   375
         Left            =   240
         TabIndex        =   12
         Top             =   1320
         Width           =   1455
      End
      Begin VB.CommandButton cmdNuevo 
         Caption         =   "Nuevo Usuario"
         Height          =   375
         Left            =   240
         TabIndex        =   7
         Top             =   840
         Width           =   1455
      End
      Begin VB.Label Label1 
         Caption         =   "Seleccionar Usuario"
         Height          =   255
         Left            =   120
         TabIndex        =   21
         Top             =   240
         Width           =   2175
      End
   End
   Begin VB.ComboBox cmbUsuario 
      Height          =   315
      Left            =   1680
      TabIndex        =   0
      Top             =   120
      Width           =   4335
   End
   Begin VB.CommandButton cmdOK 
      Caption         =   "Ingresar"
      Default         =   -1  'True
      Enabled         =   0   'False
      Height          =   390
      Left            =   3480
      TabIndex        =   3
      Top             =   1080
      Width           =   1140
   End
   Begin VB.CommandButton cmdCancel 
      Cancel          =   -1  'True
      Caption         =   "Salir del Programa"
      Height          =   390
      Left            =   240
      TabIndex        =   5
      Top             =   1080
      Width           =   1140
   End
   Begin VB.TextBox txtPassword 
      Height          =   345
      IMEMode         =   3  'DISABLE
      Left            =   1680
      MaxLength       =   12
      PasswordChar    =   "*"
      TabIndex        =   1
      Top             =   525
      Width           =   4245
   End
   Begin VB.Frame Frame1 
      Height          =   1815
      Left            =   120
      TabIndex        =   15
      Top             =   0
      Width           =   6015
      Begin VB.CommandButton cmdLogoff 
         Caption         =   "Cerrar Sesion"
         Enabled         =   0   'False
         Height          =   375
         Left            =   4560
         TabIndex        =   4
         Top             =   1080
         Width           =   1215
      End
      Begin VB.Label lblLabels 
         Caption         =   "&Nombre de usuario:"
         Height          =   270
         Index           =   0
         Left            =   120
         TabIndex        =   17
         Top             =   120
         Width           =   1440
      End
      Begin VB.Label lblLabels 
         Caption         =   "&Contraseña:"
         Height          =   270
         Index           =   1
         Left            =   120
         TabIndex        =   16
         Top             =   600
         Width           =   1440
      End
   End
End
Attribute VB_Name = "frmUsuarios"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub cmbUsuario_KeyDown(KeyCode As Integer, Shift As Integer)
If (KeyCode = vbKeyReturn) Then txtPassword.SetFocus
End Sub

Private Sub cmbUsuarioMan_Click()
Dim x As Integer, usuario As usuario
Open App.Path & "\Users.dat" For Random As #1 Len = Len(usuario)
    x = 1
    Do: DoEvents
        
        Get #1, x, usuario
        x = x + 1
        
    Loop While Not (x = (LOF(1) / Len(usuario)) + 2 Or Trim(usuario.Nombre) = cmbUsuarioMan.Text)
    
    If (x = (LOF(1) / Len(usuario)) + 2) Then
        'MsgBox "Usuario Inexistente, o password invalida"
    Else
        txtUsrMan.Text = Trim(usuario.Nombre)
        txtPassMan.Text = Trim(usuario.Password)

        If usuario.Administrador Then
            chkAdmin.Value = 1 'admin
            
        Else
            chkAdmin.Value = 0 'invitado
            
        End If
    End If
    
Close #1
cmdModi.Enabled = True
frmModi.Enabled = True

End Sub

Private Sub cmdCancel_Click()
If (MsgBox("Desea Salir?", vbQuestion + vbOKCancel, "Login") = vbOK) Then Salir
End Sub

Private Sub cmdLogoff_Click()
Logoff
End Sub

Private Sub cmdModi_Click()
Dim x As Integer, usuario As usuario
Open App.Path & "\Users.dat" For Random As #1 Len = Len(usuario)
    With usuario
        .Nombre = txtUsrMan.Text
        .Password = txtPassMan.Text
        .Administrador = (chkAdmin.Value = 1)
    End With
    Put #1, cmbUsuarioMan.ListIndex + 1, usuario
Close #1
cmbUsuarioMan_Click
cmdModi.Enabled = False
frmModi.Enabled = False
CargarUser
End Sub

Private Sub cmdNew_Click()
frmModi.Enabled = False
cmdNew.Enabled = False
Dim x As Integer, usuario As usuario
Open App.Path & "\Users.dat" For Random As #1 Len = Len(usuario)
    With usuario
        .Nombre = txtUsrMan.Text
        .Password = txtPassMan.Text
        .Administrador = (chkAdmin.Value = 1)
    End With
    Put #1, LOF(1) / Len(usuario) + 1, usuario
Close #1
CargarUser
End Sub

Private Sub cmdNuevo_Click()
frmModi.Enabled = True
MsgBox " Ingrese datos en los campos de la derecha "
frmModi.Enabled = True
cmdNew.Enabled = True
End Sub

Private Sub cmdOK_Click()
Me.Hide
MDIMenu.Show
End Sub

Private Sub cmdValid_Click()
Dim x As Integer, usuario As usuario
Open App.Path & "\Users.dat" For Random As #1 Len = Len(usuario)
    x = 1
    Do: DoEvents
        
        Get #1, x, usuario
        x = x + 1
        
    Loop While Not (x = (LOF(1) / Len(usuario)) + 2 Or (Trim(usuario.Nombre) = cmbUsuario.Text And Trim(usuario.Password) = txtPassword.Text))
    
    If (x = (LOF(1) / Len(usuario)) + 2) Then
        MsgBox "Usuario Inexistente, o password invalida"
        txtPassword.Text = ""
    Else
        If usuario.Administrador Then
            MsgBox "Cuenta Privilegiada" 'admin
            FrameUsuarios.Enabled = True
            cmdOK.Enabled = True
            cmbUsuario.BackColor = vbGreen
            Logon
            Administrador
            MDIMenu.Hide
        Else
            MsgBox "Cuenta Limitada" 'invitado
            cmdOK.Enabled = True
            cmbUsuario.BackColor = vbYellow
            Logon
            Invitado
            MDIMenu.Hide
        End If
    End If
    UsuarioActivo = usuario
Close #1
End Sub
Private Sub Logon()
cmbUsuario.Enabled = False
txtPassword.Enabled = False
cmdLogoff.Enabled = True
cmdValid.Enabled = False
End Sub
Private Sub Logoff()
cmbUsuario.Enabled = True
txtPassword.Enabled = True
cmbUsuario.ListIndex = -1
txtPassword.Text = ""
cmdLogoff.Enabled = False
cmdOK.Enabled = False
FrameUsuarios.Enabled = False
cmbUsuario.BackColor = vbWhite
cmdValid.Enabled = True
End Sub

Private Sub Form_Load()
CargarUser
If (cmbUsuario.ListCount <> 0) Then
    cmbUsuario.ListIndex = 0
Else
    cmbUsuario.ListIndex = -1
End If
End Sub

Private Sub CargarUser()
cmbUsuario.Clear
cmbUsuarioMan.Clear
Dim x As Integer
Dim usuario As usuario
Open App.Path & "\Users.dat" For Random As #1 Len = Len(usuario)
    For x = 1 To LOF(1) / Len(usuario)
        Get #1, x, usuario
        cmbUsuario.AddItem Trim(usuario.Nombre)
        cmbUsuarioMan.AddItem Trim(usuario.Nombre)
    Next x
Close #1
End Sub

Private Sub txtPassword_KeyDown(KeyCode As Integer, Shift As Integer)
If (KeyCode = vbKeyReturn) Then cmdValid.SetFocus
End Sub
