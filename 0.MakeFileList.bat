@echo off

del /S /Q Result\CN
del /S /Q Result\JAP

dir/b .\Source\CN > I18nCNFiles.txt
dir/b .\Source\JAP > I18nJAPFiles.txt

dir/b .\Source\CN > PlotCNFiles.txt
dir/b .\Source\JAP > PlotJAPFiles.txt