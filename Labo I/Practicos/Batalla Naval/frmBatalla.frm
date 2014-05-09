VERSION 5.00
Begin VB.Form frmBatalla 
   BackColor       =   &H0080C0FF&
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Batalla"
   ClientHeight    =   7620
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   8970
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   7620
   ScaleWidth      =   8970
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdSalir 
      Cancel          =   -1  'True
      Caption         =   "&Salir"
      Height          =   375
      Left            =   7680
      TabIndex        =   105
      Top             =   7200
      Width           =   1215
   End
   Begin VB.ListBox lstBarcos 
      Height          =   5715
      Left            =   7440
      TabIndex        =   103
      Top             =   480
      Width           =   1455
   End
   Begin VB.Frame Frame2 
      BackColor       =   &H0080C0FF&
      Caption         =   "Jugadas"
      Height          =   1215
      Left            =   0
      TabIndex        =   101
      Top             =   6360
      Width           =   7335
      Begin VB.CommandButton cmdVertical 
         Caption         =   "Po&ner Barcos Vertical"
         Height          =   375
         Left            =   2040
         TabIndex        =   107
         Top             =   240
         Width           =   1695
      End
      Begin VB.CommandButton cmdAzar 
         Caption         =   "P&oner Barcos al azar"
         Height          =   375
         Left            =   120
         TabIndex        =   106
         Top             =   720
         Width           =   1815
      End
      Begin VB.CommandButton cmdBarcos 
         Caption         =   "&Poner Barcos"
         Height          =   375
         Left            =   120
         TabIndex        =   102
         Top             =   240
         Width           =   1815
      End
   End
   Begin VB.TextBox txtTablero 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   99
      Left            =   6600
      Locked          =   -1  'True
      TabIndex        =   99
      Top             =   5640
      Width           =   615
   End
   Begin VB.TextBox txtTablero 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   98
      Left            =   5880
      Locked          =   -1  'True
      TabIndex        =   98
      Top             =   5640
      Width           =   615
   End
   Begin VB.TextBox txtTablero 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   97
      Left            =   5160
      Locked          =   -1  'True
      TabIndex        =   97
      Top             =   5640
      Width           =   615
   End
   Begin VB.TextBox txtTablero 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   96
      Left            =   4440
      Locked          =   -1  'True
      TabIndex        =   96
      Top             =   5640
      Width           =   615
   End
   Begin VB.TextBox txtTablero 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   95
      Left            =   3720
      Locked          =   -1  'True
      TabIndex        =   95
      Top             =   5640
      Width           =   615
   End
   Begin VB.TextBox txtTablero 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   94
      Left            =   3000
      Locked          =   -1  'True
      TabIndex        =   94
      Top             =   5640
      Width           =   615
   End
   Begin VB.TextBox txtTablero 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   93
      Left            =   2280
      Locked          =   -1  'True
      TabIndex        =   93
      Top             =   5640
      Width           =   615
   End
   Begin VB.TextBox txtTablero 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   92
      Left            =   1560
      Locked          =   -1  'True
      TabIndex        =   92
      Top             =   5640
      Width           =   615
   End
   Begin VB.TextBox txtTablero 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   91
      Left            =   840
      Locked          =   -1  'True
      TabIndex        =   91
      Top             =   5640
      Width           =   615
   End
   Begin VB.TextBox txtTablero 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   90
      Left            =   120
      Locked          =   -1  'True
      TabIndex        =   90
      Top             =   5640
      Width           =   615
   End
   Begin VB.TextBox txtTablero 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   89
      Left            =   6600
      Locked          =   -1  'True
      TabIndex        =   89
      Top             =   5040
      Width           =   615
   End
   Begin VB.TextBox txtTablero 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   88
      Left            =   5880
      Locked          =   -1  'True
      TabIndex        =   88
      Top             =   5040
      Width           =   615
   End
   Begin VB.TextBox txtTablero 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   87
      Left            =   5160
      Locked          =   -1  'True
      TabIndex        =   87
      Top             =   5040
      Width           =   615
   End
   Begin VB.TextBox txtTablero 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   86
      Left            =   4440
      Locked          =   -1  'True
      TabIndex        =   86
      Top             =   5040
      Width           =   615
   End
   Begin VB.TextBox txtTablero 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   85
      Left            =   3720
      Locked          =   -1  'True
      TabIndex        =   85
      Top             =   5040
      Width           =   615
   End
   Begin VB.TextBox txtTablero 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   84
      Left            =   3000
      Locked          =   -1  'True
      TabIndex        =   84
      Top             =   5040
      Width           =   615
   End
   Begin VB.TextBox txtTablero 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   83
      Left            =   2280
      Locked          =   -1  'True
      TabIndex        =   83
      Top             =   5040
      Width           =   615
   End
   Begin VB.TextBox txtTablero 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   82
      Left            =   1560
      Locked          =   -1  'True
      TabIndex        =   82
      Top             =   5040
      Width           =   615
   End
   Begin VB.TextBox txtTablero 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   81
      Left            =   840
      Locked          =   -1  'True
      TabIndex        =   81
      Top             =   5040
      Width           =   615
   End
   Begin VB.TextBox txtTablero 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   80
      Left            =   120
      Locked          =   -1  'True
      TabIndex        =   80
      Top             =   5040
      Width           =   615
   End
   Begin VB.TextBox txtTablero 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   79
      Left            =   6600
      Locked          =   -1  'True
      TabIndex        =   79
      Top             =   4440
      Width           =   615
   End
   Begin VB.TextBox txtTablero 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   78
      Left            =   5880
      Locked          =   -1  'True
      TabIndex        =   78
      Top             =   4440
      Width           =   615
   End
   Begin VB.TextBox txtTablero 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   77
      Left            =   5160
      Locked          =   -1  'True
      TabIndex        =   77
      Top             =   4440
      Width           =   615
   End
   Begin VB.TextBox txtTablero 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   76
      Left            =   4440
      Locked          =   -1  'True
      TabIndex        =   76
      Top             =   4440
      Width           =   615
   End
   Begin VB.TextBox txtTablero 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   75
      Left            =   3720
      Locked          =   -1  'True
      TabIndex        =   75
      Top             =   4440
      Width           =   615
   End
   Begin VB.TextBox txtTablero 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   74
      Left            =   3000
      Locked          =   -1  'True
      TabIndex        =   74
      Top             =   4440
      Width           =   615
   End
   Begin VB.TextBox txtTablero 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   73
      Left            =   2280
      Locked          =   -1  'True
      TabIndex        =   73
      Top             =   4440
      Width           =   615
   End
   Begin VB.TextBox txtTablero 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   72
      Left            =   1560
      Locked          =   -1  'True
      TabIndex        =   72
      Top             =   4440
      Width           =   615
   End
   Begin VB.TextBox txtTablero 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   71
      Left            =   840
      Locked          =   -1  'True
      TabIndex        =   71
      Top             =   4440
      Width           =   615
   End
   Begin VB.TextBox txtTablero 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   70
      Left            =   120
      Locked          =   -1  'True
      TabIndex        =   70
      Top             =   4440
      Width           =   615
   End
   Begin VB.TextBox txtTablero 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   69
      Left            =   6600
      Locked          =   -1  'True
      TabIndex        =   69
      Top             =   3840
      Width           =   615
   End
   Begin VB.TextBox txtTablero 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   68
      Left            =   5880
      Locked          =   -1  'True
      TabIndex        =   68
      Top             =   3840
      Width           =   615
   End
   Begin VB.TextBox txtTablero 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   67
      Left            =   5160
      Locked          =   -1  'True
      TabIndex        =   67
      Top             =   3840
      Width           =   615
   End
   Begin VB.TextBox txtTablero 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   66
      Left            =   4440
      Locked          =   -1  'True
      TabIndex        =   66
      Top             =   3840
      Width           =   615
   End
   Begin VB.TextBox txtTablero 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   65
      Left            =   3720
      Locked          =   -1  'True
      TabIndex        =   65
      Top             =   3840
      Width           =   615
   End
   Begin VB.TextBox txtTablero 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   64
      Left            =   3000
      Locked          =   -1  'True
      TabIndex        =   64
      Top             =   3840
      Width           =   615
   End
   Begin VB.TextBox txtTablero 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   63
      Left            =   2280
      Locked          =   -1  'True
      TabIndex        =   63
      Top             =   3840
      Width           =   615
   End
   Begin VB.TextBox txtTablero 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   62
      Left            =   1560
      Locked          =   -1  'True
      TabIndex        =   62
      Top             =   3840
      Width           =   615
   End
   Begin VB.TextBox txtTablero 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   61
      Left            =   840
      Locked          =   -1  'True
      TabIndex        =   61
      Top             =   3840
      Width           =   615
   End
   Begin VB.TextBox txtTablero 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   60
      Left            =   120
      Locked          =   -1  'True
      TabIndex        =   60
      Top             =   3840
      Width           =   615
   End
   Begin VB.TextBox txtTablero 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   59
      Left            =   6600
      Locked          =   -1  'True
      TabIndex        =   59
      Top             =   3240
      Width           =   615
   End
   Begin VB.TextBox txtTablero 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   58
      Left            =   5880
      Locked          =   -1  'True
      TabIndex        =   58
      Top             =   3240
      Width           =   615
   End
   Begin VB.TextBox txtTablero 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   57
      Left            =   5160
      Locked          =   -1  'True
      TabIndex        =   57
      Top             =   3240
      Width           =   615
   End
   Begin VB.TextBox txtTablero 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   56
      Left            =   4440
      Locked          =   -1  'True
      TabIndex        =   56
      Top             =   3240
      Width           =   615
   End
   Begin VB.TextBox txtTablero 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   55
      Left            =   3720
      Locked          =   -1  'True
      TabIndex        =   55
      Top             =   3240
      Width           =   615
   End
   Begin VB.TextBox txtTablero 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   54
      Left            =   3000
      Locked          =   -1  'True
      TabIndex        =   54
      Top             =   3240
      Width           =   615
   End
   Begin VB.TextBox txtTablero 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   53
      Left            =   2280
      Locked          =   -1  'True
      TabIndex        =   53
      Top             =   3240
      Width           =   615
   End
   Begin VB.TextBox txtTablero 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   52
      Left            =   1560
      Locked          =   -1  'True
      TabIndex        =   52
      Top             =   3240
      Width           =   615
   End
   Begin VB.TextBox txtTablero 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   51
      Left            =   840
      Locked          =   -1  'True
      TabIndex        =   51
      Top             =   3240
      Width           =   615
   End
   Begin VB.TextBox txtTablero 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   50
      Left            =   120
      Locked          =   -1  'True
      TabIndex        =   50
      Top             =   3240
      Width           =   615
   End
   Begin VB.TextBox txtTablero 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   49
      Left            =   6600
      Locked          =   -1  'True
      TabIndex        =   49
      Top             =   2640
      Width           =   615
   End
   Begin VB.TextBox txtTablero 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   48
      Left            =   5880
      Locked          =   -1  'True
      TabIndex        =   48
      Top             =   2640
      Width           =   615
   End
   Begin VB.TextBox txtTablero 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   47
      Left            =   5160
      Locked          =   -1  'True
      TabIndex        =   47
      Top             =   2640
      Width           =   615
   End
   Begin VB.TextBox txtTablero 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   46
      Left            =   4440
      Locked          =   -1  'True
      TabIndex        =   46
      Top             =   2640
      Width           =   615
   End
   Begin VB.TextBox txtTablero 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   45
      Left            =   3720
      Locked          =   -1  'True
      TabIndex        =   45
      Top             =   2640
      Width           =   615
   End
   Begin VB.TextBox txtTablero 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   44
      Left            =   3000
      Locked          =   -1  'True
      TabIndex        =   44
      Top             =   2640
      Width           =   615
   End
   Begin VB.TextBox txtTablero 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   43
      Left            =   2280
      Locked          =   -1  'True
      TabIndex        =   43
      Top             =   2640
      Width           =   615
   End
   Begin VB.TextBox txtTablero 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   42
      Left            =   1560
      Locked          =   -1  'True
      TabIndex        =   42
      Top             =   2640
      Width           =   615
   End
   Begin VB.TextBox txtTablero 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   41
      Left            =   840
      Locked          =   -1  'True
      TabIndex        =   41
      Top             =   2640
      Width           =   615
   End
   Begin VB.TextBox txtTablero 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   40
      Left            =   120
      Locked          =   -1  'True
      TabIndex        =   40
      Top             =   2640
      Width           =   615
   End
   Begin VB.TextBox txtTablero 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   39
      Left            =   6600
      Locked          =   -1  'True
      TabIndex        =   39
      Top             =   2040
      Width           =   615
   End
   Begin VB.TextBox txtTablero 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   38
      Left            =   5880
      Locked          =   -1  'True
      TabIndex        =   38
      Top             =   2040
      Width           =   615
   End
   Begin VB.TextBox txtTablero 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   37
      Left            =   5160
      Locked          =   -1  'True
      TabIndex        =   37
      Top             =   2040
      Width           =   615
   End
   Begin VB.TextBox txtTablero 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   36
      Left            =   4440
      Locked          =   -1  'True
      TabIndex        =   36
      Top             =   2040
      Width           =   615
   End
   Begin VB.TextBox txtTablero 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   35
      Left            =   3720
      Locked          =   -1  'True
      TabIndex        =   35
      Top             =   2040
      Width           =   615
   End
   Begin VB.TextBox txtTablero 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   34
      Left            =   3000
      Locked          =   -1  'True
      TabIndex        =   34
      Top             =   2040
      Width           =   615
   End
   Begin VB.TextBox txtTablero 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   33
      Left            =   2280
      Locked          =   -1  'True
      TabIndex        =   33
      Top             =   2040
      Width           =   615
   End
   Begin VB.TextBox txtTablero 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   32
      Left            =   1560
      Locked          =   -1  'True
      TabIndex        =   32
      Top             =   2040
      Width           =   615
   End
   Begin VB.TextBox txtTablero 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   31
      Left            =   840
      Locked          =   -1  'True
      TabIndex        =   31
      Top             =   2040
      Width           =   615
   End
   Begin VB.TextBox txtTablero 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   30
      Left            =   120
      Locked          =   -1  'True
      TabIndex        =   30
      Top             =   2040
      Width           =   615
   End
   Begin VB.TextBox txtTablero 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   29
      Left            =   6600
      Locked          =   -1  'True
      TabIndex        =   29
      Top             =   1440
      Width           =   615
   End
   Begin VB.TextBox txtTablero 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   28
      Left            =   5880
      Locked          =   -1  'True
      TabIndex        =   28
      Top             =   1440
      Width           =   615
   End
   Begin VB.TextBox txtTablero 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   27
      Left            =   5160
      Locked          =   -1  'True
      TabIndex        =   27
      Top             =   1440
      Width           =   615
   End
   Begin VB.TextBox txtTablero 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   26
      Left            =   4440
      Locked          =   -1  'True
      TabIndex        =   26
      Top             =   1440
      Width           =   615
   End
   Begin VB.TextBox txtTablero 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   25
      Left            =   3720
      Locked          =   -1  'True
      TabIndex        =   25
      Top             =   1440
      Width           =   615
   End
   Begin VB.TextBox txtTablero 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   24
      Left            =   3000
      Locked          =   -1  'True
      TabIndex        =   24
      Top             =   1440
      Width           =   615
   End
   Begin VB.TextBox txtTablero 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   23
      Left            =   2280
      Locked          =   -1  'True
      TabIndex        =   23
      Top             =   1440
      Width           =   615
   End
   Begin VB.TextBox txtTablero 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   22
      Left            =   1560
      Locked          =   -1  'True
      TabIndex        =   22
      Top             =   1440
      Width           =   615
   End
   Begin VB.TextBox txtTablero 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   21
      Left            =   840
      Locked          =   -1  'True
      TabIndex        =   21
      Top             =   1440
      Width           =   615
   End
   Begin VB.TextBox txtTablero 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   20
      Left            =   120
      Locked          =   -1  'True
      TabIndex        =   20
      Top             =   1440
      Width           =   615
   End
   Begin VB.TextBox txtTablero 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   19
      Left            =   6600
      Locked          =   -1  'True
      TabIndex        =   19
      Top             =   840
      Width           =   615
   End
   Begin VB.TextBox txtTablero 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   18
      Left            =   5880
      Locked          =   -1  'True
      TabIndex        =   18
      Top             =   840
      Width           =   615
   End
   Begin VB.TextBox txtTablero 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   17
      Left            =   5160
      Locked          =   -1  'True
      TabIndex        =   17
      Top             =   840
      Width           =   615
   End
   Begin VB.TextBox txtTablero 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   16
      Left            =   4440
      Locked          =   -1  'True
      TabIndex        =   16
      Top             =   840
      Width           =   615
   End
   Begin VB.TextBox txtTablero 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   15
      Left            =   3720
      Locked          =   -1  'True
      TabIndex        =   15
      Top             =   840
      Width           =   615
   End
   Begin VB.TextBox txtTablero 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   14
      Left            =   3000
      Locked          =   -1  'True
      TabIndex        =   14
      Top             =   840
      Width           =   615
   End
   Begin VB.TextBox txtTablero 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   13
      Left            =   2280
      Locked          =   -1  'True
      TabIndex        =   13
      Top             =   840
      Width           =   615
   End
   Begin VB.TextBox txtTablero 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   12
      Left            =   1560
      Locked          =   -1  'True
      TabIndex        =   12
      Top             =   840
      Width           =   615
   End
   Begin VB.TextBox txtTablero 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   11
      Left            =   840
      Locked          =   -1  'True
      TabIndex        =   11
      Top             =   840
      Width           =   615
   End
   Begin VB.TextBox txtTablero 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   10
      Left            =   120
      Locked          =   -1  'True
      TabIndex        =   10
      Top             =   840
      Width           =   615
   End
   Begin VB.TextBox txtTablero 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   9
      Left            =   6600
      Locked          =   -1  'True
      TabIndex        =   9
      Top             =   240
      Width           =   615
   End
   Begin VB.TextBox txtTablero 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   8
      Left            =   5880
      Locked          =   -1  'True
      TabIndex        =   8
      Top             =   240
      Width           =   615
   End
   Begin VB.TextBox txtTablero 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   7
      Left            =   5160
      Locked          =   -1  'True
      TabIndex        =   7
      Top             =   240
      Width           =   615
   End
   Begin VB.TextBox txtTablero 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   6
      Left            =   4440
      Locked          =   -1  'True
      TabIndex        =   6
      Top             =   240
      Width           =   615
   End
   Begin VB.TextBox txtTablero 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   5
      Left            =   3720
      Locked          =   -1  'True
      TabIndex        =   5
      Top             =   240
      Width           =   615
   End
   Begin VB.TextBox txtTablero 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   4
      Left            =   3000
      Locked          =   -1  'True
      TabIndex        =   4
      Top             =   240
      Width           =   615
   End
   Begin VB.TextBox txtTablero 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   3
      Left            =   2280
      Locked          =   -1  'True
      TabIndex        =   3
      Top             =   240
      Width           =   615
   End
   Begin VB.TextBox txtTablero 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   2
      Left            =   1560
      Locked          =   -1  'True
      TabIndex        =   2
      Top             =   240
      Width           =   615
   End
   Begin VB.TextBox txtTablero 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   1
      Left            =   840
      Locked          =   -1  'True
      TabIndex        =   1
      Top             =   240
      Width           =   615
   End
   Begin VB.TextBox txtTablero 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Height          =   495
      Index           =   0
      Left            =   120
      Locked          =   -1  'True
      TabIndex        =   0
      Top             =   240
      Width           =   615
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H00000000&
      Caption         =   "Tablero"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   6255
      Left            =   0
      TabIndex        =   100
      Top             =   0
      Width           =   7335
   End
   Begin VB.Label Label1 
      BackColor       =   &H0080C0FF&
      Caption         =   "Configuracion de Barcos"
      Height          =   375
      Left            =   7440
      TabIndex        =   104
      Top             =   0
      Width           =   1575
   End
