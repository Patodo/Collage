Sub Change_Font()
    Dim Font
    Font = Array("戴锦好字体X", "陈继世潇洒体", "陈继世白云体", "陈继世亮亮体")
    
    For Each i In ActiveDocument.Characters
        VBA.Randomize
        Dim lt, temp
        i.Font.Name = Font(Int(VBA.Rnd * 1000) Mod (UBound(Font) + 1))
        i.Font.Size = Size(Int(VBA.Rnd * 1000) Mod (UBound(Size) + 1))
        i.Font.Position = VBA.Rnd * 6 - 3
        i.Font.Spacing = VBA.Rnd * 4 - 3
    Next
    Application.ScreenUpdating = True
End Sub

