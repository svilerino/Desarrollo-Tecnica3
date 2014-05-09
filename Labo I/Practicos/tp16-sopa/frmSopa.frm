VERSION 5.00
Begin VB.Form frmSopa 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Sopa de Letras"
   ClientHeight    =   9720
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   10440
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   9720
   ScaleWidth      =   10440
   StartUpPosition =   2  'CenterScreen
   Begin VB.ListBox lstCantidad 
      Height          =   8835
      Left            =   7440
      TabIndex        =   401
      Top             =   840
      Width           =   2775
   End
   Begin VB.CommandButton cmdSopa 
      Caption         =   "&Sopa"
      Height          =   615
      Left            =   7440
      TabIndex        =   400
      Top             =   120
      Width           =   2055
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   399
      Left            =   6960
      Locked          =   -1  'True
      TabIndex        =   399
      Top             =   9240
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   398
      Left            =   6600
      Locked          =   -1  'True
      TabIndex        =   398
      Top             =   9240
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   397
      Left            =   6240
      Locked          =   -1  'True
      TabIndex        =   397
      Top             =   9240
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   396
      Left            =   5880
      Locked          =   -1  'True
      TabIndex        =   396
      Top             =   9240
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   395
      Left            =   5520
      Locked          =   -1  'True
      TabIndex        =   395
      Top             =   9240
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   394
      Left            =   5160
      Locked          =   -1  'True
      TabIndex        =   394
      Top             =   9240
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   393
      Left            =   4800
      Locked          =   -1  'True
      TabIndex        =   393
      Top             =   9240
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   392
      Left            =   4440
      Locked          =   -1  'True
      TabIndex        =   392
      Top             =   9240
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   391
      Left            =   4080
      Locked          =   -1  'True
      TabIndex        =   391
      Top             =   9240
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   390
      Left            =   3720
      Locked          =   -1  'True
      TabIndex        =   390
      Top             =   9240
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   389
      Left            =   3360
      Locked          =   -1  'True
      TabIndex        =   389
      Top             =   9240
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   388
      Left            =   3000
      Locked          =   -1  'True
      TabIndex        =   388
      Top             =   9240
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   387
      Left            =   2640
      Locked          =   -1  'True
      TabIndex        =   387
      Top             =   9240
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   386
      Left            =   2280
      Locked          =   -1  'True
      TabIndex        =   386
      Top             =   9240
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   385
      Left            =   1920
      Locked          =   -1  'True
      TabIndex        =   385
      Top             =   9240
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   384
      Left            =   1560
      Locked          =   -1  'True
      TabIndex        =   384
      Top             =   9240
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   383
      Left            =   1200
      Locked          =   -1  'True
      TabIndex        =   383
      Top             =   9240
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   382
      Left            =   840
      Locked          =   -1  'True
      TabIndex        =   382
      Top             =   9240
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   381
      Left            =   480
      Locked          =   -1  'True
      TabIndex        =   381
      Top             =   9240
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   380
      Left            =   120
      Locked          =   -1  'True
      TabIndex        =   380
      Top             =   9240
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   379
      Left            =   6960
      Locked          =   -1  'True
      TabIndex        =   379
      Top             =   8760
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   378
      Left            =   6600
      Locked          =   -1  'True
      TabIndex        =   378
      Top             =   8760
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   377
      Left            =   6240
      Locked          =   -1  'True
      TabIndex        =   377
      Top             =   8760
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   376
      Left            =   5880
      Locked          =   -1  'True
      TabIndex        =   376
      Top             =   8760
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   375
      Left            =   5520
      Locked          =   -1  'True
      TabIndex        =   375
      Top             =   8760
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   374
      Left            =   5160
      Locked          =   -1  'True
      TabIndex        =   374
      Top             =   8760
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   373
      Left            =   4800
      Locked          =   -1  'True
      TabIndex        =   373
      Top             =   8760
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   372
      Left            =   4440
      Locked          =   -1  'True
      TabIndex        =   372
      Top             =   8760
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   371
      Left            =   4080
      Locked          =   -1  'True
      TabIndex        =   371
      Top             =   8760
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   370
      Left            =   3720
      Locked          =   -1  'True
      TabIndex        =   370
      Top             =   8760
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   369
      Left            =   3360
      Locked          =   -1  'True
      TabIndex        =   369
      Top             =   8760
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   368
      Left            =   3000
      Locked          =   -1  'True
      TabIndex        =   368
      Top             =   8760
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   367
      Left            =   2640
      Locked          =   -1  'True
      TabIndex        =   367
      Top             =   8760
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   366
      Left            =   2280
      Locked          =   -1  'True
      TabIndex        =   366
      Top             =   8760
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   365
      Left            =   1920
      Locked          =   -1  'True
      TabIndex        =   365
      Top             =   8760
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   364
      Left            =   1560
      Locked          =   -1  'True
      TabIndex        =   364
      Top             =   8760
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   363
      Left            =   1200
      Locked          =   -1  'True
      TabIndex        =   363
      Top             =   8760
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   362
      Left            =   840
      Locked          =   -1  'True
      TabIndex        =   362
      Top             =   8760
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   361
      Left            =   480
      Locked          =   -1  'True
      TabIndex        =   361
      Top             =   8760
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   360
      Left            =   120
      Locked          =   -1  'True
      TabIndex        =   360
      Top             =   8760
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   359
      Left            =   6960
      Locked          =   -1  'True
      TabIndex        =   359
      Top             =   8280
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   358
      Left            =   6600
      Locked          =   -1  'True
      TabIndex        =   358
      Top             =   8280
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   357
      Left            =   6240
      Locked          =   -1  'True
      TabIndex        =   357
      Top             =   8280
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   356
      Left            =   5880
      Locked          =   -1  'True
      TabIndex        =   356
      Top             =   8280
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   355
      Left            =   5520
      Locked          =   -1  'True
      TabIndex        =   355
      Top             =   8280
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   354
      Left            =   5160
      Locked          =   -1  'True
      TabIndex        =   354
      Top             =   8280
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   353
      Left            =   4800
      Locked          =   -1  'True
      TabIndex        =   353
      Top             =   8280
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   352
      Left            =   4440
      Locked          =   -1  'True
      TabIndex        =   352
      Top             =   8280
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   351
      Left            =   4080
      Locked          =   -1  'True
      TabIndex        =   351
      Top             =   8280
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   350
      Left            =   3720
      Locked          =   -1  'True
      TabIndex        =   350
      Top             =   8280
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   349
      Left            =   3360
      Locked          =   -1  'True
      TabIndex        =   349
      Top             =   8280
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   348
      Left            =   3000
      Locked          =   -1  'True
      TabIndex        =   348
      Top             =   8280
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   347
      Left            =   2640
      Locked          =   -1  'True
      TabIndex        =   347
      Top             =   8280
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   346
      Left            =   2280
      Locked          =   -1  'True
      TabIndex        =   346
      Top             =   8280
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   345
      Left            =   1920
      Locked          =   -1  'True
      TabIndex        =   345
      Top             =   8280
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   344
      Left            =   1560
      Locked          =   -1  'True
      TabIndex        =   344
      Top             =   8280
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   343
      Left            =   1200
      Locked          =   -1  'True
      TabIndex        =   343
      Top             =   8280
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   342
      Left            =   840
      Locked          =   -1  'True
      TabIndex        =   342
      Top             =   8280
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   341
      Left            =   480
      Locked          =   -1  'True
      TabIndex        =   341
      Top             =   8280
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   340
      Left            =   120
      Locked          =   -1  'True
      TabIndex        =   340
      Top             =   8280
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   339
      Left            =   6960
      Locked          =   -1  'True
      TabIndex        =   339
      Top             =   7800
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   338
      Left            =   6600
      Locked          =   -1  'True
      TabIndex        =   338
      Top             =   7800
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   337
      Left            =   6240
      Locked          =   -1  'True
      TabIndex        =   337
      Top             =   7800
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   336
      Left            =   5880
      Locked          =   -1  'True
      TabIndex        =   336
      Top             =   7800
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   335
      Left            =   5520
      Locked          =   -1  'True
      TabIndex        =   335
      Top             =   7800
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   334
      Left            =   5160
      Locked          =   -1  'True
      TabIndex        =   334
      Top             =   7800
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   333
      Left            =   4800
      Locked          =   -1  'True
      TabIndex        =   333
      Top             =   7800
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   332
      Left            =   4440
      Locked          =   -1  'True
      TabIndex        =   332
      Top             =   7800
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   331
      Left            =   4080
      Locked          =   -1  'True
      TabIndex        =   331
      Top             =   7800
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   330
      Left            =   3720
      Locked          =   -1  'True
      TabIndex        =   330
      Top             =   7800
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   329
      Left            =   3360
      Locked          =   -1  'True
      TabIndex        =   329
      Top             =   7800
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   328
      Left            =   3000
      Locked          =   -1  'True
      TabIndex        =   328
      Top             =   7800
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   327
      Left            =   2640
      Locked          =   -1  'True
      TabIndex        =   327
      Top             =   7800
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   326
      Left            =   2280
      Locked          =   -1  'True
      TabIndex        =   326
      Top             =   7800
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   325
      Left            =   1920
      Locked          =   -1  'True
      TabIndex        =   325
      Top             =   7800
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   324
      Left            =   1560
      Locked          =   -1  'True
      TabIndex        =   324
      Top             =   7800
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   323
      Left            =   1200
      Locked          =   -1  'True
      TabIndex        =   323
      Top             =   7800
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   322
      Left            =   840
      Locked          =   -1  'True
      TabIndex        =   322
      Top             =   7800
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   321
      Left            =   480
      Locked          =   -1  'True
      TabIndex        =   321
      Top             =   7800
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   320
      Left            =   120
      Locked          =   -1  'True
      TabIndex        =   320
      Top             =   7800
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   319
      Left            =   6960
      Locked          =   -1  'True
      TabIndex        =   319
      Top             =   7320
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   318
      Left            =   6600
      Locked          =   -1  'True
      TabIndex        =   318
      Top             =   7320
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   317
      Left            =   6240
      Locked          =   -1  'True
      TabIndex        =   317
      Top             =   7320
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   316
      Left            =   5880
      Locked          =   -1  'True
      TabIndex        =   316
      Top             =   7320
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   315
      Left            =   5520
      Locked          =   -1  'True
      TabIndex        =   315
      Top             =   7320
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   314
      Left            =   5160
      Locked          =   -1  'True
      TabIndex        =   314
      Top             =   7320
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   313
      Left            =   4800
      Locked          =   -1  'True
      TabIndex        =   313
      Top             =   7320
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   312
      Left            =   4440
      Locked          =   -1  'True
      TabIndex        =   312
      Top             =   7320
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   311
      Left            =   4080
      Locked          =   -1  'True
      TabIndex        =   311
      Top             =   7320
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   310
      Left            =   3720
      Locked          =   -1  'True
      TabIndex        =   310
      Top             =   7320
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   309
      Left            =   3360
      Locked          =   -1  'True
      TabIndex        =   309
      Top             =   7320
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   308
      Left            =   3000
      Locked          =   -1  'True
      TabIndex        =   308
      Top             =   7320
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   307
      Left            =   2640
      Locked          =   -1  'True
      TabIndex        =   307
      Top             =   7320
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   306
      Left            =   2280
      Locked          =   -1  'True
      TabIndex        =   306
      Top             =   7320
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   305
      Left            =   1920
      Locked          =   -1  'True
      TabIndex        =   305
      Top             =   7320
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   304
      Left            =   1560
      Locked          =   -1  'True
      TabIndex        =   304
      Top             =   7320
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   303
      Left            =   1200
      Locked          =   -1  'True
      TabIndex        =   303
      Top             =   7320
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   302
      Left            =   840
      Locked          =   -1  'True
      TabIndex        =   302
      Top             =   7320
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   301
      Left            =   480
      Locked          =   -1  'True
      TabIndex        =   301
      Top             =   7320
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   300
      Left            =   120
      Locked          =   -1  'True
      TabIndex        =   300
      Top             =   7320
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   299
      Left            =   6960
      Locked          =   -1  'True
      TabIndex        =   299
      Top             =   6840
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   298
      Left            =   6600
      Locked          =   -1  'True
      TabIndex        =   298
      Top             =   6840
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   297
      Left            =   6240
      Locked          =   -1  'True
      TabIndex        =   297
      Top             =   6840
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   296
      Left            =   5880
      Locked          =   -1  'True
      TabIndex        =   296
      Top             =   6840
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   295
      Left            =   5520
      Locked          =   -1  'True
      TabIndex        =   295
      Top             =   6840
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   294
      Left            =   5160
      Locked          =   -1  'True
      TabIndex        =   294
      Top             =   6840
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   293
      Left            =   4800
      Locked          =   -1  'True
      TabIndex        =   293
      Top             =   6840
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   292
      Left            =   4440
      Locked          =   -1  'True
      TabIndex        =   292
      Top             =   6840
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   291
      Left            =   4080
      Locked          =   -1  'True
      TabIndex        =   291
      Top             =   6840
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   290
      Left            =   3720
      Locked          =   -1  'True
      TabIndex        =   290
      Top             =   6840
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   289
      Left            =   3360
      Locked          =   -1  'True
      TabIndex        =   289
      Top             =   6840
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   288
      Left            =   3000
      Locked          =   -1  'True
      TabIndex        =   288
      Top             =   6840
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   287
      Left            =   2640
      Locked          =   -1  'True
      TabIndex        =   287
      Top             =   6840
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   286
      Left            =   2280
      Locked          =   -1  'True
      TabIndex        =   286
      Top             =   6840
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   285
      Left            =   1920
      Locked          =   -1  'True
      TabIndex        =   285
      Top             =   6840
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   284
      Left            =   1560
      Locked          =   -1  'True
      TabIndex        =   284
      Top             =   6840
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   283
      Left            =   1200
      Locked          =   -1  'True
      TabIndex        =   283
      Top             =   6840
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   282
      Left            =   840
      Locked          =   -1  'True
      TabIndex        =   282
      Top             =   6840
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   281
      Left            =   480
      Locked          =   -1  'True
      TabIndex        =   281
      Top             =   6840
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   280
      Left            =   120
      Locked          =   -1  'True
      TabIndex        =   280
      Top             =   6840
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   279
      Left            =   6960
      Locked          =   -1  'True
      TabIndex        =   279
      Top             =   6360
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   278
      Left            =   6600
      Locked          =   -1  'True
      TabIndex        =   278
      Top             =   6360
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   277
      Left            =   6240
      Locked          =   -1  'True
      TabIndex        =   277
      Top             =   6360
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   276
      Left            =   5880
      Locked          =   -1  'True
      TabIndex        =   276
      Top             =   6360
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   275
      Left            =   5520
      Locked          =   -1  'True
      TabIndex        =   275
      Top             =   6360
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   274
      Left            =   5160
      Locked          =   -1  'True
      TabIndex        =   274
      Top             =   6360
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   273
      Left            =   4800
      Locked          =   -1  'True
      TabIndex        =   273
      Top             =   6360
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   272
      Left            =   4440
      Locked          =   -1  'True
      TabIndex        =   272
      Top             =   6360
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   271
      Left            =   4080
      Locked          =   -1  'True
      TabIndex        =   271
      Top             =   6360
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   270
      Left            =   3720
      Locked          =   -1  'True
      TabIndex        =   270
      Top             =   6360
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   269
      Left            =   3360
      Locked          =   -1  'True
      TabIndex        =   269
      Top             =   6360
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   268
      Left            =   3000
      Locked          =   -1  'True
      TabIndex        =   268
      Top             =   6360
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   267
      Left            =   2640
      Locked          =   -1  'True
      TabIndex        =   267
      Top             =   6360
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   266
      Left            =   2280
      Locked          =   -1  'True
      TabIndex        =   266
      Top             =   6360
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   265
      Left            =   1920
      Locked          =   -1  'True
      TabIndex        =   265
      Top             =   6360
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   264
      Left            =   1560
      Locked          =   -1  'True
      TabIndex        =   264
      Top             =   6360
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   263
      Left            =   1200
      Locked          =   -1  'True
      TabIndex        =   263
      Top             =   6360
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   262
      Left            =   840
      Locked          =   -1  'True
      TabIndex        =   262
      Top             =   6360
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   261
      Left            =   480
      Locked          =   -1  'True
      TabIndex        =   261
      Top             =   6360
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   260
      Left            =   120
      Locked          =   -1  'True
      TabIndex        =   260
      Top             =   6360
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   259
      Left            =   6960
      Locked          =   -1  'True
      TabIndex        =   259
      Top             =   5880
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   258
      Left            =   6600
      Locked          =   -1  'True
      TabIndex        =   258
      Top             =   5880
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   257
      Left            =   6240
      Locked          =   -1  'True
      TabIndex        =   257
      Top             =   5880
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   256
      Left            =   5880
      Locked          =   -1  'True
      TabIndex        =   256
      Top             =   5880
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   255
      Left            =   5520
      Locked          =   -1  'True
      TabIndex        =   255
      Top             =   5880
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   254
      Left            =   5160
      Locked          =   -1  'True
      TabIndex        =   254
      Top             =   5880
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   253
      Left            =   4800
      Locked          =   -1  'True
      TabIndex        =   253
      Top             =   5880
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   252
      Left            =   4440
      Locked          =   -1  'True
      TabIndex        =   252
      Top             =   5880
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   251
      Left            =   4080
      Locked          =   -1  'True
      TabIndex        =   251
      Top             =   5880
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   250
      Left            =   3720
      Locked          =   -1  'True
      TabIndex        =   250
      Top             =   5880
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   249
      Left            =   3360
      Locked          =   -1  'True
      TabIndex        =   249
      Top             =   5880
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   248
      Left            =   3000
      Locked          =   -1  'True
      TabIndex        =   248
      Top             =   5880
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   247
      Left            =   2640
      Locked          =   -1  'True
      TabIndex        =   247
      Top             =   5880
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   246
      Left            =   2280
      Locked          =   -1  'True
      TabIndex        =   246
      Top             =   5880
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   245
      Left            =   1920
      Locked          =   -1  'True
      TabIndex        =   245
      Top             =   5880
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   244
      Left            =   1560
      Locked          =   -1  'True
      TabIndex        =   244
      Top             =   5880
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   243
      Left            =   1200
      Locked          =   -1  'True
      TabIndex        =   243
      Top             =   5880
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   242
      Left            =   840
      Locked          =   -1  'True
      TabIndex        =   242
      Top             =   5880
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   241
      Left            =   480
      Locked          =   -1  'True
      TabIndex        =   241
      Top             =   5880
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   240
      Left            =   120
      Locked          =   -1  'True
      TabIndex        =   240
      Top             =   5880
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   239
      Left            =   6960
      Locked          =   -1  'True
      TabIndex        =   239
      Top             =   5400
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   238
      Left            =   6600
      Locked          =   -1  'True
      TabIndex        =   238
      Top             =   5400
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   237
      Left            =   6240
      Locked          =   -1  'True
      TabIndex        =   237
      Top             =   5400
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   236
      Left            =   5880
      Locked          =   -1  'True
      TabIndex        =   236
      Top             =   5400
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   235
      Left            =   5520
      Locked          =   -1  'True
      TabIndex        =   235
      Top             =   5400
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   234
      Left            =   5160
      Locked          =   -1  'True
      TabIndex        =   234
      Top             =   5400
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   233
      Left            =   4800
      Locked          =   -1  'True
      TabIndex        =   233
      Top             =   5400
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   232
      Left            =   4440
      Locked          =   -1  'True
      TabIndex        =   232
      Top             =   5400
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   231
      Left            =   4080
      Locked          =   -1  'True
      TabIndex        =   231
      Top             =   5400
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   230
      Left            =   3720
      Locked          =   -1  'True
      TabIndex        =   230
      Top             =   5400
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   229
      Left            =   3360
      Locked          =   -1  'True
      TabIndex        =   229
      Top             =   5400
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   228
      Left            =   3000
      Locked          =   -1  'True
      TabIndex        =   228
      Top             =   5400
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   227
      Left            =   2640
      Locked          =   -1  'True
      TabIndex        =   227
      Top             =   5400
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   226
      Left            =   2280
      Locked          =   -1  'True
      TabIndex        =   226
      Top             =   5400
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   225
      Left            =   1920
      Locked          =   -1  'True
      TabIndex        =   225
      Top             =   5400
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   224
      Left            =   1560
      Locked          =   -1  'True
      TabIndex        =   224
      Top             =   5400
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   223
      Left            =   1200
      Locked          =   -1  'True
      TabIndex        =   223
      Top             =   5400
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   222
      Left            =   840
      Locked          =   -1  'True
      TabIndex        =   222
      Top             =   5400
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   221
      Left            =   480
      Locked          =   -1  'True
      TabIndex        =   221
      Top             =   5400
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   220
      Left            =   120
      Locked          =   -1  'True
      TabIndex        =   220
      Top             =   5400
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   219
      Left            =   6960
      Locked          =   -1  'True
      TabIndex        =   219
      Top             =   4920
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   218
      Left            =   6600
      Locked          =   -1  'True
      TabIndex        =   218
      Top             =   4920
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   217
      Left            =   6240
      Locked          =   -1  'True
      TabIndex        =   217
      Top             =   4920
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   216
      Left            =   5880
      Locked          =   -1  'True
      TabIndex        =   216
      Top             =   4920
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   215
      Left            =   5520
      Locked          =   -1  'True
      TabIndex        =   215
      Top             =   4920
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   214
      Left            =   5160
      Locked          =   -1  'True
      TabIndex        =   214
      Top             =   4920
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   213
      Left            =   4800
      Locked          =   -1  'True
      TabIndex        =   213
      Top             =   4920
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   212
      Left            =   4440
      Locked          =   -1  'True
      TabIndex        =   212
      Top             =   4920
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   211
      Left            =   4080
      Locked          =   -1  'True
      TabIndex        =   211
      Top             =   4920
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   210
      Left            =   3720
      Locked          =   -1  'True
      TabIndex        =   210
      Top             =   4920
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   209
      Left            =   3360
      Locked          =   -1  'True
      TabIndex        =   209
      Top             =   4920
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   208
      Left            =   3000
      Locked          =   -1  'True
      TabIndex        =   208
      Top             =   4920
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   207
      Left            =   2640
      Locked          =   -1  'True
      TabIndex        =   207
      Top             =   4920
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   206
      Left            =   2280
      Locked          =   -1  'True
      TabIndex        =   206
      Top             =   4920
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   205
      Left            =   1920
      Locked          =   -1  'True
      TabIndex        =   205
      Top             =   4920
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   204
      Left            =   1560
      Locked          =   -1  'True
      TabIndex        =   204
      Top             =   4920
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   203
      Left            =   1200
      Locked          =   -1  'True
      TabIndex        =   203
      Top             =   4920
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   202
      Left            =   840
      Locked          =   -1  'True
      TabIndex        =   202
      Top             =   4920
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   201
      Left            =   480
      Locked          =   -1  'True
      TabIndex        =   201
      Top             =   4920
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   200
      Left            =   120
      Locked          =   -1  'True
      TabIndex        =   200
      Top             =   4920
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   199
      Left            =   6960
      Locked          =   -1  'True
      TabIndex        =   199
      Top             =   4440
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   198
      Left            =   6600
      Locked          =   -1  'True
      TabIndex        =   198
      Top             =   4440
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   197
      Left            =   6240
      Locked          =   -1  'True
      TabIndex        =   197
      Top             =   4440
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   196
      Left            =   5880
      Locked          =   -1  'True
      TabIndex        =   196
      Top             =   4440
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   195
      Left            =   5520
      Locked          =   -1  'True
      TabIndex        =   195
      Top             =   4440
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   194
      Left            =   5160
      Locked          =   -1  'True
      TabIndex        =   194
      Top             =   4440
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   193
      Left            =   4800
      Locked          =   -1  'True
      TabIndex        =   193
      Top             =   4440
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   192
      Left            =   4440
      Locked          =   -1  'True
      TabIndex        =   192
      Top             =   4440
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   191
      Left            =   4080
      Locked          =   -1  'True
      TabIndex        =   191
      Top             =   4440
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   190
      Left            =   3720
      Locked          =   -1  'True
      TabIndex        =   190
      Top             =   4440
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   189
      Left            =   3360
      Locked          =   -1  'True
      TabIndex        =   189
      Top             =   4440
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   188
      Left            =   3000
      Locked          =   -1  'True
      TabIndex        =   188
      Top             =   4440
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   187
      Left            =   2640
      Locked          =   -1  'True
      TabIndex        =   187
      Top             =   4440
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   186
      Left            =   2280
      Locked          =   -1  'True
      TabIndex        =   186
      Top             =   4440
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   185
      Left            =   1920
      Locked          =   -1  'True
      TabIndex        =   185
      Top             =   4440
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   184
      Left            =   1560
      Locked          =   -1  'True
      TabIndex        =   184
      Top             =   4440
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   183
      Left            =   1200
      Locked          =   -1  'True
      TabIndex        =   183
      Top             =   4440
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   182
      Left            =   840
      Locked          =   -1  'True
      TabIndex        =   182
      Top             =   4440
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   181
      Left            =   480
      Locked          =   -1  'True
      TabIndex        =   181
      Top             =   4440
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   180
      Left            =   120
      Locked          =   -1  'True
      TabIndex        =   180
      Top             =   4440
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   179
      Left            =   6960
      Locked          =   -1  'True
      TabIndex        =   179
      Top             =   3960
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   178
      Left            =   6600
      Locked          =   -1  'True
      TabIndex        =   178
      Top             =   3960
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   177
      Left            =   6240
      Locked          =   -1  'True
      TabIndex        =   177
      Top             =   3960
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   176
      Left            =   5880
      Locked          =   -1  'True
      TabIndex        =   176
      Top             =   3960
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   175
      Left            =   5520
      Locked          =   -1  'True
      TabIndex        =   175
      Top             =   3960
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   174
      Left            =   5160
      Locked          =   -1  'True
      TabIndex        =   174
      Top             =   3960
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   173
      Left            =   4800
      Locked          =   -1  'True
      TabIndex        =   173
      Top             =   3960
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   172
      Left            =   4440
      Locked          =   -1  'True
      TabIndex        =   172
      Top             =   3960
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   171
      Left            =   4080
      Locked          =   -1  'True
      TabIndex        =   171
      Top             =   3960
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   170
      Left            =   3720
      Locked          =   -1  'True
      TabIndex        =   170
      Top             =   3960
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   169
      Left            =   3360
      Locked          =   -1  'True
      TabIndex        =   169
      Top             =   3960
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   168
      Left            =   3000
      Locked          =   -1  'True
      TabIndex        =   168
      Top             =   3960
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   167
      Left            =   2640
      Locked          =   -1  'True
      TabIndex        =   167
      Top             =   3960
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   166
      Left            =   2280
      Locked          =   -1  'True
      TabIndex        =   166
      Top             =   3960
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   165
      Left            =   1920
      Locked          =   -1  'True
      TabIndex        =   165
      Top             =   3960
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   164
      Left            =   1560
      Locked          =   -1  'True
      TabIndex        =   164
      Top             =   3960
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   163
      Left            =   1200
      Locked          =   -1  'True
      TabIndex        =   163
      Top             =   3960
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   162
      Left            =   840
      Locked          =   -1  'True
      TabIndex        =   162
      Top             =   3960
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   161
      Left            =   480
      Locked          =   -1  'True
      TabIndex        =   161
      Top             =   3960
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   160
      Left            =   120
      Locked          =   -1  'True
      TabIndex        =   160
      Top             =   3960
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   159
      Left            =   6960
      Locked          =   -1  'True
      TabIndex        =   159
      Top             =   3480
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   158
      Left            =   6600
      Locked          =   -1  'True
      TabIndex        =   158
      Top             =   3480
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   157
      Left            =   6240
      Locked          =   -1  'True
      TabIndex        =   157
      Top             =   3480
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   156
      Left            =   5880
      Locked          =   -1  'True
      TabIndex        =   156
      Top             =   3480
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   155
      Left            =   5520
      Locked          =   -1  'True
      TabIndex        =   155
      Top             =   3480
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   154
      Left            =   5160
      Locked          =   -1  'True
      TabIndex        =   154
      Top             =   3480
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   153
      Left            =   4800
      Locked          =   -1  'True
      TabIndex        =   153
      Top             =   3480
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   152
      Left            =   4440
      Locked          =   -1  'True
      TabIndex        =   152
      Top             =   3480
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   151
      Left            =   4080
      Locked          =   -1  'True
      TabIndex        =   151
      Top             =   3480
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   150
      Left            =   3720
      Locked          =   -1  'True
      TabIndex        =   150
      Top             =   3480
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   149
      Left            =   3360
      Locked          =   -1  'True
      TabIndex        =   149
      Top             =   3480
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   148
      Left            =   3000
      Locked          =   -1  'True
      TabIndex        =   148
      Top             =   3480
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   147
      Left            =   2640
      Locked          =   -1  'True
      TabIndex        =   147
      Top             =   3480
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   146
      Left            =   2280
      Locked          =   -1  'True
      TabIndex        =   146
      Top             =   3480
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   145
      Left            =   1920
      Locked          =   -1  'True
      TabIndex        =   145
      Top             =   3480
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   144
      Left            =   1560
      Locked          =   -1  'True
      TabIndex        =   144
      Top             =   3480
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   143
      Left            =   1200
      Locked          =   -1  'True
      TabIndex        =   143
      Top             =   3480
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   142
      Left            =   840
      Locked          =   -1  'True
      TabIndex        =   142
      Top             =   3480
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   141
      Left            =   480
      Locked          =   -1  'True
      TabIndex        =   141
      Top             =   3480
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   140
      Left            =   120
      Locked          =   -1  'True
      TabIndex        =   140
      Top             =   3480
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   139
      Left            =   6960
      Locked          =   -1  'True
      TabIndex        =   139
      Top             =   3000
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   138
      Left            =   6600
      Locked          =   -1  'True
      TabIndex        =   138
      Top             =   3000
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   137
      Left            =   6240
      Locked          =   -1  'True
      TabIndex        =   137
      Top             =   3000
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   136
      Left            =   5880
      Locked          =   -1  'True
      TabIndex        =   136
      Top             =   3000
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   135
      Left            =   5520
      Locked          =   -1  'True
      TabIndex        =   135
      Top             =   3000
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   134
      Left            =   5160
      Locked          =   -1  'True
      TabIndex        =   134
      Top             =   3000
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   133
      Left            =   4800
      Locked          =   -1  'True
      TabIndex        =   133
      Top             =   3000
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   132
      Left            =   4440
      Locked          =   -1  'True
      TabIndex        =   132
      Top             =   3000
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   131
      Left            =   4080
      Locked          =   -1  'True
      TabIndex        =   131
      Top             =   3000
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   130
      Left            =   3720
      Locked          =   -1  'True
      TabIndex        =   130
      Top             =   3000
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   129
      Left            =   3360
      Locked          =   -1  'True
      TabIndex        =   129
      Top             =   3000
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   128
      Left            =   3000
      Locked          =   -1  'True
      TabIndex        =   128
      Top             =   3000
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   127
      Left            =   2640
      Locked          =   -1  'True
      TabIndex        =   127
      Top             =   3000
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   126
      Left            =   2280
      Locked          =   -1  'True
      TabIndex        =   126
      Top             =   3000
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   125
      Left            =   1920
      Locked          =   -1  'True
      TabIndex        =   125
      Top             =   3000
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   124
      Left            =   1560
      Locked          =   -1  'True
      TabIndex        =   124
      Top             =   3000
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   123
      Left            =   1200
      Locked          =   -1  'True
      TabIndex        =   123
      Top             =   3000
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   122
      Left            =   840
      Locked          =   -1  'True
      TabIndex        =   122
      Top             =   3000
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   121
      Left            =   480
      Locked          =   -1  'True
      TabIndex        =   121
      Top             =   3000
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   120
      Left            =   120
      Locked          =   -1  'True
      TabIndex        =   120
      Top             =   3000
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   119
      Left            =   6960
      Locked          =   -1  'True
      TabIndex        =   119
      Top             =   2520
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   118
      Left            =   6600
      Locked          =   -1  'True
      TabIndex        =   118
      Top             =   2520
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   117
      Left            =   6240
      Locked          =   -1  'True
      TabIndex        =   117
      Top             =   2520
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   116
      Left            =   5880
      Locked          =   -1  'True
      TabIndex        =   116
      Top             =   2520
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   115
      Left            =   5520
      Locked          =   -1  'True
      TabIndex        =   115
      Top             =   2520
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   114
      Left            =   5160
      Locked          =   -1  'True
      TabIndex        =   114
      Top             =   2520
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   113
      Left            =   4800
      Locked          =   -1  'True
      TabIndex        =   113
      Top             =   2520
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   112
      Left            =   4440
      Locked          =   -1  'True
      TabIndex        =   112
      Top             =   2520
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   111
      Left            =   4080
      Locked          =   -1  'True
      TabIndex        =   111
      Top             =   2520
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   110
      Left            =   3720
      Locked          =   -1  'True
      TabIndex        =   110
      Top             =   2520
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   109
      Left            =   3360
      Locked          =   -1  'True
      TabIndex        =   109
      Top             =   2520
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   108
      Left            =   3000
      Locked          =   -1  'True
      TabIndex        =   108
      Top             =   2520
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   107
      Left            =   2640
      Locked          =   -1  'True
      TabIndex        =   107
      Top             =   2520
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   106
      Left            =   2280
      Locked          =   -1  'True
      TabIndex        =   106
      Top             =   2520
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   105
      Left            =   1920
      Locked          =   -1  'True
      TabIndex        =   105
      Top             =   2520
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   104
      Left            =   1560
      Locked          =   -1  'True
      TabIndex        =   104
      Top             =   2520
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   103
      Left            =   1200
      Locked          =   -1  'True
      TabIndex        =   103
      Top             =   2520
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   102
      Left            =   840
      Locked          =   -1  'True
      TabIndex        =   102
      Top             =   2520
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   101
      Left            =   480
      Locked          =   -1  'True
      TabIndex        =   101
      Top             =   2520
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   100
      Left            =   120
      Locked          =   -1  'True
      TabIndex        =   100
      Top             =   2520
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   99
      Left            =   6960
      Locked          =   -1  'True
      TabIndex        =   99
      Top             =   2040
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   98
      Left            =   6600
      Locked          =   -1  'True
      TabIndex        =   98
      Top             =   2040
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   97
      Left            =   6240
      Locked          =   -1  'True
      TabIndex        =   97
      Top             =   2040
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   96
      Left            =   5880
      Locked          =   -1  'True
      TabIndex        =   96
      Top             =   2040
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   95
      Left            =   5520
      Locked          =   -1  'True
      TabIndex        =   95
      Top             =   2040
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   94
      Left            =   5160
      Locked          =   -1  'True
      TabIndex        =   94
      Top             =   2040
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   93
      Left            =   4800
      Locked          =   -1  'True
      TabIndex        =   93
      Top             =   2040
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   92
      Left            =   4440
      Locked          =   -1  'True
      TabIndex        =   92
      Top             =   2040
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   91
      Left            =   4080
      Locked          =   -1  'True
      TabIndex        =   91
      Top             =   2040
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   90
      Left            =   3720
      Locked          =   -1  'True
      TabIndex        =   90
      Top             =   2040
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   89
      Left            =   3360
      Locked          =   -1  'True
      TabIndex        =   89
      Top             =   2040
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   88
      Left            =   3000
      Locked          =   -1  'True
      TabIndex        =   88
      Top             =   2040
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   87
      Left            =   2640
      Locked          =   -1  'True
      TabIndex        =   87
      Top             =   2040
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   86
      Left            =   2280
      Locked          =   -1  'True
      TabIndex        =   86
      Top             =   2040
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   85
      Left            =   1920
      Locked          =   -1  'True
      TabIndex        =   85
      Top             =   2040
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   84
      Left            =   1560
      Locked          =   -1  'True
      TabIndex        =   84
      Top             =   2040
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   83
      Left            =   1200
      Locked          =   -1  'True
      TabIndex        =   83
      Top             =   2040
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   82
      Left            =   840
      Locked          =   -1  'True
      TabIndex        =   82
      Top             =   2040
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   81
      Left            =   480
      Locked          =   -1  'True
      TabIndex        =   81
      Top             =   2040
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   80
      Left            =   120
      Locked          =   -1  'True
      TabIndex        =   80
      Top             =   2040
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   79
      Left            =   6960
      Locked          =   -1  'True
      TabIndex        =   79
      Top             =   1560
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   78
      Left            =   6600
      Locked          =   -1  'True
      TabIndex        =   78
      Top             =   1560
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   77
      Left            =   6240
      Locked          =   -1  'True
      TabIndex        =   77
      Top             =   1560
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   76
      Left            =   5880
      Locked          =   -1  'True
      TabIndex        =   76
      Top             =   1560
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   75
      Left            =   5520
      Locked          =   -1  'True
      TabIndex        =   75
      Top             =   1560
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   74
      Left            =   5160
      Locked          =   -1  'True
      TabIndex        =   74
      Top             =   1560
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   73
      Left            =   4800
      Locked          =   -1  'True
      TabIndex        =   73
      Top             =   1560
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   72
      Left            =   4440
      Locked          =   -1  'True
      TabIndex        =   72
      Top             =   1560
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   71
      Left            =   4080
      Locked          =   -1  'True
      TabIndex        =   71
      Top             =   1560
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   70
      Left            =   3720
      Locked          =   -1  'True
      TabIndex        =   70
      Top             =   1560
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   69
      Left            =   3360
      Locked          =   -1  'True
      TabIndex        =   69
      Top             =   1560
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   68
      Left            =   3000
      Locked          =   -1  'True
      TabIndex        =   68
      Top             =   1560
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   67
      Left            =   2640
      Locked          =   -1  'True
      TabIndex        =   67
      Top             =   1560
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   66
      Left            =   2280
      Locked          =   -1  'True
      TabIndex        =   66
      Top             =   1560
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   65
      Left            =   1920
      Locked          =   -1  'True
      TabIndex        =   65
      Top             =   1560
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   64
      Left            =   1560
      Locked          =   -1  'True
      TabIndex        =   64
      Top             =   1560
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   63
      Left            =   1200
      Locked          =   -1  'True
      TabIndex        =   63
      Top             =   1560
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   62
      Left            =   840
      Locked          =   -1  'True
      TabIndex        =   62
      Top             =   1560
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   61
      Left            =   480
      Locked          =   -1  'True
      TabIndex        =   61
      Top             =   1560
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   60
      Left            =   120
      Locked          =   -1  'True
      TabIndex        =   60
      Top             =   1560
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   59
      Left            =   6960
      Locked          =   -1  'True
      TabIndex        =   59
      Top             =   1080
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   58
      Left            =   6600
      Locked          =   -1  'True
      TabIndex        =   58
      Top             =   1080
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   57
      Left            =   6240
      Locked          =   -1  'True
      TabIndex        =   57
      Top             =   1080
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   56
      Left            =   5880
      Locked          =   -1  'True
      TabIndex        =   56
      Top             =   1080
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   55
      Left            =   5520
      Locked          =   -1  'True
      TabIndex        =   55
      Top             =   1080
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   54
      Left            =   5160
      Locked          =   -1  'True
      TabIndex        =   54
      Top             =   1080
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   53
      Left            =   4800
      Locked          =   -1  'True
      TabIndex        =   53
      Top             =   1080
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   52
      Left            =   4440
      Locked          =   -1  'True
      TabIndex        =   52
      Top             =   1080
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   51
      Left            =   4080
      Locked          =   -1  'True
      TabIndex        =   51
      Top             =   1080
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   50
      Left            =   3720
      Locked          =   -1  'True
      TabIndex        =   50
      Top             =   1080
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   49
      Left            =   3360
      Locked          =   -1  'True
      TabIndex        =   49
      Top             =   1080
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   48
      Left            =   3000
      Locked          =   -1  'True
      TabIndex        =   48
      Top             =   1080
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   47
      Left            =   2640
      Locked          =   -1  'True
      TabIndex        =   47
      Top             =   1080
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   46
      Left            =   2280
      Locked          =   -1  'True
      TabIndex        =   46
      Top             =   1080
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   45
      Left            =   1920
      Locked          =   -1  'True
      TabIndex        =   45
      Top             =   1080
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   44
      Left            =   1560
      Locked          =   -1  'True
      TabIndex        =   44
      Top             =   1080
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   43
      Left            =   1200
      Locked          =   -1  'True
      TabIndex        =   43
      Top             =   1080
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   42
      Left            =   840
      Locked          =   -1  'True
      TabIndex        =   42
      Top             =   1080
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   41
      Left            =   480
      Locked          =   -1  'True
      TabIndex        =   41
      Top             =   1080
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   40
      Left            =   120
      Locked          =   -1  'True
      TabIndex        =   40
      Top             =   1080
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   39
      Left            =   6960
      Locked          =   -1  'True
      TabIndex        =   39
      Top             =   600
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   38
      Left            =   6600
      Locked          =   -1  'True
      TabIndex        =   38
      Top             =   600
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   37
      Left            =   6240
      Locked          =   -1  'True
      TabIndex        =   37
      Top             =   600
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   36
      Left            =   5880
      Locked          =   -1  'True
      TabIndex        =   36
      Top             =   600
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   35
      Left            =   5520
      Locked          =   -1  'True
      TabIndex        =   35
      Top             =   600
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   34
      Left            =   5160
      Locked          =   -1  'True
      TabIndex        =   34
      Top             =   600
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   33
      Left            =   4800
      Locked          =   -1  'True
      TabIndex        =   33
      Top             =   600
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   32
      Left            =   4440
      Locked          =   -1  'True
      TabIndex        =   32
      Top             =   600
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   31
      Left            =   4080
      Locked          =   -1  'True
      TabIndex        =   31
      Top             =   600
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   30
      Left            =   3720
      Locked          =   -1  'True
      TabIndex        =   30
      Top             =   600
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   29
      Left            =   3360
      Locked          =   -1  'True
      TabIndex        =   29
      Top             =   600
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   28
      Left            =   3000
      Locked          =   -1  'True
      TabIndex        =   28
      Top             =   600
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   27
      Left            =   2640
      Locked          =   -1  'True
      TabIndex        =   27
      Top             =   600
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   26
      Left            =   2280
      Locked          =   -1  'True
      TabIndex        =   26
      Top             =   600
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   25
      Left            =   1920
      Locked          =   -1  'True
      TabIndex        =   25
      Top             =   600
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   24
      Left            =   1560
      Locked          =   -1  'True
      TabIndex        =   24
      Top             =   600
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   23
      Left            =   1200
      Locked          =   -1  'True
      TabIndex        =   23
      Top             =   600
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   22
      Left            =   840
      Locked          =   -1  'True
      TabIndex        =   22
      Top             =   600
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   21
      Left            =   480
      Locked          =   -1  'True
      TabIndex        =   21
      Top             =   600
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   20
      Left            =   120
      Locked          =   -1  'True
      TabIndex        =   20
      Top             =   600
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   19
      Left            =   6960
      Locked          =   -1  'True
      TabIndex        =   19
      Top             =   120
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   18
      Left            =   6600
      Locked          =   -1  'True
      TabIndex        =   18
      Top             =   120
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   17
      Left            =   6240
      Locked          =   -1  'True
      TabIndex        =   17
      Top             =   120
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   16
      Left            =   5880
      Locked          =   -1  'True
      TabIndex        =   16
      Top             =   120
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   15
      Left            =   5520
      Locked          =   -1  'True
      TabIndex        =   15
      Top             =   120
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   14
      Left            =   5160
      Locked          =   -1  'True
      TabIndex        =   14
      Top             =   120
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   13
      Left            =   4800
      Locked          =   -1  'True
      TabIndex        =   13
      Top             =   120
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   12
      Left            =   4440
      Locked          =   -1  'True
      TabIndex        =   12
      Top             =   120
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   11
      Left            =   4080
      Locked          =   -1  'True
      TabIndex        =   11
      Top             =   120
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   10
      Left            =   3720
      Locked          =   -1  'True
      TabIndex        =   10
      Top             =   120
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   9
      Left            =   3360
      Locked          =   -1  'True
      TabIndex        =   9
      Top             =   120
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   8
      Left            =   3000
      Locked          =   -1  'True
      TabIndex        =   8
      Top             =   120
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   7
      Left            =   2640
      Locked          =   -1  'True
      TabIndex        =   7
      Top             =   120
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   6
      Left            =   2280
      Locked          =   -1  'True
      TabIndex        =   6
      Top             =   120
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   5
      Left            =   1920
      Locked          =   -1  'True
      TabIndex        =   5
      Top             =   120
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   4
      Left            =   1560
      Locked          =   -1  'True
      TabIndex        =   4
      Top             =   120
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   3
      Left            =   1200
      Locked          =   -1  'True
      TabIndex        =   3
      Top             =   120
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   2
      Left            =   840
      Locked          =   -1  'True
      TabIndex        =   2
      Top             =   120
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   1
      Left            =   480
      Locked          =   -1  'True
      TabIndex        =   1
      Top             =   120
      Width           =   255
   End
   Begin VB.TextBox txtSopa 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   0
      Left            =   120
      Locked          =   -1  'True
      TabIndex        =   0
      Top             =   120
      Width           =   255
   End
