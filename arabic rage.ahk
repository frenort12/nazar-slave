WordsArray := ["ضصخثعنىسىؤشىؤس","يتشج0صضثضدصخثصضدثضدن","كسشىؤمنىرز","يتحضصجثضصخثدضصثخضصعراميىب","ينضجصثخجصضهثصغعفعخ","نتنبللاىكسششسديطكيسوؤثضصث","ضصثقفغعهمشسة","لبمشسينشسن","يستشيتسشكيتحضغيضصاير","تجضصثعصضثفضصقثضصجنىلاؤرلا","سيلهيسشيببضصثفصضثفصثفصفقفالقفالق","ابملاؤرنؤلارسعيبس7ضثقضصثقضص","ابلالبميلبليحعضث","ئءؤرلاىةوشسيلنمكطضصث","ضثغفغفغقعضصثقضصتيرؤ","هفتانشمسايسشفؤلاربل","ثخصضثضصجابيال","ىءمئؤغهضثفضصحثض","افخجشسمىلاهرلبيل","عصثصعضغثضفثضصلثش"]


WordsArray2 :=[""]

isRunning := false

Numpad1::
    isRunning := !isRunning
    if (isRunning) {
        SetTimer, SendMessages, 100
    } else {
        SetTimer, SendMessages, Off
    }
    Return

    SendMessages:
    SetKeyDelay, 0, 0
    Random, randIndex, 1, % WordsArray.MaxIndex()
    fileName := "./arabicDatabase.txt"
    FileRead, fileContent, % fileName
    StringSplit, lines, fileContent, `n
    linesCount := lines0
    Random, randLine, 1, % linesCount
    FileReadLine, randomLine, % fileName, % randLine

    MsgBox % "Random line: " randomLine

    msg := WordsArray[randIndex]

    Send, %msg%{Enter}
