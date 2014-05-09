VERSION 5.00
Begin VB.Form frmReloj 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Reloj de Silver"
   ClientHeight    =   5490
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   5520
   FillColor       =   &H00C0C0C0&
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5490
   ScaleWidth      =   5520
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer tmrSegundos 
      Interval        =   1000
      Left            =   0
      Top             =   0
   End
   Begin VB.PictureBox pic 
      AutoRedraw      =   -1  'True
      BackColor       =   &H00C0C0C0&
      FillColor       =   &H00E0E0E0&
      FillStyle       =   0  'Solid
      Height          =   5500
      Left            =   0
      ScaleHeight     =   40
      ScaleMode       =   0  'User
      ScaleWidth      =   40
      TabIndex        =   0
      Top             =   0
      Width           =   5500
   End
End
Attribute VB_Name = "frmReloj"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit


Private Sub tmrSegundos_Timer()
DoEvents
pic.Cls
MarcaLineas
Segundos
Minutos
Hora
pic.Circle (pic.ScaleWidth / 2, pic.ScaleHeight / 2), 1, vbBlue
pic.Circle (pic.ScaleWidth / 2, pic.ScaleHeight / 2), 0.5, vbGreen

End Sub

Private Function Radian(ByVal Grado As Integer) As Single
Dim pi As Single: pi = 4 * Atn(1)
Radian = (Grado * pi) / 180
End Function

Private Sub MarcaLineas()
pic.DrawWidth = 1
pic.Circle (pic.ScaleWidth / 2, pic.ScaleHeight / 2), 16, vbRed
'pic.Circle (pic.ScaleWidth / 2, pic.ScaleHeight / 2), 1, vbCyan
'pic.Circle (pic.ScaleWidth / 2, pic.ScaleHeight / 2), 0.5, vbMagenta
pic.DrawWidth = 5

'---calculo de 12 angulos para Puntos de Hora

Dim x As Integer, n As Single

n = Radian(360 / 12)

For x = 1 To 12
    pic.PSet (15 * Cos(n) + pic.ScaleWidth / 2, 15 * Sin(n) + pic.ScaleHeight / 2)
    n = n + Radian(360 / 12)
Next x

pic.DrawWidth = 1

End Sub

Private Sub Segundos()
Dim pi As Single: pi = 4 * Atn(1)

Dim alfaSegundo As Single

alfaSegundo = ((2 * pi) / 60) * (Second(Time))
pic.Line (pic.ScaleWidth / 2, pic.ScaleHeight / 2)-(14.3 * Sin(alfaSegundo) + pic.ScaleWidth / 2, -14.3 * Cos(alfaSegundo) + pic.ScaleHeight / 2), vbBlue
pic.PSet (14.3 * Sin(alfaSegundo) + pic.ScaleWidth / 2, -14.3 * Cos(alfaSegundo) + pic.ScaleHeight / 2)
pic.Print Str(Second(Time))

End Sub

Private Sub Minutos()
Dim pi As Single: pi = 4 * Atn(1)

Dim alfaMinuto As Single

alfaMinuto = ((2 * pi / 60)) * (Minute(Time) + (Second(Time) / 60))

pic.Line (pic.ScaleWidth / 2, pic.ScaleHeight / 2)-((14.3 * Sin(alfaMinuto)) + pic.ScaleWidth / 2, (-14.3 * Cos(alfaMinuto)) + pic.ScaleHeight / 2), vbRed
pic.PSet ((14.3 * Sin(alfaMinuto)) + pic.ScaleWidth / 2, (-14.3 * Cos(alfaMinuto)) + pic.ScaleHeight / 2)
pic.Print Str(Minute(Time))

End Sub


Private Sub Hora()
Dim pi As Single: pi = 4 * Atn(1)

Dim alfahora As Single

alfahora = ((2 * pi / 12)) * (Hour(Time) + (Minute(Time) / 60))

pic.Line (pic.ScaleWidth / 2, pic.ScaleHeight / 2)-((14.3 * Sin(alfahora)) + pic.ScaleWidth / 2, (-14.3 * Cos(alfahora)) + pic.ScaleHeight / 2), vbGreen
pic.PSet ((14.3 * Sin(alfahora)) + pic.ScaleWidth / 2, (-14.3 * Cos(alfahora)) + pic.ScaleHeight / 2)
pic.Print Str(Hour(Time))
End Sub
