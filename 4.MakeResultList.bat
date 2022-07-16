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

del /S /Q ..\AG_Replace_Text_CN\Data\*.*
del /S /Q ..\AG_Replace_Text_JAP\Data\*.*
del /S /Q ..\AG_Replace_Text_TW\Data\*.*
copy .\Result\CN\*.* ..\AG_Replace_Text_CN\Data\*.*
copy .\Result\JAP\*.* ..\AG_Replace_Text_JAP\Data\*.*
copy .\Result\TW\*.* ..\AG_Replace_Text_TW\Data\*.*