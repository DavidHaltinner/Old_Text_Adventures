VERSION 4.00
Begin VB.Form Form23 
   BackColor       =   &H00000000&
   Caption         =   "Form23"
   ClientHeight    =   4476
   ClientLeft      =   912
   ClientTop       =   1284
   ClientWidth     =   5772
   Height          =   4848
   Icon            =   "FORM23.frx":0000
   Left            =   864
   LinkTopic       =   "Form23"
   ScaleHeight     =   4476
   ScaleWidth      =   5772
   Top             =   960
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
      Left            =   1320
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
Attribute VB_Name = "Form23"
Attribute VB_Creatable = False
Attribute VB_Exposed = False


Dim level, room As Integer

Private Sub level1()
        Select Case Trim(Text1)
        Case "help"
            Label2.Caption = "You're on your own!"
        Case "look", "l"
            Label2.Caption = "You are in a hallway.  The gym is to the west, and to the north is the boy's locker room but it is locked, there are stairs going up, and an exit to the south-west."
        Case "w", "west"
            level = 2
            Form24.Show
            Unload Me
        Case "n", "north"
            Label2.Caption = "It's locked."
        Case "sw", "south-west"
            level = 2
            Form22.Show
            Unload Me
        Case "u", "up"
            level = 2
            Form29.Show
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
Label2.Caption = "You are in a hallway.  The gym is to the west, and to the north is the boy's locker room but it is locked, there are stairs going up, and an exit to the south-west."
Form23.Caption = "High School From Hell"

End Sub

Private Sub Text1_KeyPress(KeyAscii As Integer)
Form23.Caption = "High School From Hell"
If KeyAscii <> 13 Then Exit Sub
  
    Select Case level
        Case 1
            Call level1
        Case 2
            Call level2
 
    End Select
  Text1 = ""
End Sub
