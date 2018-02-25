VERSION 5.00
Begin VB.Form Form35 
   BackColor       =   &H00000000&
   Caption         =   "Form35"
   ClientHeight    =   4440
   ClientLeft      =   940
   ClientTop       =   1320
   ClientWidth     =   5770
   Icon            =   "FORM35.frx":0000
   LinkTopic       =   "Form35"
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
Attribute VB_Name = "Form35"
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
            Label2.Caption = "You are in a small hallway.  There is a coffee table in the corner and a slowly turning fan above.  You can go east or South."
        Case "look at fan"
            Label2.Caption = "It as a 4 winged dark wood fan."
        Case "look at coffee table", "look at table", "look at table"
            Label2.Caption = "It has 4 legs, and the doors to the cupboard in it are gone, but it is empty."
        Case "south", "s"
            level = 2
            Form36.Show
            Unload Me
        Case "e", "east"
            level = 2
            Form44.Show
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
Label2.Caption = "You are in a small hallway.  There is a coffee table in the corner and a slowly turning fan above.  You can go east or South."
Form35.Caption = "The 13th Floor"

End Sub

Private Sub Text1_KeyPress(KeyAscii As Integer)
Form35.Caption = "The 13th Floor"
If KeyAscii <> 13 Then Exit Sub
  
    Select Case level
        Case 1
            Call level1
        Case 2
            Call level2
 
    End Select
  Text1 = ""
End Sub





