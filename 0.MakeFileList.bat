@echo off

del /S /Q Result\CN
del /S /Q Result\JAP
del /S /Q Result\TW

dir/b .\Source\CN > I18nCNFiles.txt
dir/b .\Source\JAP > I18nJAPFiles.txt
dir/b .\Source\TW > I18nTWFiles.txt
dir/b .\Source\KOR > I18nKORFiles.txt

dir/b .\Source\CN > GuideCNFiles.txt
dir/b .\Source\JAP > GuideJAPFiles.txt
dir/b .\Source\TW > GuideTWFiles.txt
dir/b .\Source\KOR > GuideKORFiles.txt

dir/b .\Source\CN > PlotCNFiles.txt
dir/b .\Source\JAP > PlotJAPFiles.txt
dir/b .\Source\TW > PlotTWFiles.txt
dir/b .\Source\KOR > PlotKORFiles.txt

dir/b .\Source\CN > HelpCNFiles.txt
dir/b .\Source\JAP > HelpJAPFiles.txt
dir/b .\Source\TW > HelpTWFiles.txt
dir/b .\Source\KOR > HelpKORFiles.txt