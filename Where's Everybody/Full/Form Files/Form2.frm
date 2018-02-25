VERSION 5.00
Begin VB.Form Form2 
   BackColor       =   &H00000000&
   Caption         =   "Form2"
   ClientHeight    =   4440
   ClientLeft      =   920
   ClientTop       =   1300
   ClientWidth     =   5780
   Icon            =   "FORM2.frx":0000
   LinkTopic       =   "Form2"
   PaletteMode     =   1  'UseZOrder
   ScaleHeight     =   4440
   ScaleWidth      =   5780
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
      Top             =   3840
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
      Top             =   3840
      Width           =   1212
   End
   Begin VB.Label Label2 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      ForeColor       =   &H00FFFFFF&
      Height          =   3612
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   5532
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False


Dim level, room As Integer

Private Sub level1()
        Select Case Trim(Text1)
        Case "l", "look"
            Label2.Caption = "You are standing on a street corner.  There is a brickwall behind you, a store to the north, and the street continues east. The ramp is south of here."
        Case "n", "north"
            Form3.Show
            Unload Me
        Case "e", "east"
            Form4.Show
            Unload Me
        Case "s", "south"
            Form13.Show
            Unload Me
        Case "help"
            Label2.Caption = "You're on your own!"
        Case Else
            Label2.Caption = "I don't Understand."
        End Select

' Label2.Caption = "Level 1"

End Sub
Private Sub level2()
Label2.Caption = "The 13th Floor"
End Sub
Private Sub Form_Load()
level = 1
Label2.Caption = "You are standing on a street corner.  You have no idea how you got there and where anybody is.  There is a brickwall behind you and a store to the north. The street continues east. The ramp is south of here."
Form2.Caption = "Where's Everybody?"

End Sub

Private Sub Text1_KeyPress(KeyAscii As Integer)
Form2.Caption = "Where's Everybody?"
If KeyAscii <> 13 Then Exit Sub
  
    Select Case level
        Case 1
            Call level1
        Case 2
            Call level2
 
    End Select
  Text1 = ""
End Sub

