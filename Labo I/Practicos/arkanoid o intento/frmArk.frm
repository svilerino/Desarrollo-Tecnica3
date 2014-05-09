VERSION 5.00
Begin VB.Form frmArk 
   BackColor       =   &H00000000&
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Arkanoid"
   ClientHeight    =   15525
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   15915
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Moveable        =   0   'False
   ScaleHeight     =   16000
   ScaleMode       =   0  'User
   ScaleWidth      =   16000
   Begin VB.Frame Frame2 
      BackColor       =   &H00000000&
      Caption         =   "Puntaje"
      ForeColor       =   &H00FFFFFF&
      Height          =   735
      Left            =   14160
      TabIndex        =   4
      Top             =   1080
      Width           =   1575
      Begin VB.Label lblPuntaje 
         BackColor       =   &H00FFFF00&
         Caption         =   "Label1"
         Height          =   255
         Left            =   480
         TabIndex        =   5
         Top             =   240
         Width           =   975
      End
   End
   Begin VB.CommandButton Barra 
      Appearance      =   0  'Flat
      BackColor       =   &H00FFFF00&
      Height          =   255
      Left            =   6120
      MaskColor       =   &H00C0C000&
      Style           =   1  'Graphical
      TabIndex        =   0
      Top             =   13680
      Width           =   2775
   End
   Begin VB.Timer tmrPosi 
      Interval        =   1
      Left            =   5280
      Top             =   360
   End
   Begin VB.Timer tmrMove 
      Interval        =   25
      Left            =   4560
      Top             =   120
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H00000000&
      Caption         =   "Posicion"
      ForeColor       =   &H00FFFFFF&
      Height          =   855
      Left            =   14160
      TabIndex        =   1
      Top             =   120
      Width           =   1575
      Begin VB.Label lblTop 
         BackColor       =   &H000080FF&
         Caption         =   "Label1"
         Height          =   255
         Left            =   480
         TabIndex        =   3
         Top             =   240
         Width           =   975
      End
      Begin VB.Label lblLeft 
         BackColor       =   &H000040C0&
         Caption         =   "Label2"
         Height          =   255
         Left            =   480
         TabIndex        =   2
         Top             =   480
         Width           =   975
      End
   End
   Begin VB.Label bloques 
      BackColor       =   &H000000C0&
      BorderStyle     =   1  'Fixed Single
      Height          =   255
      Index           =   35
      Left            =   6720
      TabIndex        =   41
      Top             =   3600
      Width           =   1215
   End
   Begin VB.Label bloques 
      BackColor       =   &H000000C0&
      BorderStyle     =   1  'Fixed Single
      Height          =   255
      Index           =   34
      Left            =   7920
      TabIndex        =   40
      Top             =   3120
      Width           =   1215
   End
   Begin VB.Label bloques 
      BackColor       =   &H000000C0&
      BorderStyle     =   1  'Fixed Single
      Height          =   255
      Index           =   33
      Left            =   6720
      TabIndex        =   39
      Top             =   3120
      Width           =   1215
   End
   Begin VB.Label bloques 
      BackColor       =   &H000000C0&
      BorderStyle     =   1  'Fixed Single
      Height          =   255
      Index           =   32
      Left            =   5520
      TabIndex        =   38
      Top             =   3120
      Width           =   1215
   End
   Begin VB.Label bloques 
      BackColor       =   &H000000C0&
      BorderStyle     =   1  'Fixed Single
      Height          =   255
      Index           =   31
      Left            =   9120
      TabIndex        =   37
      Top             =   2640
      Width           =   1215
   End
   Begin VB.Label bloques 
      BackColor       =   &H000000C0&
      BorderStyle     =   1  'Fixed Single
      Height          =   255
      Index           =   30
      Left            =   7920
      TabIndex        =   36
      Top             =   2640
      Width           =   1215
   End
   Begin VB.Label bloques 
      BackColor       =   &H000000C0&
      BorderStyle     =   1  'Fixed Single
      Height          =   255
      Index           =   29
      Left            =   6720
      TabIndex        =   35
      Top             =   2640
      Width           =   1215
   End
   Begin VB.Label bloques 
      BackColor       =   &H000000C0&
      BorderStyle     =   1  'Fixed Single
      Height          =   255
      Index           =   28
      Left            =   5520
      TabIndex        =   34
      Top             =   2640
      Width           =   1215
   End
   Begin VB.Label bloques 
      BackColor       =   &H000000C0&
      BorderStyle     =   1  'Fixed Single
      Height          =   255
      Index           =   27
      Left            =   4320
      TabIndex        =   33
      Top             =   2640
      Width           =   1215
   End
   Begin VB.Label bloques 
      BackColor       =   &H000000C0&
      BorderStyle     =   1  'Fixed Single
      Height          =   255
      Index           =   26
      Left            =   10320
      TabIndex        =   32
      Top             =   2160
      Width           =   1215
   End
   Begin VB.Label bloques 
      BackColor       =   &H000000C0&
      BorderStyle     =   1  'Fixed Single
      Height          =   255
      Index           =   25
      Left            =   9120
      TabIndex        =   31
      Top             =   2160
      Width           =   1215
   End
   Begin VB.Label bloques 
      BackColor       =   &H000000C0&
      BorderStyle     =   1  'Fixed Single
      Height          =   255
      Index           =   24
      Left            =   7920
      TabIndex        =   30
      Top             =   2160
      Width           =   1215
   End
   Begin VB.Label bloques 
      BackColor       =   &H000000C0&
      BorderStyle     =   1  'Fixed Single
      Height          =   255
      Index           =   23
      Left            =   6720
      TabIndex        =   29
      Top             =   2160
      Width           =   1215
   End
   Begin VB.Label bloques 
      BackColor       =   &H000000C0&
      BorderStyle     =   1  'Fixed Single
      Height          =   255
      Index           =   22
      Left            =   5520
      TabIndex        =   28
      Top             =   2160
      Width           =   1215
   End
   Begin VB.Label bloques 
      BackColor       =   &H000000C0&
      BorderStyle     =   1  'Fixed Single
      Height          =   255
      Index           =   21
      Left            =   4320
      TabIndex        =   27
      Top             =   2160
      Width           =   1215
   End
   Begin VB.Label bloques 
      BackColor       =   &H000000C0&
      BorderStyle     =   1  'Fixed Single
      Height          =   255
      Index           =   20
      Left            =   3120
      TabIndex        =   26
      Top             =   2160
      Width           =   1215
   End
   Begin VB.Label bloques 
      BackColor       =   &H000000C0&
      BorderStyle     =   1  'Fixed Single
      Height          =   255
      Index           =   19
      Left            =   11520
      TabIndex        =   25
      Top             =   1680
      Width           =   1215
   End
   Begin VB.Label bloques 
      BackColor       =   &H000000C0&
      BorderStyle     =   1  'Fixed Single
      Height          =   255
      Index           =   18
      Left            =   10320
      TabIndex        =   24
      Top             =   1680
      Width           =   1215
   End
   Begin VB.Label bloques 
      BackColor       =   &H000000C0&
      BorderStyle     =   1  'Fixed Single
      Height          =   255
      Index           =   17
      Left            =   9120
      TabIndex        =   23
      Top             =   1680
      Width           =   1215
   End
   Begin VB.Label bloques 
      BackColor       =   &H000000C0&
      BorderStyle     =   1  'Fixed Single
      Height          =   255
      Index           =   16
      Left            =   7920
      TabIndex        =   22
      Top             =   1680
      Width           =   1215
   End
   Begin VB.Label bloques 
      BackColor       =   &H000000C0&
      BorderStyle     =   1  'Fixed Single
      Height          =   255
      Index           =   15
      Left            =   6720
      TabIndex        =   21
      Top             =   1680
      Width           =   1215
   End
   Begin VB.Label bloques 
      BackColor       =   &H000000C0&
      BorderStyle     =   1  'Fixed Single
      Height          =   255
      Index           =   14
      Left            =   5520
      TabIndex        =   20
      Top             =   1680
      Width           =   1215
   End
   Begin VB.Label bloques 
      BackColor       =   &H000000C0&
      BorderStyle     =   1  'Fixed Single
      Height          =   255
      Index           =   13
      Left            =   4320
      TabIndex        =   19
      Top             =   1680
      Width           =   1215
   End
   Begin VB.Label bloques 
      BackColor       =   &H000000C0&
      BorderStyle     =   1  'Fixed Single
      Height          =   255
      Index           =   12
      Left            =   3120
      TabIndex        =   18
      Top             =   1680
      Width           =   1215
   End
   Begin VB.Label bloques 
      BackColor       =   &H000000C0&
      BorderStyle     =   1  'Fixed Single
      Height          =   255
      Index           =   11
      Left            =   1920
      TabIndex        =   17
      Top             =   1680
      Width           =   1215
   End
   Begin VB.Label bloques 
      BackColor       =   &H000000C0&
      BorderStyle     =   1  'Fixed Single
      Height          =   255
      Index           =   10
      Left            =   12720
      TabIndex        =   16
      Top             =   1200
      Width           =   1215
   End
   Begin VB.Label bloques 
      BackColor       =   &H000000C0&
      BorderStyle     =   1  'Fixed Single
      Height          =   255
      Index           =   9
      Left            =   11520
      TabIndex        =   15
      Top             =   1200
      Width           =   1215
   End
   Begin VB.Label bloques 
      BackColor       =   &H000000C0&
      BorderStyle     =   1  'Fixed Single
      Height          =   255
      Index           =   8
      Left            =   10320
      TabIndex        =   14
      Top             =   1200
      Width           =   1215
   End
   Begin VB.Label bloques 
      BackColor       =   &H000000C0&
      BorderStyle     =   1  'Fixed Single
      Height          =   255
      Index           =   7
      Left            =   9120
      TabIndex        =   13
      Top             =   1200
      Width           =   1215
   End
   Begin VB.Label bloques 
      BackColor       =   &H000000C0&
      BorderStyle     =   1  'Fixed Single
      Height          =   255
      Index           =   6
      Left            =   7920
      TabIndex        =   12
      Top             =   1200
      Width           =   1215
   End
   Begin VB.Label bloques 
      BackColor       =   &H000000C0&
      BorderStyle     =   1  'Fixed Single
      Height          =   255
      Index           =   5
      Left            =   6720
      TabIndex        =   11
      Top             =   1200
      Width           =   1215
   End
   Begin VB.Label bloques 
      BackColor       =   &H000000C0&
      BorderStyle     =   1  'Fixed Single
      Height          =   255
      Index           =   4
      Left            =   5520
      TabIndex        =   10
      Top             =   1200
      Width           =   1215
   End
   Begin VB.Label bloques 
      BackColor       =   &H000000C0&
      BorderStyle     =   1  'Fixed Single
      Height          =   255
      Index           =   3
      Left            =   4320
      TabIndex        =   9
      Top             =   1200
      Width           =   1215
   End
   Begin VB.Label bloques 
      BackColor       =   &H000000C0&
      BorderStyle     =   1  'Fixed Single
      Height          =   255
      Index           =   2
      Left            =   3120
      TabIndex        =   8
      Top             =   1200
      Width           =   1215
   End
   Begin VB.Label bloques 
      BackColor       =   &H000000C0&
      BorderStyle     =   1  'Fixed Single
      Height          =   255
      Index           =   1
      Left            =   1920
      TabIndex        =   7
      Top             =   1200
      Width           =   1215
   End
   Begin VB.Label bloques 
      BackColor       =   &H000000C0&
      BorderStyle     =   1  'Fixed Single
      Height          =   255
      Index           =   0
      Left            =   720
      TabIndex        =   6
      Top             =   1200
      Width           =   1215
   End
   Begin VB.Shape bola 
      BackColor       =   &H00FF0000&
      BackStyle       =   1  'Opaque
      BorderStyle     =   4  'Dash-Dot
      FillColor       =   &H00FF0000&
      FillStyle       =   0  'Solid
      Height          =   375
      Left            =   360
      Shape           =   3  'Circle
      Top             =   360
      Width           =   375
   End
