@echo off

del .\Result\CN\TextFiles.txt
del .\Result\JAP\TextFiles.txt

dir/b .\Result\CN > .\Result\CN\TextFiles.txt
dir/b .\Result\JAP > .\Result\JAP\TextFiles.txt