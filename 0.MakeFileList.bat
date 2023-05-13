@echo off

del /S /Q Result\CN
del /S /Q Result\JAP
del /S /Q Result\TW
del /S /Q Result\EN

dir/b .\Source\CN > I18nCNFiles.txt
dir/b .\Source\JAP > I18nJAPFiles.txt
dir/b .\Source\TW > I18nTWFiles.txt
dir/b .\Source\KOR > I18nKORFiles.txt

dir/b .\Source\CN > PlotCNFiles.txt
dir/b .\Source\JAP > PlotJAPFiles.txt
dir/b .\Source\TW > PlotTWFiles.txt
dir/b .\Source\KOR > PlotKORFiles.txt