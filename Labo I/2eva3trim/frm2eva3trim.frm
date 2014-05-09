VERSION 5.00
Begin VB.Form frm2eva3trim 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "2eva3trim"
   ClientHeight    =   5865
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   11370
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5865
   ScaleWidth      =   11370
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.ListBox lstInterseccion 
      BeginProperty Font 
         Name            =   "Terminal"
         Size            =   9
         Charset         =   255
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   5640
      Left            =   6000
      TabIndex        =   8
      Top             =   120
      Width           =   5295
   End
   Begin VB.Frame Frame2 
      Caption         =   "Otros"
      Height          =   1095
      Left            =   2760
      TabIndex        =   2
      Top             =   4680
      Width           =   3135
      Begin VB.CommandButton cmdKill 
         Caption         =   "Borrar Contenido"
         Height          =   255
         Left            =   1200
         TabIndex        =   11
         Top             =   600
         Width           =   1335
      End
      Begin VB.CommandButton cmdSalir 
         Caption         =   "Salir"
         Height          =   735
         Left            =   120
         TabIndex        =   10
         Top             =   240
         Width           =   855
      End
      Begin VB.CommandButton cmdVer 
         Caption         =   "&Ver Archivo"
         Height          =   255
         Left            =   1200
         TabIndex        =   9
         Top             =   240
         Width           =   1335
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "Grafico"
      Height          =   1095
      Left            =   120
      TabIndex        =   1
      Top             =   4680
      Width           =   2535
      Begin VB.TextBox txtB 
         Height          =   285
         Left            =   1800
         TabIndex        =   7
         Text            =   "1"
         Top             =   600
         Width           =   495
      End
      Begin VB.TextBox txtA 
         Height          =   285
         Left            =   1800
         TabIndex        =   6
         Text            =   "1"
         Top             =   240
         Width           =   495
      End
      Begin VB.CommandButton Command1 
         Caption         =   "&Graficar"
         Height          =   735
         Left            =   120
         TabIndex        =   3
         Top             =   240
         Width           =   1215
      End
      Begin VB.Label Label2 
         Caption         =   "B"
         Height          =   255
         Left            =   1560
         TabIndex        =   5
         Top             =   600
         Width           =   135
      End
      Begin VB.Label Label1 
         Caption         =   "A"
         Height          =   255
         Left            =   1560
         TabIndex        =   4
         Top             =   240
         Width           =   135
      End
   End
   Begin VB.PictureBox Pic 
      BackColor       =   &H00FFFFFF&
      BeginProperty Font 
         Name            =   "Terminal"
         Size            =   6
         Charset         =   255
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   4455
      Left            =   120
      ScaleHeight     =   40
      ScaleMode       =   0  'User
      ScaleWidth      =   40
      TabIndex        =   0
      Top             =   120
      Width           =   5805
   End
End
Attribute VB_Name = "frm2eva3trim"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
'Hacer una aplicación que encuentre graficamente la intersección entre dos parábolas con exactitud de 2 decimales.
'Una parábola es de la forma y= A*x^2, y la otra y= -A*x^2 + B; donde el usuario ingresa el valor de las constantes A y B.
'Hacer el análisis en el intervalo -20, 20 tanto para las abscisas como para las ordenadas.
'De haber intersecciones en esos intervalos, se deberá guardar en un archivo el valor de A , el valor de B y las coordenadas de las intersecciones.
'Un botón deberá mostrar en una lista el contenido del archivo cuando el usuario lo desee
'Guardar el proyecto como 2eva3trim en carpeta del mismo nombre en el raiz de la cuenta del alumno.
'Poner sus datos y enunciado al principio del código de la aplicación, además de título en la solapa de Form.
'///
'Alumno: Vileriño,Silvio
'Curso: 4to 2da

Private Type Coordenada
    x As Single
    Y As Single
End Type

Private Type Registro
    Interseccion As Coordenada
    A As Single
    B As Single
End Type

