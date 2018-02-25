VERSION 4.00
Begin VB.Form Form1 
   Appearance      =   0  'Flat
   BackColor       =   &H00000000&
   Caption         =   "Form1"
   ClientHeight    =   2712
   ClientLeft      =   816
   ClientTop       =   1308
   ClientWidth     =   5760
   FillColor       =   &H00FFFFFF&
   Height          =   3036
   Icon            =   "FORM1.frx":0000
   Left            =   768
   LinkTopic       =   "Form1"
   Picture         =   "FORM1.frx":030A
   ScaleHeight     =   2712
   ScaleWidth      =   5760
   Top             =   1032
   Width           =   5856
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
      Left            =   2520
      TabIndex        =   0
      Top             =   2160
      Width           =   2172
   End
   Begin VB.Label Label1 
      BackColor       =   &H00000000&
      Caption         =   "Press Enter To Continue-"
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
      Top             =   2160
      Width           =   2412
   End
End
Attribute VB_Name = "Form1"
Attribute VB_Creatable = False
Attribute VB_Exposed = False


Dim level, room As Integer

Private Sub level1()
        Select Case Trim(Text1)
        
        Case Else
            Form2.Show
            Unload Me
        End Select

' Label2.Caption = "Level 1"

End Sub
Private Sub level2()
Label2.Caption = "Level 2"
level = 1
End Sub
Private Sub Form_Load()
level = 1

Form1.Caption = "Where's Everybody?"

End Sub

Private Sub Text1_KeyPress(KeyAscii As Integer)
Form1.Caption = "Where's Everybody?"
If KeyAscii <> 13 Then Exit Sub
  
    Select Case level
        Case 1
            Call level1
        Case 2
            Call level2
 
    End Select
  Text1 = ""
End Sub