End
Attribute VB_Name = "frmBatalla"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Function entraBarco(ByVal columna As Byte, ByVal bytebarco As Byte) As Boolean
'If (columna + bytebarco - 1) <= 9 Then
'    entraBarco = True
'Else
'    entraBarco = False
'End If
entraBarco = ((columna + bytebarco - 1) < 10)
End Function
Private Function entraBarcoVer(ByVal fila As Byte, ByVal bytebarco As Byte) As Boolean
If (fila + bytebarco - 1) <= 9 Then
    entraBarcoVer = True
Else
    entraBarcoVer = False
End If
End Function
Private Function hayAgua(ByVal columna As Byte, ByVal fila As Byte, ByVal bytebarco As Byte, ByRef matriz() As Byte) As Boolean
Dim sumador As Byte: sumador = 0
Dim f As Integer
Dim c As Integer
    For f = fila - 1 To fila + 1
        For c = columna - 1 To columna + bytebarco
            If (f <= 9 And f >= 0) Then
                If (c <= 9 And c >= 0) Then
                    sumador = sumador + matriz(f, c)
                End If
            End If
        Next c, f

'If (sumador = 0) Then
'    hayAgua = True
'Else
'    hayAgua = False
'End If
hayAgua = (sumador = 0)

End Function
Private Function hayAguaVer(ByVal columna As Byte, ByVal fila As Byte, ByVal bytebarco As Byte, ByRef matriz() As Byte) As Boolean
Dim sumador As Byte: sumador = 0
Dim f As Integer
Dim c As Integer
    For f = fila - 1 To fila + bytebarco
        For c = columna - 1 To columna + 1
            If (f <= 9 And f >= 0) Then
                If (c <= 9 And c >= 0) Then
                    sumador = sumador + matriz(f, c)
                End If
            End If
        Next c, f

