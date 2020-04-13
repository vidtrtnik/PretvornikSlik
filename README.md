# PretvornikSlik
Batch skripta za pretvorbo in zmanjšanje slik

## Opis
Skripta <code class="language-plaintext highlighter-rouge">PRETVORI.bat</code> pretvori in zmanjša slike v podani mapi in jih naredi bolj primerne primerne za objavo na splet, pošiljanje po mailu itd.


Konverzija slik se izvede z vnaprej pripravljenimi parametri:
- JPEG format, Interlaced
- skaliranje: 66%,
- kvaliteta: 85
- barvni prostor: sRGB,
- strip (odstranitev metapodatkov, komentarjev...)

## Navodila
![Alt text](/navodila/PretvornikSlik1.jpg?raw=true "Navodila 1/3")
![Alt text](/navodila/PretvornikSlik2.jpg?raw=true "Navodila 2/3")
![Alt text](/navodila/PretvornikSlik3.jpg?raw=true "Navodila 3/3")

Ustvarite novo mapo in vanjo skopirajte slike, ki jih želite pretvoriti/zmanjšati. Povlecite in spustite mapo v <code class="language-plaintext highlighter-rouge">PRETVORI.bat</code>. Pritisnite katerokoli tipko za začetek pretvorbe in počakajte, da se postopek konča. Samodejno se ustvari nova mapa s pripono <i>*_PRETVORJENO</i>, ki vsebuje pretvorjene slike.

## ImageMagick
Konverzijo slik izvede program <code class="language-plaintext highlighter-rouge">mogrify.exe</code>, ki je del odprtokodnega programskega paketa za urejanje digitalnih slik [ImageMagick](https://github.com/ImageMagick/ImageMagick/).
[ImageMagick Website](https://imagemagick.org/).