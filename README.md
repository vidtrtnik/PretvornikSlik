# PretvornikSlik
Batch skripte za pretvorbo in zmanjšanje slik

## Opis
Skripta <code class="language-plaintext highlighter-rouge">PRETVORI.bat</code> pretvori in zmanjša slike v podani mapi in jih naredi bolj primerne primerne za objavo na splet, pošiljanje po mailu itd.  
Skripta <code class="language-plaintext highlighter-rouge">PRETVORI_V_PDF.bat</code> pretvori in zmanjša slike v podani mapi ter iz njih ustvari PDF dokument (ena slika na stran).  
Skripta <code class="language-plaintext highlighter-rouge">VODNI_ZIG.bat</code> vsem slikam v podani mapi v spodnji desni rob izriše vodni žig.  

Konverzija slik se izvede z vnaprej pripravljenimi parametri:
- JPEG format - Interlaced,
- zmanjšanje: na 1000px višine,
- kvaliteta: 90,
- barvni prostor: sRGB,
- strip (odstranitev metapodatkov, komentarjev...),
- samodejna rotacija slik

## Navodila
![Alt text](/navodila/PretvornikSlik1.jpg?raw=true "Navodila 1/3")
![Alt text](/navodila/PretvornikSlik2.jpg?raw=true "Navodila 2/3")
![Alt text](/navodila/PretvornikSlik3.jpg?raw=true "Navodila 3/3")

Ustvarite novo mapo in vanjo skopirajte slike, ki jih želite pretvoriti/zmanjšati. Povlecite in spustite mapo v <code class="language-plaintext highlighter-rouge">PRETVORI.bat</code>. Pritisnite katerokoli tipko za začetek pretvorbe in počakajte, da se postopek konča. Samodejno se ustvari nova mapa s pripono <i>_PRETVORJENO</i>, ki vsebuje pretvorjene slike.  

Za pretvorbo v PDF prav tako ustvarite novo mapo in vanjo skopirajte slike, ki jih želite pretvoriti. Povlecite in spustite mapo v <code class="language-plaintext highlighter-rouge">PRETVORI_V_PDF.bat</code>. Pritisnite katerokoli tipko za začetek pretvorbe in počakajte, da se postopek konča. Samodejno se ustvari nova mapa s pripono <i>_PR-PDF</i>, ki vsebuje PDF dokument s slikami.  

Za izris vodnega žiga ustvarite novo mapo in vanjo skopirajte slike, ki jim želite dodati vodni žig. Povlecite in spustite mapo v <code class="language-plaintext highlighter-rouge">VODNI_ZIG.bat</code>. Nato vpišite pot do vodnega žiga (ki mora biti v formatu .png ali .jpg). Pritisnite katerokoli tipko in počakajte, da se postopek konča. Samodejno se ustvari nova mapa s pripono <i>_PR-VZ</i>, ki vsebuje pretvorjene slike.  

## ImageMagick
Konverzijo slik izvede program <code class="language-plaintext highlighter-rouge">magick.exe</code>, ki je del odprtokodnega programskega paketa za urejanje digitalnih slik [ImageMagick](https://github.com/ImageMagick/ImageMagick/).
[ImageMagick Website](https://imagemagick.org/).