End
Attribute VB_Name = "frmSopa"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Private Sub Mostrar(ByRef Matriz() As String, ByRef cantidad() As Byte)
Dim x As Integer
For x = 0 To 399
    txtSopa(x).Text = Matriz(x \ 20, x Mod 20)
Next x
For x = 0 To 24
    lstCantidad.AddItem Str(cantidad(x)) & " Letras:" & Chr(x + 65)
Next x
End Sub
Private Sub Sopa(ByRef Matriz() As String, ByRef cantidad() As Byte)
Dim x As Integer, y As Integer
For x = 0 To 399
    Matriz(x \ 20, x Mod 20) = Chr(Fix(25 * Rnd) + 65)
Next x
End Sub
Private Sub Encontro(ByRef Matriz() As String, ByRef vector() As Long, ByRef cantidad() As Byte)
Dim x As Integer, y As Integer, si As Boolean
For x = 0 To 399
    For y = 0 To 24
        If Matriz(x \ 20, x Mod 20) = Chr(y + 65) Then
            txtSopa(x).BackColor = vector(y)
            cantidad(y) = cantidad(y) + 1
        End If
    Next y
Next x
End Sub
Private Sub vectorcolor(ByRef vector() As Long)
Dim x As Long
For x = 0 To 24
    vector(x) = (x ^ 2) * (10 ^ 2)
    txtSopa(x).BackColor = vector(x)
Next x
End Sub
Private Sub cmdSopa_Click()
Dim Matriz(19, 19) As String
Dim vector(24) As Long
Dim x As Integer
Dim cantidad(24) As Byte
lstCantidad.Clear
vectorcolor vector()
Sopa Matriz(), cantidad()
Encontro Matriz(), vector(), cantidad()
Mostrar Matriz(), cantidad()
End Sub

Private Sub Form_Load()
Randomize Timer
End Sub

