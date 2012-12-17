---
layout: translation
title: Hakkerin vainu
translation-source-url: http://www.paulgraham.com/javacover.html
translation-source-title: Java's Cover
translation-original-author: Paul Graham
---
### Huhtikuu 2001

Olen käynyt keskusteluja useiden ohjelmoijien kanssa siitä, miksi Java vaikuttaa
epäilyttävältä. Tämä essee on syntynyt näiden keskustelujen pohjalta, ja
tarkoitukseni on enemmänkin tutkia hakkerin vainua kuin kritisoida Javaa!

Ajan myötä hakkereille syntyy kyky aistia hyviä (ja huonoja) teknologioita.
Ajattelin, että olisi kiinnostavaa yrittää kirjoittaa siitä, miksi Java tuntuu
mielestäni huonolta teknologialta.

Jotkut tämän esseen lukeneet ajattelevat, että tämä on kiinnostava yritys
kirjoittaa jostakin, mistä ei ole kirjoitettu aikaisemmin. Toiset sanovat että
joudun hankaluuksiin yrittäessäni kirjoittaa asiasta, jota en ymmärrä. Haluan
vielä selkeästi sanoa, että en tässä esseessä kirjoita Javasta
(ohjelmointikieli, jota en ole ikinä käyttänyt) vaan enemmänkin hakkerin
vainusta (asia, jota olen miettinyt paljon).

* * *

Sanonta *"you can't tell a book by its cover"* tulee ajalta, jolloin kirjoja
myytiin pahvisissa kansissa. Tuolloin kirjan sisällöstä ei pystynyt sanomaan
juuri mitään, mikäli katsoi vain sen kantta. Julkaiseminen on kuitenkin
kehittynyt noista päivistä; tämän päivän kustantajat näkevät paljon vaivaa sen
eteen, että kuluttaja voi tehdä johtopäätöksiä kirjan sisällöstä sen kannen
perusteella.

Käytän paljon aikaa kirjakaupoissa ja koen, että olen oppinut ymmärtämään kaiken
mitä kustantajat yrittävät kertoa minulle kirjasta. Mikäli en ole kirjakaupassa,
olen suurimmaksi osaksi tietokoneiden parissa, ja minusta tuntuu, että olen
joissakin määrin oppinut arvioimaan myös teknologioita niiden kannen
perusteella. Tämä voi olla vain sattumaa, mutta olen onnistunut välttämään
työskentelyn muutaman todella kehnoksi osoittautuneen teknologian parissa.

Tähän mennessä Java on vaikuttanut minusta juuri tällaiselta teknologialta,
kehnolta. En ole koskaan kirjoittanut Java-ohjelmaa, enkä ole muuta kuin
vilkaissut sitä käsitteleviä kirjoja, mutta minulla on kutina että Javasta ei
tule kovin menestyksekästä ohjelmointikieltä. Mielipiteeni saattaa osoittautua
vääräksi, onhan teknologioiden tulevaisuuden ennustaminen vaativaa ja
vaarallistakin. Alla ovat kuitenkin vaatimattomat perusteluni sille, miksi en
pidä siitä miltä Java vaikuttaa.

1. Sitä on hehkutettu hyvin energisesti. Onnistuneita standardeja ei tarvitse
   markkinoida ja mainostaa. Kenenkään ei tarvinnut markkinoida C:tä, Unixia tai
   HTML:ää. Onnistunut standardi on yleensä jo valmiiksi vakiintunut silloin, kun
   suurin osa ihmisistä kuulee siitä. Hakkerin vainun mukaan Perl on yhtä hyvä kuin
   Java tai parempi, mutta ennen kaikkea Perl on mitä on meriittiensä ansiosta.

2. Javan tavoitteet eivät ole korkealla. Alkuperäisessä Java white paper
   -raportissa Gosling selkeästi sanoo, että Java on suunniteltu helposti
   lähestyttäväksi ohjelmoijille, jotka jo osaavat C:tä. Javan suunnittelijat
   tarkoittivat kielen C++:n kaltaiseksi: C maustettuna muutamilla ideoilla
   kehittyneistä ohjelmointikielistä. Kuten sitcom-tv-ohjelmien, roskaruoan ja
   pakettimatkojen tuottajat, Javan kehittäjät tietoisesti suunnittelivat
   tuotteen ihmisille, jotka eivät olleet yhtä fiksuja kuin he.
   Historiallisesti muille ihmisille suunnitellut ohjelmointikielet ovat olleet
   huonoja: Cobol, PL/I, Pascal, Ada, C++. Sen sijaan hyvät ohjelmointikielet
   kuten C, Perl, Smalltalk ja Lisp ovat syntyneet, kun niiden kehittäjät ovat
   luoneet kielen omaa käyttöään varten.

