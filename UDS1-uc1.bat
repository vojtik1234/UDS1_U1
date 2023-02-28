@echo off
rem pro pouziti UTF-8
chcp 65001


rem spustit Sublime Text, Wordpad a Word
Start ""  "C:\Program Files (x86)\Sublime\SublimeText.exe"
Start ""  "C:\Program Files (x86)\Wordpad\Wordpad.exe"
Start ""  "C:\Program Files (x86)\Office\Word.exe"


rem ukončit běžící Malování
taskkill /IM mspaint.exe /F
rem /F pro násilné ukončení, nemusí být


rem zjistit MAC adresu svého počítače
getmac
ipconfig /all
rem vypíše všechny podrobné informace o všech síťových adaptérech na počítači


rem vytvořit na ploše soubor s názvem "kontakty.txt" a do něj zapsat přímo z CMD 3 telefonní čísla svých kamarádů
echo Karel +420 606 606 606 > %userprofile%\Desktop\kontakty.txt
echo Jozin +420 808 808 808 >> %userprofile%\Desktop\kontakty.txt
echo Zbazin +49 162 773 185 >> %userprofile%\Desktop\kontakty.txt


rem tato uložená telefonní čísla si přímo v CMD zobrazit ( + zobrazit z nich pouze řádku obsahující "Karel")
type %userprofile%\Desktop\kontakty.txt
find "Karel" %userprofile%\Desktop\kontakty.txt


rem přidat k nim 4. kontakt
echo FBI +420 111 222 333 >> %userprofile%\Desktop\kontakty.txt


rem vypsat systémové informace vašeho PC a uložit do CSV k sobě na plochu
systeminfo /FO CSV > %userprofile%\Desktop\info.csv