End
Attribute VB_Name = "frmArk"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Private PosiX As String, PosiY As String, Puntaje As Integer

Private Sub Barra_KeyDown(KeyCode As Integer, Shift As Integer)
Select Case KeyCode
    Case Is = vbKeyLeft
        Barra.Top = Barra.Top - 50
    Case Is = vbKeyRight
        Barra.Top = Barra.Top + 50
End Select
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
Select Case KeyCode
    Case Is = vbKeyLeft
        Barra.Top = Barra.Top - 50
    Case Is = vbKeyRight
        Barra.Top = Barra.Top + 50
End Select

End Sub

Private Sub Form_Load()
bola.Top = frmArk.ScaleHeight - 2000
bola.Left = frmArk.ScaleWidth / 2
Barra.Left = (frmArk.ScaleWidth / 2) - Barra.Width / 2
Barra.Top = frmArk.ScaleHeight - frmArk.ScaleHeight / 4
PosiX = "Izquierda"
PosiY = "Arriba"
Dim x  As Byte
For x = 0 To 35
    bloques(x).BackColor = vbGreen
    bloques(x).Visible = True
Next x
Barra.Width = 3000
End Sub

Private Sub Form_MouseMove(Button As Integer, Shift As Integer, x As Single, Y As Single)
Barra.Left = x
End Sub

