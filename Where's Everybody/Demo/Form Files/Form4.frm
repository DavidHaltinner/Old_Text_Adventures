VERSION 4.00
Begin VB.Form Form4 
   BackColor       =   &H00000000&
   Caption         =   "Form4"
   ClientHeight    =   4440
   ClientLeft      =   924
   ClientTop       =   1344
   ClientWidth     =   5772
   Height          =   4812
   Icon            =   "FORM4.frx":0000
   Left            =   876
   LinkTopic       =   "Form4"
   ScaleHeight     =   4440
   ScaleWidth      =   5772
   Top             =   1020
   Width           =   5868
   Begin VB.TextBox Text1 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      BeginProperty Font 
         name            =   "Arial"
         charset         =   1
         weight          =   700
         size            =   10.2
         underline       =   0   'False
         italic          =   0   'False
         strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   360
      Left            =   1560
      TabIndex        =   1
      Top             =   3960
      Width           =   3372
   End
   Begin VB.Label Label1 
      BackColor       =   &H00000000&
      Caption         =   "What Next?-"
      BeginProperty Font 
         name            =   "Arial"
         charset         =   1
         weight          =   700
         size            =   10.2
         underline       =   0   'False
         italic          =   0   'False
         strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   252
      Left            =   360
      TabIndex        =   2
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
Attribute VB_Name = "Form4"
Attribute VB_Creatable = False
Attribute VB_Exposed = False


Dim level, room As Integer

Private Sub level1()
        Select Case Trim(Text1)
        Case "help"
            Label2.Caption = "You're on your own!"
        Case "look", "l"
            Label2.Caption = "You are on a street.  The library is south and streets lie east and west."
        Case "s", "south"
            Form19.Show
            Unload Me
        Case "e", "east"
            level = 2
            Form10.Show
            Unload Me
        Case "west", "w"
            level = 3
            Form5.Show
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
Label2.Caption = "You are on a street.  The library is south and streets lie east and west."
Form4.Caption = "Where's Everybody?"

End Sub

Private Sub Text1_KeyPress(KeyAscii As Integer)
Form4.Caption = "Where's Everybody?"
If KeyAscii <> 13 Then Exit Sub
  
    Select Case level
        Case 1
            Call level1
        Case 2
            Call level2
 
    End Select
  Text1 = ""
End Sub


