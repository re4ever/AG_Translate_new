@echo off

del /Q /S .\Result\*.*
dir/b .\CN\uiatlas_agcard_*.* .\CN\spineagmax_*.* .\CN\plot_*.* .\CN\agfashion_*.* .\CN\agl2d_*.* .\CN\bg_*.* .\CN\uiatlas_boss*.* > CharFiles.txt
dir/b .\CN\uiatlas_*.* | findstr /v /i "uiatlas_agcard_" > UIFiles.txt
dir/b .\Movie\CN\L2Din_*.usm .\Movie\CN\SkillVideo*.usm > MovieFiles.txt

