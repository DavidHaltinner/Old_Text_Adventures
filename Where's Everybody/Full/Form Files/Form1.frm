VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H00000000&
   Caption         =   "Where's Everybody?"
   ClientHeight    =   4200
   ClientLeft      =   40
   ClientTop       =   230
   ClientWidth     =   4800
   Icon            =   "Form1.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   4200
   ScaleWidth      =   4800
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "Start the adventure..."
      Height          =   490
      Left            =   960
      TabIndex        =   0
      Top             =   3000
      Width           =   1930
   End
   Begin VB.Label Label2 
      BackColor       =   &H00000000&
      Caption         =   "Made By David Urban Haltinner"
      ForeColor       =   &H0000FF00&
      Height          =   490
      Left            =   840
      TabIndex        =   2
      Top             =   2280
      Width           =   2890
   End
   Begin VB.Label Label1 
      BackColor       =   &H00000000&
      Caption         =   "Where's Everybody?"
      BeginProperty Font 
         Name            =   "PostCrypt"
         Size            =   36
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   2290
      Left            =   0
      TabIndex        =   1
      Top             =   120
      Width           =   5170
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Form2.Show
Unload Me
End Sub
