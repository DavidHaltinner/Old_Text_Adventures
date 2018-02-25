VERSION 5.00
Begin VB.Form Form33 
   BackColor       =   &H00000000&
   Caption         =   "Form33"
   ClientHeight    =   4440
   ClientLeft      =   950
   ClientTop       =   1340
   ClientWidth     =   5770
   Icon            =   "FORM33.frx":0000
   LinkTopic       =   "Form33"
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
Attribute VB_Name = "Form33"
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
            Label2.Caption = "You are in a large empty room.  There are cobwebs all over.  There is an elevator to the East with a button with an arrow on it next to it.  There is also an open door to the west."
        Case "look at button", "look at arrow"
            Label2.Caption = "it is a normal elevator button with an arrow on it."
        Case "look at cobwebs"
        Label2.Caption = "They are old and full of dust.  They seem to have been abandened long ago."
        Case "east", "e"
            level = 2
            Form34.Show
            Unload Me
        Case "west", "w"
            level = 2
            Form22.Show
            Unload Me
        Case "push button"
            Label2.Caption = "The doors swing open to the East."
        Case "i", "inventory"
            Label2.Caption = "sledge hammer  key"
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
Label2.Caption = "You are in a large empty room.  There are cobwebs all over.  There is an elevator to the East with a button with an arrow on it next to it."
Form33.Caption = "The 13th Floor"

End Sub

Private Sub Text1_KeyPress(KeyAscii As Integer)
Form33.Caption = "The 13th Floor"
If KeyAscii <> 13 Then Exit Sub
  
    Select Case level
        Case 1
            Call level1
        Case 2
            Call level2
 
    End Select
  Text1 = ""
End Sub












