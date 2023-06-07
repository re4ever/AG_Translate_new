@echo off

del /Q /S .\Result\*.*
dir/b .\CN\uiatlas_agcard_*.* .\CN\spineagmax_*.* .\CN\plot_*.* .\CN\agfashion_*.* .\CN\agl2d_*.* .\CN\bg_*.* .\CN\uiatlas_boss*.* > CharFiles.txt
dir/b .\CN\uiatlas_*icon*.* | findstr /v /i "uiatlas_icon200" | findstr /v /i "uiatlas_icon160" | findstr /v /i "uiatlas_icon100" | findstr /v /i "uiatlas_iconavatar" | findstr /v /i "uiatlas_iconbar" | findstr /v /i "uiatlas_iconbattle" | findstr /v /i "uiatlas_iconequip" | findstr /v /i "uiatlas_iconspin" > IconFiles.txt
dir/b .\CN\uiatlas_*ui*.* .\CN\uiatlas_*activity*.* .\CN\uiatlas_jjcpvp.* .\CN\uiatlas_worldbossnewseason1.* | findstr /v /i "icon"> UIFiles.txt
dir/b .\Movie\CN\L2Din_*.usm .\Movie\CN\SkillVideo*.usm > MovieFiles.txt

