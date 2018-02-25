VERSION 5.00
Begin VB.MDIForm MDIForm1 
   BackColor       =   &H8000000C&
   Caption         =   "13th Floor"
   ClientHeight    =   3250
   ClientLeft      =   2860
   ClientTop       =   1900
   ClientWidth     =   4370
   Icon            =   "MDIForm1.frx":0000
   LinkTopic       =   "MDIForm1"
   Begin VB.Menu mnufile 
      Caption         =   "&File"
      Begin VB.Menu mnunew 
         Caption         =   "&New Game"
      End
      Begin VB.Menu mnuopen 
         Caption         =   "&Open Game"
      End
      Begin VB.Menu mnusave 
         Caption         =   "&Save Game"
      End
      Begin VB.Menu a 
         Caption         =   "-"
      End
      Begin VB.Menu mnuexit 
         Caption         =   "&Exit"
      End
   End
   Begin VB.Menu mnuhelp 
      Caption         =   "&Help"
      Begin VB.Menu mnuhow 
         Caption         =   "Ho&w to Play"
      End
      Begin VB.Menu mnuabout 
         Caption         =   "&About 13th Floor"
      End
   End
End
Attribute VB_Name = "MDIForm1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub mnuexit_Click()
End
End Sub

Private Sub mnunew_Click()
Form73.Show
End Sub
