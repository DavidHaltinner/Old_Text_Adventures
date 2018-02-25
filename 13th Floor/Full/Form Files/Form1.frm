VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H00000000&
   Caption         =   "13th Floor"
   ClientHeight    =   4440
   ClientLeft      =   40
   ClientTop       =   270
   ClientWidth     =   5770
   Icon            =   "Form1.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   4440
   ScaleWidth      =   5770
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command1 
      Caption         =   "Start the adventure..."
      Height          =   490
      Left            =   1560
      TabIndex        =   1
      Top             =   3240
      Width           =   2020
   End
   Begin VB.Label Label2 
      BackColor       =   &H00000000&
      Caption         =   "Made By David Urban Haltinner"
      ForeColor       =   &H0000FF00&
      Height          =   250
      Left            =   1440
      TabIndex        =   2
      Top             =   2400
      Width           =   2410
   End
   Begin VB.Label Label1 
      BackColor       =   &H00000000&
      Caption         =   "The 13th Floor"
      BeginProperty Font 
         Name            =   "PostCrypt"
         Size            =   36
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   1570
      Left            =   1080
      TabIndex        =   0
      Top             =   360
      Width           =   3370
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Form73.Show
Unload Me
End Sub