3. Javalla on piilotettuja tavoitteita. Sanonta kuuluu, että maailma olisi
   parempi paikka, mikäli ihmiset kirjoittaisivat kirjoja vain koska heillä on
   jotakin sanottavaa, eikä siksi että he haluavat kirjoittaa kirjan. Emme kuule
   puhuttavan Javasta siksi, että sillä olisi jotakin sanottavaa
   ohjelmointikielistä. Kuulemme Javasta, koska se on osa Sun-yhtiön
   suunnitelmaa Microsoftin heikentämiseksi.

4. Kukaan ei rakasta Javaa. C-, Perl-, Python-, Smalltalk- ja Lisp-ohjelmoijat
   rakastavat ohjelmointikieltään. En ole koskaan kuullut kenenkään sanovan että he
   rakastavat Javaa.

5. Ihmisten on pakko käyttää Javaa. Useat tuntemani Java-ohjelmoijat käyttävät
   Javaa, koska heidän täytyy. He kokevat että Java on edellytys rahoituksen
   saamiseksi, tai että asiakkaat haluavat Java-ohjelmia, tai että heidän
   esimiehensä käskee heidän käyttää Javaa. Tuntemani Java-ohjelmoijat ovat
   fiksuja; jos ohjelmointikieli olisi ollut hyvä, he olisivat käyttäneet sitä
   vapaaehtoisesti.

6. Liian monella kokilla on lusikkansa Java-sopassa. Pienet ryhmät ovat
   kehittäneet parhaat ohjelmointikielet. Sen sijaan komiteat näyttävät
   kehittävän Javaa. Jos Javasta tulee hyvä ohjelmointikieli, olisi se
   ensimmäinen kerta historiassa kun komiteat suunnittelevat kelpo kielen.

7. Java on byrokraattinen. Suppean Java-ymmärrykseni pohjalta näyttäisi siltä,
   että Javassa on paljon protokollia asioiden tekemiseen. Todella hyvät
   ohjelmointikielet eivät sisällä tarpeettomia protokollia. Ne antavat
   ohjelmoijan tehdä mitä hän haluaa eivätkä astu hänen tielleen.

8. Java on pseudo-hip. Sun teeskentelee, että Java on ruohonjuuritason projekti
   ja avoimen lähdekoodin ohjelmisto kuten Perl tai Python. Java on kuitenkin
   suuryritys Sunin kontrollin alainen. Tästä johtuen Javaan tulee
   todennäköisesti liittymään samaa puuduttavaa toitotusta kuin mihin tahansa
   asiaan, jota suuryritys tuottaa.

9. Java on suunniteltu suuria organisaatioita varten. Suurilla organisaatioilla
   on erilaiset tarpeet kuin hakkereilla. Ne haluavat ohjelmointikieliä, jotka
   ovat (heidän uskoakseen) sopivia keskiverto-ohjelmoijista koostuvien tiimien
   käyttöön. Ne haluavat ohjelmointikielten sisältävän rekkojen
   nopeusrajoittimien kaltaisia ominaisuuksia, jotka estävät hölmöjä tekemästä
   suurta vahinkoa. Hakkerit puolestaan eivät pidä ohjelmointikielistä, jotka
   suhtautuvat heihin alentavasti. Hakkerit haluavat valtaa. Historiallisesti
   suurille organisaatioille suunnitellut ohjelmointikielet kuten PL/I ja Ada
   ovat hävinneet, kun taas hakkerikielet kuten C ja Perl ovat voittaneet. Syy:
   tämän päivän teinihakkeri on huomisen teknologiajohtaja.