If (sumador = 0) Then
    hayAguaVer = True
Else
    hayAguaVer = False
End If

End Function
Private Sub ponerBarco(ByVal columna As Byte, ByVal fila As Byte, ByVal bytebarco As Byte, ByRef matriz() As Byte)
Dim X As Byte, contador As Byte: contador = 0
For X = columna To columna + bytebarco - 1
    matriz(fila, X) = bytebarco
Next X
End Sub
Private Sub ponerBarcoVer(ByVal columna As Byte, ByVal fila As Byte, ByVal bytebarco As Byte, ByRef matriz() As Byte)
Dim X As Byte, contador As Byte: contador = 0
For X = fila To fila + bytebarco - 1
    matriz(X, columna) = bytebarco
Next X
End Sub
Private Sub limpiarMat(ByRef matriz() As Byte)
Dim X As Byte, Y As Byte
For X = 0 To 9
    For Y = 0 To 9
        matriz(X, Y) = 0
    Next Y
Next X
End Sub
Private Sub mostrarMat(ByRef matriz() As Byte)
Dim X As Byte
For X = 0 To 99
    txtTablero(X) = matriz(X \ 10, X Mod 10)
    If matriz(X \ 10, X Mod 10) <> 0 Then
        txtTablero(X).BackColor = vbBlack
        txtTablero(X).ForeColor = vbRed
    Else
        txtTablero(X).BackColor = &HC0C000
        txtTablero(X).ForeColor = vbWhite
    End If
