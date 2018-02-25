VERSION 5.00
Begin VB.Form Form52 
   BackColor       =   &H00000000&
   Caption         =   "Form52"
   ClientHeight    =   4490
   ClientLeft      =   910
   ClientTop       =   1280
   ClientWidth     =   5770
   Icon            =   "FORM52.frx":0000
   LinkTopic       =   "Form52"
   PaletteMode     =   1  'UseZOrder
   ScaleHeight     =   4490
   ScaleWidth      =   5770
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
Attribute VB_Name = "Form52"
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
            Label2.Caption = "You are in brightly lit hall but you can't tell where the light is coming from.  There are dozens of decapitated bodies hung a long the walls dressed in clothes dating back to the 60's.  You can go up the stairs or south into a large room."
        Case "s", "south"
            level = 2
            Form53.Show
            Unload Me
        Case "u", "up"
            level = 2
            Form35.Show
            Unload Me
        Case "look at bodies", "examine bodies"
            Label2.Caption = "They are all headless and hanging to high for you to see to good."
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
Label2.Caption = "You are in brightly lit hall but you can't tell where the light is coming from.  There are dozens of decapitated bodies hung a long the walls dressed in clothes dating back to the 60's.  You can go up the stairs or south into a large room."
Form52.Caption = "High School From Hell"

End Sub

Private Sub Text1_KeyPress(KeyAscii As Integer)
Form52.Caption = "High School From Hell"
If KeyAscii <> 13 Then Exit Sub
  
    Select Case level
        Case 1
            Call level1
        Case 2
            Call level2
 
    End Select
  Text1 = ""
End Sub