Private Sub tmrMove_Timer()
DoEvents
Verif
End Sub

Private Sub CambiaPosi()
Dim x As Byte, cont As Byte

Select Case bola.Top + bola.Height
    Case Is >= frmArk.Height
        PosiY = "Abajo"
        Puntaje = Puntaje - 1
    Case Is <= frmArk.Top + bola.Height
        PosiY = "Arriba"
End Select
Select Case bola.Left + bola.Width
    Case Is >= frmArk.Width
        PosiX = "Derecha"
    Case Is <= frmArk.Left + bola.Width
        PosiX = "Izquierda"
End Select

If (bola.Top + bola.Height >= Barra.Top) Then
    If (bola.Left > Barra.Left And bola.Left < Barra.Left + Barra.Width) Then
        PosiY = "Abajo"
    End If
End If


For x = 0 To 35
    DoEvents
    If (bloques(x).Visible) Then
        If (bola.Top <= bloques(x).Top + bloques(x).Height) Then
            If (bola.Left > bloques(x).Left And bola.Left < bloques(x).Left + bloques(x).Width) Then
                PosiY = "Arriba"
                bloques(x).Visible = False
                Puntaje = Puntaje + Fix(Rnd * 15)
                Barra.Width = Barra.Width + 200
            End If
        End If
    Else
        cont = cont + 1
    End If
Next x

If cont > 33 Then
    MsgBox "Ganaste"
    cont = 0
    Form_Load
End If

End Sub

Private Sub Verif()

Select Case PosiY
    Case Is = "Abajo"
        With bola
            .Top = .Top - 200
        End With
    Case Is = "Arriba"
        With bola
            .Top = .Top + 200
        End With
End Select

Select Case PosiX
    Case Is = "Derecha"
        With bola
            .Left = .Left - 200
        End With
    Case Is = "Izquierda"
        With bola
        .Left = .Left + 200
        End With
End Select
lblTop.Caption = Trim(Str(bola.Top))
lblLeft.Caption = Trim(Str(bola.Left))
lblPuntaje.Caption = Trim(Str(Puntaje))
End Sub

Private Sub tmrPosi_Timer()
DoEvents
CambiaPosi
End Sub
