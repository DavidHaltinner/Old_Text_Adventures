VERSION 4.00
Begin VB.Form Form6 
   BackColor       =   &H00000000&
   Caption         =   "Form6"
   ClientHeight    =   4440
   ClientLeft      =   876
   ClientTop       =   1332
   ClientWidth     =   5772
   Height          =   4812
   Icon            =   "FORM6.frx":0000
   Left            =   828
   LinkTopic       =   "Form6"
   ScaleHeight     =   4440
   ScaleWidth      =   5772
   Top             =   1008
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
      Left            =   1440
      TabIndex        =   2
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
      Left            =   240
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
Attribute VB_Name = "Form6"
Attribute VB_Creatable = False
Attribute VB_Exposed = False


Dim level, room As Integer

Private Sub level1()
        Select Case Trim(Text1)
        Case "help"
            Label2.Caption = "You're on your own!"
        Case "look", "l"
            Label2.Caption = "Ok. The employee says.  He gives you a bill to pay when your vivsit is over and gives you the key to your room.  He wistles and a bellhop comes and escorts you through the lobby to the elevator.  He pushes the button and the doors open and you and him enter the elevator.  The doors slide close and it starts to move.  After a few seconds the elevator haults and the doors open he lets you out first and when you step out of the elevator every thing disappears and it is pitch black.  Everything starts to mold into shapes after a few minutes.  You see you are standing in a hotel hallway but the elevator has disappeared along with the bellhop.  You can go East or West down identical hallways."
        Case "east", "e"
            level = 2
            Form7.Show
            Unload Me
        Case "west", "w"
            level = 2
            Form7.Show
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
Label2.Caption = "Ok. The employee says.  He gives you a bill to pay when your vivsit is over and gives you the key to your room.  He wistles and a bellhop comes and escorts you through the lobby to the elevator.  He pushes the button and the doors open and you and him enter the elevator.  The doors slide close and it starts to move.  After a few seconds the elevator haults and the doors open he lets you out first and when you step out of the elevator every thing disappears and it is pitch black.  Everything starts to mold into shapes after a few minutes.  You see you are standing in a hotel hallway but the elevator has disappeared along with the bellhop.  You can go East or West down identical hallways."
Form6.Caption = "The 13th Floor"

End Sub

Private Sub Text1_KeyPress(KeyAscii As Integer)
Form6.Caption = "The 13th Floor"
If KeyAscii <> 13 Then Exit Sub
  
    Select Case level
        Case 1
            Call level1
        Case 2
            Call level2
 
    End Select
  Text1 = ""
End Sub



