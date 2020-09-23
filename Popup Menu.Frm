VERSION 5.00
Begin VB.Form Popup 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Faisal's Popup Menu"
   ClientHeight    =   3360
   ClientLeft      =   3555
   ClientTop       =   3480
   ClientWidth     =   4680
   Icon            =   "Popup Menu.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   PaletteMode     =   1  'UseZOrder
   ScaleHeight     =   3360
   ScaleWidth      =   4680
   Begin VB.PictureBox Picture1 
      Height          =   1935
      Left            =   600
      Picture         =   "Popup Menu.frx":000C
      ScaleHeight     =   1875
      ScaleWidth      =   1515
      TabIndex        =   3
      Top             =   1440
      Width           =   1575
   End
   Begin VB.CommandButton Cancel 
      Caption         =   "&Cancel"
      Height          =   375
      Left            =   3600
      TabIndex        =   2
      Top             =   1440
      Width           =   975
   End
   Begin VB.Label Label2 
      Caption         =   "The File menu is hidden and can be viewed by setting the Visible Property to true"
      Height          =   495
      Left            =   120
      TabIndex        =   1
      Top             =   960
      Width           =   4455
   End
   Begin VB.Label Label1 
      Caption         =   "Right click with your mouse on this form, and your popup menu will be shown. "
      Height          =   375
      Left            =   120
      TabIndex        =   0
      Top             =   360
      Width           =   4455
   End
   Begin VB.Menu mnufile 
      Caption         =   "Popup Menu"
      Visible         =   0   'False
      Begin VB.Menu mnusub1 
         Caption         =   "This is a sub menu"
      End
      Begin VB.Menu mnusub2 
         Caption         =   "This is another sub menu"
      End
   End
End
Attribute VB_Name = "Popup"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Cancel_Click()

Unload Me 'exit the program

End Sub

Private Sub Form_Load()

Move (Screen.Width - Width) \ 2, (Screen.Height - Height) \ 2 'centre the form on the screen

'This project was downloaded from
'
'http://www.brianharper.demon.co.uk/
'
'Please use this project and all of its source code however you want.
'
'UNZIPPING
'To unzip the project files you will need a 32Bit unzipper program that
'can handle long file names. If you have a latest copy of Winzip installed
'on your system then you may use that. If you however dont have a copy,
'then visit my web site, go into the files section and from there you can
'click on the Winzip link to goto their site and download a copy of the
'program. By doing this you will now beable to unzip the project files
'retaining their proper long file names.
'Once upzipped, load up your copy of Visual Basic and goto
'File/Open Project. Locate the project files to where ever you unzipped
'them, then click Open. The project files will be loaded and are now ready
'for use.
'
'THE PROJECT
'A nice, neat and handy small amount of code that can be used to put in place
'in your programs and add abit more class to it. When the user clicks on
'button 2 of the mouse, the popup box appears where program options can be
'displayed.
'
'NOTES
'I have only provided the necessary project files with the zip. This keeps
'the size of the zip files down to a minimum and enables me to upload more
'prjects files to my site.
'
'I hope you find the project usful in what ever you are programming. I
'have tried to write out a small explanation of what each line of code
'does in the project, although most of it is pretty simple to understand.
'
'If you find any bugs in the code then please dont hesitate to Email me and
'I will get back to you as soon as possible. If you however need help on a
'different matter concerning Visual Basic then please please Email me as
'I like to here from people and here what they are programming.
'
'My Email address is:
'Brian@brianharper.demon.co.uk
'
'My web site is:
'http://www.brianharper.demon.co.uk/
'
'Please visit my web site and find many other useful projects like this.
'

End Sub

Private Sub Form_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)

mnufile.Visible = False

If Button = 2 Then PopupMenu mnufile

End Sub


Private Sub Label1_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)

mnufile.Visible = False
If Button = 2 Then PopupMenu mnufile

End Sub


Private Sub Label2_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)

mnufile.Visible = False
If Button = 2 Then PopupMenu mnufile

End Sub


