@echo off

del /Q /S .\Result\*.*

rem dir/b .\CN\uiatlas_*.*> CandidateFile.txt

.\bin\AGReplaceSprite.exe .\CandidateFile.txt UI