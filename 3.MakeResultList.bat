@echo off

del /Q Result\CN\TextFiles.txt
del /Q Result\JAP\TextFiles.txt

dir/b .\Result\CN > .\Result\TextFiles.txt
move .\Result\TextFiles.txt Result\CN\TextFiles.txt
dir/b .\Result\JAP > .\Result\TextFiles.txt
move .\Result\TextFiles.txt Result\JAP\TextFiles.txt