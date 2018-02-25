VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H00000000&
   Caption         =   "Interactive Fiction Collection"
   ClientHeight    =   3550
   ClientLeft      =   40
   ClientTop       =   230
   ClientWidth     =   4190
   Icon            =   "collection.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   3550
   ScaleWidth      =   4190
   StartUpPosition =   3  'Windows Default
   Begin VB.Label Label2 
      BackColor       =   &H00000000&
      Caption         =   $"collection.frx":0442
      ForeColor       =   &H0000FF00&
      Height          =   1690
      Left            =   360
      TabIndex        =   1
      Top             =   1800
      Width           =   3610
   End
   Begin VB.Label Label1 
      BackColor       =   &H00000000&
      Caption         =   "Interactive Fiction Collection"
      BeginProperty Font 
         Name            =   "PostCrypt"
         Size            =   22
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   1570
      Left            =   360
      TabIndex        =   0
      Top             =   120
      Width           =   3730
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