Private Sub cmdKill_Click() 'abre el archivo por si no existe, luego lo borra
Dim Registro As Registro
Open App.Path & "\Intersecciones.dat" For Random As #1 Len = Len(Registro)
Close #1
Kill App.Path & "\Intersecciones.dat"
VerArchivo
End Sub

Private Sub cmdSalir_Click() 'sale
Form_Unload 0
End Sub

Private Sub cmdVer_Click() 'llama al procedimiento para mostrar el archivo en la lista
VerArchivo
End Sub

Private Sub Command1_Click()
Pic.Cls 'limpia el picturebox
Ejes 'dibuja los ejes
Parabolas 'dibuja las parabolas
End Sub

Private Sub Form_Load()
With Pic 'setea las propiedades del pic
    .BackColor = vbBlack
    .DrawWidth = 1
    .ForeColor = vbCyan
End With
End Sub

Private Sub Form_Unload(Cancel As Integer)
End
End Sub

Private Sub Ejes()
Dim coor As Coordenada
Dim origen As Coordenada
With origen 'marca el origen de coordenadas en el centro
    .x = Pic.ScaleWidth / 2
    .Y = Pic.ScaleHeight / 2
End With
Pic.Line (0, origen.Y)-(40, origen.Y), vbYellow
Pic.Line (origen.x, 0)-(origen.x, 40), vbYellow
End Sub

Private Sub Parabolas()
Dim coor As Coordenada
Dim origen As Coordenada
Dim Registro As Registro
With origen
    .x = Pic.ScaleWidth / 2
    .Y = Pic.ScaleHeight / 2
End With

For coor.x = -20 To 20 Step 0.001
        coor.Y = -(Val(txtA.Text) * coor.x ^ 2) 'setea el valor de Y para la Parabola A*X^2
        Pic.PSet (coor.x + origen.x, coor.Y + origen.Y), vbBlue 'Grafica
Next coor.x

For coor.x = -20 To 20 Step 0.001
    coor.Y = -(-Val(txtA.Text) * coor.x ^ 2) - Val(txtB.Text) 'setea el Valor de la Parabola -A*X^2+B
    
    If (Pic.Point(coor.x + origen.x, coor.Y + origen.Y) = vbBlue) Then 'Pregunta si no esta intersectando a la primer parabola
    
        Pic.DrawWidth = 5 'marca un punto mas grueso en la interseccion
        Pic.PSet (coor.x + origen.x, coor.Y + origen.Y), vbRed
        Pic.DrawWidth = 1
        Pic.Print Trim(Str(Round(coor.x, 2)) & " ; " & Trim(Str(Round(-coor.Y, 2)))) 'imprime las coordenadas
        With Registro
            .A = Val(txtA.Text)
            .B = Val(txtB.Text)
            .Interseccion.x = Round(coor.x, 2)
            .Interseccion.Y = Round(-coor.Y, 2)
        End With 'guarda datos en registro
        InterArchivo Registro 'guarda Interseccion en el archivo
    Else
        Pic.PSet (coor.x + origen.x, coor.Y + origen.Y), vbGreen 'grafica
    End If
Next coor.x
VerArchivo 'muestra archivo en lista
End Sub

Private Sub InterArchivo(ByRef Registro As Registro)
Open App.Path & "\Intersecciones.dat" For Random As #1 Len = Len(Registro)
    Put #1, LOF(1) / Len(Registro) + 1, Registro 'da de alta la interseccion
Close #1
End Sub
Private Sub VerArchivo()
Dim x As Integer
Dim Registro As Registro
lstInterseccion.Clear 'limpia la lista
Open App.Path & "\Intersecciones.dat" For Random As #1 Len = Len(Registro)
    For x = 1 To LOF(1) / Len(Registro)
        Get #1, x, Registro 'muestra en la lista los datos pedidos
        lstInterseccion.AddItem "A:" & Str(Registro.A) & " B:" & Str(Registro.B) & " Interseccion X:" & Str(Registro.Interseccion.x) & " Interseccion Y:" & Str(Registro.Interseccion.Y)
    Next x
Close #1

End Sub
