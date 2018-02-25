VERSION 5.00
Begin VB.Form Form24 
   BackColor       =   &H00000000&
   Caption         =   "Form24"
   ClientHeight    =   4440
   ClientLeft      =   940
   ClientTop       =   1320
   ClientWidth     =   5770
   Icon            =   "FORM24.frx":0000
   LinkTopic       =   "Form24"
   PaletteMode     =   1  'UseZOrder
   ScaleHeight     =   4440
   ScaleWidth      =   5770
   WindowState     =   2  'Maximized
   Begin VB.TextBox Text1 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   10
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   360
      Left            =   1320
      TabIndex        =   2
      Top             =   3960
      Width           =   3372
   End
   Begin VB.Label Label1 
      BackColor       =   &H00000000&
      Caption         =   "What Next?-"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   10
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   252
      Left            =   120
      TabIndex        =   1
      Top             =   3960
      Width           =   1212
   End
   Begin VB.Label Label2 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      ForeColor       =   &H00FFFFFF&
      Height          =   3612
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   5532
   End
End
Attribute VB_Name = "Form24"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False


Dim level, room As Integer

Private Sub level1()
        Select Case Trim(Text1)
        Case "help"
            Label2.Caption = "You're on your own!"
        Case "look", "l"
            Label2.Caption = "The doors to the west open.  There are buttons numbered 1-20."
        Case "push 2", "push 3", "push 4", "push 5", "push 6", "push 7", "push 8", "push 9", "push 10", "push 11", "push 12", "push 14", "push 15", "push 16", "push 17", "push 18", "push 19", "push 20"
            level = 2
            Form24.Show
            Unload Me
        Case "look at numbers", "look at buttons"
            Label2.Caption = "They are numbered 1-20."
        Case "push 13"
            level = 2
            Form6.Show
            Unload Me
        Case "w", "west"
            level = 2
            Form26.Show
            Unload Me
        Case "i", "inventory"
            Label2.Caption = "nothing"
        Case Else
            Label2.Caption = "I don't understand!"
        End Select

' Label2.Caption = "Level 1"

End Sub
Private Sub level2()
Label2.Caption = "Level 2"
level = 1
End Sub
Private Sub Form_Load()
level = 1
Label2.Caption = "The elevator starts to move... After a few seconds it haults and the doors to the west open."
Form24.Caption = "The 13th Floor"

End Sub

Private Sub Text1_KeyPress(KeyAscii As Integer)
Form24.Caption = "The 13th Floor"
If KeyAscii <> 13 Then Exit Sub
  
    Select Case level
        Case 1
            Call level1
        Case 2
            Call level2
 
    End Select
  Text1 = ""
End Sub





