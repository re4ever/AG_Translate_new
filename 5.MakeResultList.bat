@echo off

del /Q Result\CN\TextFiles.txt
del /Q Result\JAP\TextFiles.txt
del /Q Result\TW\TextFiles.txt
del /S /Q .\Decrypt

del /S /Q ..\AG_Translate_Decryptor_CN\Data
del /S /Q ..\AG_Translate_Decryptor_CN\Result
del /S /Q ..\AG_Translate_Decryptor_JAP\Data
del /S /Q ..\AG_Translate_Decryptor_JAP\Result

copy .\Result\CN\*.* ..\AG_Translate_Decryptor_CN\Data\*.*
copy .\Result\JAP\*.* ..\AG_Translate_Decryptor_JAP\Data\*.*

dir/b ..\AG_Translate_Decryptor_CN\Data > ..\AG_Translate_Decryptor_CN\FullTextFiles.txt
..\AG_Translate_Decryptor_CN\bin\ArteryGearTranslator.exe Make ..\AG_Translate_Decryptor_CN\FullTextFiles.txt ..\AG_Translate_Decryptor_CN\FileData.txt
dir/b ..\AG_Translate_Decryptor_JAP\Data > ..\AG_Translate_Decryptor_JAP\FullTextFiles.txt
..\AG_Translate_Decryptor_JAP\bin\ArteryGearTranslator.exe Make ..\AG_Translate_Decryptor_JAP\FullTextFiles.txt ..\AG_Translate_Decryptor_JAP\FileData.txt

copy ..\AG_Translate_Decryptor_CN\Result\DecryptData\*.* .\Decrypt\CN\*.*
copy ..\AG_Translate_Decryptor_JAP\Result\DecryptData\*.* .\Decrypt\JAP\*.*

dir/b .\Result\CN > .\Result\TextFiles.txt
move .\Result\TextFiles.txt Result\CN\TextFiles.txt
dir/b .\Result\JAP > .\Result\TextFiles.txt
move .\Result\TextFiles.txt Result\JAP\TextFiles.txt
dir/b .\Result\TW > .\Result\TextFiles.txt
move .\Result\TextFiles.txt Result\TW\TextFiles.txt
dir/b .\Resources\*.* > UIFiles.txt