Next X
End Sub
Private Sub VecBarcos(ByRef Barcos() As Byte)
Dim fila As Byte, X As Byte
Dim columna As Byte
Dim contador As Byte: contador = 0
For fila = 0 To 5
    For columna = fila + 1 To 5
        Barcos(contador) = fila + 1
        contador = contador + 1
    Next columna
Next fila

For fila = 1 To 15
    contador = Fix(15 * Rnd)
    columna = Fix(15 * Rnd)
    X = Barcos(contador)
    Barcos(contador) = Barcos(columna)
    Barcos(columna) = X
Next fila

For fila = 0 To 14
    lstBarcos.AddItem Str(Barcos(fila)), lstBarcos.ListCount
Next fila

End Sub

Private Sub cmdAzar_Click()
Dim matriz(9, 9) As Byte
Dim Barcos(14) As Byte
Dim fila As Byte
Dim columna As Byte
Dim contBarcos As Byte
Dim n As Byte
Dim ponebarco As Boolean
Do: DoEvents
    lstBarcos.Clear
    VecBarcos Barcos()
    contBarcos = 0
    limpiarMat matriz()
    For n = 0 To 14: ponebarco = False
        fila = Fix(10 * Rnd)
        columna = Fix(10 * Rnd)
        If entraBarco(columna, Barcos(n)) Then
            If hayAgua(columna, fila, Barcos(n), matriz()) Then
                ponerBarco columna, fila, Barcos(n), matriz()
                contBarcos = contBarcos + 1
                ponebarco = True
            End If
        End If
    Next n
    frmBatalla.Caption = Str(contBarcos) & " Barcos puestos"
