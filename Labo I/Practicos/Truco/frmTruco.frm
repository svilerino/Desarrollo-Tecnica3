VERSION 5.00
Begin VB.Form frmTruco 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Truco"
   ClientHeight    =   4665
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   3825
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4665
   ScaleWidth      =   3825
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton cmdSalir 
      Cancel          =   -1  'True
      Caption         =   "&Salir"
      Height          =   375
      Left            =   2160
      TabIndex        =   2
      Top             =   4200
      Width           =   1575
   End
   Begin VB.CommandButton cmdHacer 
      Caption         =   "&Hacer"
      Height          =   375
      Left            =   120
      TabIndex        =   1
      Top             =   3600
      Width           =   2055
   End
   Begin VB.ListBox lstSalida 
      Height          =   3375
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   2055
   End
End
Attribute VB_Name = "frmTruco"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub cmdHacer_Click()
Dim MasoCarta(39) As Maso
CargarMaso MasoCarta()
Mezclarmaso MasoCarta()
Mostrarmaso MasoCarta()
End Sub
Private Sub CargarMaso(ByRef MasoCarta() As Maso)
Dim x As Byte, y As Byte, cont As Byte: cont = 0
Dim palo(3) As String

palo(0) = "ESP"
palo(1) = "ORO"
palo(2) = "BAS"
palo(3) = "COP"

For x = 0 To 9
    For y = 0 To 3
        MasoCarta(cont).valor = x + 1
        MasoCarta(cont).palo = palo(y)
        cont = cont + 1
    Next y
Next x
End Sub
Private Sub Mostrarmaso(ByRef Maso() As Maso)
Dim x As Byte
lstSalida.Clear
For x = 0 To 39
    lstSalida.AddItem Str(Maso(x).valor) & Maso(x).palo
Next x
End Sub
Private Sub Mezclarmaso(ByRef Maso() As Maso)
Dim x As Byte, valor As Byte, valor2 As Byte
For x = 0 To 20
    valor = Fix(Rnd * 40)
    valor2 = Fix(Rnd * 40)
    Swap Maso(valor).valor, Maso(valor2).valor
    Swap Maso(valor).palo, Maso(valor2).palo
Next x

End Sub
Private Function envido(ByRef A As Maso, ByRef B As Maso, ByRef C As Maso) As Byte
Dim envidofinal As Byte

End Function

Private Sub cmdSalir_Click()
Form_Unload 0
End Sub

Private Sub Form_Load()
Randomize Timer
End Sub

Private Sub Form_Unload(Cancel As Integer)
End
End Sub
