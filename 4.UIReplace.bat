del /S /Q .\Resources

copy ..\AG_ReplaceImg\CN\uiatlas_*ui .\Source\Resources\CN\uiatlas_*ui
copy ..\AG_ReplaceImg\KOR\uiatlas_*ui .\Source\Resources\KOR\uiatlas_*ui
dir/b .\Source\Resources\KOR\*ui > Resources.txt

.\bin\AGChangeKorImage.exe .\Resources.txt