Loop While Not contBarcos > 10
mostrarMat matriz()

End Sub

Private Sub cmdBarcos_Click()
Dim matriz(9, 9) As Byte
Dim Barcos(14) As Byte
Dim fila As Byte
Dim columna As Byte
Dim contBarcos As Byte
Dim n As Byte
Dim ponebarco As Boolean
Do: DoEvents
    lstBarcos.Clear
    VecBarcos Barcos()
    contBarcos = 0
    limpiarMat matriz()
    For n = 0 To 14: ponebarco = False
        'fila = Fix(10 * Rnd)
        'columna = Fix(10 * Rnd)
        fila = 0: Do: DoEvents
            columna = 0: Do: DoEvents
                If entraBarco(columna, Barcos(n)) Then
                    If hayAgua(columna, fila, Barcos(n), matriz()) Then
                        ponerBarco columna, fila, Barcos(n), matriz()
                        contBarcos = contBarcos + 1
                        ponebarco = True
                    End If
                End If
            columna = columna + 1: Loop While Not (ponebarco Or columna = 10)
        fila = fila + 1: Loop While Not (ponebarco Or fila = 10)
    Next n
    frmBatalla.Caption = Str(contBarcos) & " Barcos puestos"
Loop While Not contBarcos = 15
mostrarMat matriz()
End Sub