10. Väärät ihmiset käyttävät Javaa. Ohjelmoijat joita eniten arvostan eivät ole
    lumoutuneet Javasta. Kuka pitää Javasta? Hyvin pukeutuneet johtajat, jotka
    eivät erota ohjelmointikieliä toisistaan, mutta ovat kuulleet Javasta
    uutisissa; suuryritysten ohjelmoijat, jotka ovat innoissaan löydettyään
    jotakin C++:aa parempaa; pinnallisesti motivoituneet opiskelijat, jotka ovat
    valmiita pitämään mistä tahansa joka takaa heille työpaikan (kysytäänkö tätä
    tentissä?). Edellämainittujen ihmisten mielipiteet vaihtuvat tuulen suunnan
    mukaan.

11. Javan isukki on pinteessä. Sunin liiketoimintamallia uhkaa kaksi trendiä:
    Halvat Intel-prosessorit, joita käytetään myös työpöytäkoneissa, ovat
    nykyään enemmän kuin riittävän nopeita palvelinkäyttöön. FreeBSD puolestaan
    vaikuttaa olevan vähintään yhtä hyvä palvelinkäyttöjärjestelmä kuin Solaris.
    Sunin markkinointiviestit vihjaavat, että vakavasti otettavat
    teollisuussovellukset tarvitsevat Sunin palvelimia. Jos tämä olisi totta,
    olisi Yahoo ensimmäisenä jonossa ostamassa Sun-palvelimia; kuitenkin
    työskennellessäni Yahoolla huomasin, että kaikki heidän palvelimensa olivat
    Intel-koneita, joita operoitiin FreeBSD:llä. Tämä lupaa huonoa Sunin
    tulevaisuudelle. Jos Sun joutuu vaikeuksiin, saattaa siitä seurata ongelmia
    myös Javalle.

12. Puolustusministeriö pitää Javasta. Puolustusviranomaiset kehottavat
    ohjelmoijia käyttämään Javaa. Tämä näyttää minusta kaikkein
    huolestuttavimmalta merkiltä. Puolustusministeriö tekee hyvää (joskin
    kallista) työtä maan puolustamiseksi, mutta se rakastaa suunnitelmia,
    toimintaohjeita ja protokollia. Puolustushallinnon kulttuuri on vastakohta
    hakkerikulttuurille. Ohjelmistokysymyksissä heillä on taipumuksena arvata
    väärin. Viimeksi kun puolustusministeriö todella piti jostakin
    ohjelmointikielestä oli kielen nimi Ada.

Pidäthän mielessä että tämä essee ei ole Java-kritiikkiä vaan kritiikkiä Javan
kantta kohtaan. En osaa Javaa tarpeeksi hyvin voidakseni sanoa että pidän tai en
pidä siitä. Tämä essee on pikemminkin kuvaus seikoista, miksi en ole innokas
oppimaan sitä.

Ohjelmointikielen sivuuttaminen kehnona saattaa vaikuttaa ylimieliseltä, jos
henkilö ei ole edes yrittänyt kirjoittaa ohjelmaa kyseisellä kielellä. Tämä on
kuitenkin jotakin, mitä jokaisen ohjelmoijan tarvitsee tehdä, sillä kaikkia
maailman teknologioita ei yksi ihminen voi oppia. Hyvä ohjelmoija oppiikin
tunnistamaan kaukaa teknologiat, jotka ovat oppimisen arvoisia. Olen sivuuttanut
Cobolin, Adan, Visual Basicin, IBM AS400:n, VRML:n, ISO 9000:n, SET-protokollan,
VMS:n, Novell Netwaren ja muunmuassa Corban. Vainuni kertoi, että niissä on
jotakin mätää.

Voi olla, että olen Javan suhteen väärässä. Saattaa olla, että ohjelmointikieli
jota suuryritys markkinoi parantaakseen strategista asemaansa, jota komiteat
kehittävät keskivertokehittäjille, jota hehkutetaan taivaisiin, ja josta
puolustusministeriö pitää, sattuukin olemaan elegantti, kaunis ja
ilmaisuvoimainen kieli jolla rakastan ohjelmoida. Näin voi olla, mutta hyvin
epätodennäköisesti.

[Trevor Re: Java's Cover](http://www.paulgraham.com/trevrejavcov.html)

[Being popular](http://www.paulgraham.com/popular.html)

[2005: BusinessWeek
agrees](http://www.businessweek.com/stories/2005-12-12/java-its-so-nineties)

[Berners-Lee Re: Java](http://www.paulgraham.com/bljava.html)

[Sun Internal Memo](http://www.archub.org/javamemo.txt)
