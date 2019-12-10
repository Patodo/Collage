Sub Change_Font()
    Dim AllRandom, RealRandom
    Dim AllRandomValueRangeDown, AllRandomValueRangeUp
    Dim Font, Size, Location, LineBegin, LineEnd, WordSpacing
    Dim i, num
    
    AllRandom = False
    RealRandom = False
    If RealRandom Then
        Dim md, down
        VBA.Randomize
        AllRandom = True
        md = Int(VBA.Rnd * 1000) Mod 21 + 21
        down = Int(VBA.Rnd * 1000) Mod 21 + 21
        AllRandom = Array(True, True, Ture, True, True)
        AllRandomValueRangeDown = Array(Int(VBA.Rnd * 1000) Mod md + down, Int(VBA.Rnd * 1000) Mod md + down, Int(VBA.Rnd * 1000) Mod md + down, Int(VBA.Rnd * 1000) Mod md + down, Int(VBA.Rnd * 1000) Mod md + down)
        AllRandomValueRangeUp = Array(Int(VBA.Rnd * 1000) Mod md + down, Int(VBA.Rnd * 1000) Mod md + down, Int(VBA.Rnd * 1000) Mod md + down, Int(VBA.Rnd * 1000) Mod md + down, Int(VBA.Rnd * 1000) Mod md + down)
    Else
                          ' size   Loc   Lbegin  Lend  WordS
        AllRandom = Array(False, False, False, Flase, Flase)
                                     '  S    L   LB  LE   WS
        AllRandomValueRangeDown = Array(12, 13, 123, 123, 213)
          AllRandomValueRangeUp = Array(12, 12, 123, 123, 123)
    End If
    
    Font = Array("宋体", "楷书", "正楷")
    Size = Array(11, 12, 13, 14)
    Location = Array(9, 10)
    LineBegin = Array(11, 13)
    LineEnd = Array(11, 12, 13, 14)
    WordSpacing = Array(0, 1, 2)
    
    For Each i In ActiveDocument.Characters
        VBA.Randomize
        Dim lt, temp
        i.Font.Name = Font(Int(VBA.Rnd * 1000) Mod (UBound(Font) + 1))
        
        If AllRandom(0) Then
            temp = 0
            i.Font.Size = Int(VBA.Rnd * 1000) Mod (AllRandomValueRangeUp(temp) - AllRandomValueRangeDown(temp)) + AllRandomValueRangeDown(temp)
        Else
            i.Font.Size = Size(Int(VBA.Rnd * 1000) Mod (UBound(Size) + 1))
        End If
        
        If AllRandom(1) Then
            temp = 1
            lt = Int(VBA.Rnd * 1000) Mod (AllRandomValueRangeUp(2) - AllRandomValueRangeDown(2)) + AllRandomValueRangeDown(2) - Int(VBA.Rnd * 1000) Mod (AllRandomValueRangeUp(3) - AllRandomValueRangeDown(3)) + AllRandomValueRangeDown(3)
            i.Font.Position = Int(VBA.Rnd * 1000) Mod (AllRandomValueRangeUp(temp) - AllRandomValueRangeDown(temp)) + AllRandomValueRangeDown(temp) + lt
        Else
            lt = LineBegin(Int(VBA.Rnd * 1000) Mod (UBound(LineBegin) + 1)) - LineEnd(Int(VBA.Rnd * 1000) Mod (UBound(LineEnd) + 1))
            i.Font.Position = Location(Int(VBA.Rnd * 1000) Mod (UBound(Location) + 1)) + lt
        End If
        
        If AllRandom(2) Then
            temp = 4
            i.Font.Size = Int(VBA.Rnd * 1000) Mod (AllRandomValueRangeUp(temp) - AllRandomValueRangeDown(temp)) + AllRandomValueRangeDown(temp)
        Else
            
            i.Font.Spacing = WordSpacing(Int(VBA.Rnd * 1000) Mod (UBound(WordSpacing) + 1))
        End If
    Next
    Application.ScreenUpdating = True
End Sub