Private Sub cmdSalir_Click()
Form_Unload 0
End Sub

Private Sub cmdVertical_Click()
Dim matriz(9, 9) As Byte
Dim Barcos(14) As Byte
Dim fila As Byte
Dim columna As Byte
Dim contBarcos As Byte
Dim n As Byte
Dim ponebarco As Boolean
Do: DoEvents
    lstBarcos.Clear
    VecBarcos Barcos()
    contBarcos = 0
    limpiarMat matriz()
    For n = 0 To 14: ponebarco = False
        'fila = Fix(10 * Rnd)
        'columna = Fix(10 * Rnd)
        fila = 0: Do: DoEvents
            columna = 0: Do: DoEvents
                If entraBarcoVer(columna, Barcos(n)) Then
                    If hayAguaVer(columna, fila, Barcos(n), matriz()) Then
                        ponerBarcoVer columna, fila, Barcos(n), matriz()
                        contBarcos = contBarcos + 1
                        ponebarco = True
                    End If
                End If
            columna = columna + 1: Loop While Not (ponebarco Or columna = 10)
        fila = fila + 1: Loop While Not (ponebarco Or fila = 10)
    Next n
    frmBatalla.Caption = Str(contBarcos) & " Barcos puestos"
Loop While Not contBarcos = 15
mostrarMat matriz()
End Sub

Private Sub Form_Load()
Randomize Timer
End Sub

Private Sub Form_Unload(Cancel As Integer)
End
End Sub


