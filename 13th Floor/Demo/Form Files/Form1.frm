VERSION 4.00
Begin VB.Form Form1 
   Appearance      =   0  'Flat
   BackColor       =   &H00000000&
   Caption         =   "Form1"
   ClientHeight    =   3348
   ClientLeft      =   912
   ClientTop       =   1356
   ClientWidth     =   3216
   FillColor       =   &H00FFFFFF&
   Height          =   3672
   Icon            =   "FORM1.frx":0000
   Left            =   864
   LinkTopic       =   "Form1"
   Picture         =   "FORM1.frx":030A
   ScaleHeight     =   3348
   ScaleWidth      =   3216
   Top             =   1080
   Width           =   3312
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
      Left            =   2400
      TabIndex        =   0
      Top             =   3000
      Width           =   3132
   End
   Begin VB.Label Label1 
      BackColor       =   &H00000000&
      Caption         =   "Push Enter To Continue-"
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
      Left            =   0
      TabIndex        =   1
      Top             =   3000
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
            level = 2
            Form8.Show
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

Form1.Caption = "The 13th Floor"

End Sub

Private Sub Label2_Click()

End Sub

Private Sub Text1_KeyPress(KeyAscii As Integer)
Form1.Caption = "The 13th Floor"
If KeyAscii <> 13 Then Exit Sub
  
    Select Case level
        Case 1
            Call level1
        Case 2
            Call level2
 
    End Select
  Text1 = ""
End Sub
