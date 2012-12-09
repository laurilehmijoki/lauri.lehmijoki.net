---
layout: translation
title: Kyvystä taivuttaa koodia mielensä mukaan
translation-source-url: http://paulgraham.com/head.html
translation-source-title: Holding a Program in One's Head
translation-original-author: Paul Graham
---
### Elokuu 2007

Hyvä ohjelmoija, joka työskentelee intensiivisesti koodinsa parissa, pystyy
pitämään koko ohjelman mielessään. Tässä hän muistuttaa matemaatikkoa.
Matemaatikko ei ratkaise ongelmaa laskemalla paperille vaan kääntämällä ja
muovaamalla kysymystä mielessään. Matemaatikko pyrkii ymmärtämään ongelman niin
hyvin, että hän pystyy mielessään kävelemään sen huoneissa kuten
lapsuudenkodissaan. Parhaimmillaan ohjelmointi on samanlaista; ohjelmoija pitää
koodia mielessään, kyeten muokkaamaan sitä tahtonsa mukaan.

Koko koodin mielessä pitäminen on erityisen arvokasta projektin alussa, koska
tällöin tärkeintä on kyetä vaihtamaan suuntaa. Suunnan vaihtaminen ei tarkoita
vain ongelman ratkaisua eri tavalla, vaan myös koko ongelman
uudelleenmäärittelyä.

Koodi on kuvaus ongelmasta, jota ohjelmoija tutkii. Tästä johtuen vain silloin
kun ohjelmoija pystyy pitämään koko koodin mielessään, voi hän ymmärtää
käsillä olevan ongelman.

Ohjelmoijan ei ole helppoa ladata ohjelmaa mieleensä. Mikäli hän jättää
projektin muutamaksi kuukaudeksi, voi häneltä paluun jälkeen kulua useita päiviä
ongelman uudelleenymmärtämiseen. Jopa silloin, kun ohjelmoija aktiivisesti
työskentelee koodin parissa, voi häneltä kulua puoli tuntia päivän alussa sen
mieleen palauttamiseen. Näin on siis parhaassa tapauksessa. Tavalliset
ohjelmoijat, jotka työskentelevät tyypillisissä toimisto-olosuhteissa, eivät
koskaan saavuta tilaa, jossa koko koodi on heidän mielessään.  Dramaattisemmin
ilmaistuna: tavallinen ohjelmoija tyypillisessä toimistossa ei koskaan ymmärrä
ongelmaa, jota hän yrittää ratkaista.

Jopa parhaat ohjelmoijat eivät aina onnistu rakentamaan kuvaa koko ohjelmasta
mieleensä. On kuitenkin olemassa keinoja, joilla koodin mieleenlataamista voi
helpottaa:

1. **Vältä keskeytyksiä.** Keskeytykset ovat haitaksi monentyyppisille töille,
   mutta erityisesti ohjelmoijat kärsivät keskeytyksistä, koska he
   työskentelevät muistin ja mielen käsittelykyvyn äärirajoilla.

   Keskeytyksen haitallisuus ei riipu sen pituudesta, vaan siitä, kuinka paljon
   se häiritsee ohjelmoijan keskittymistä. Ohjelmoija voi käydä ulkona
   lounastauolla kadottamatta koodikokonaisuutta mielestään. Vääränlainen
   keskeytys voi kuitenkin hävittää koko ohjelman hänen mielestään 30
   sekunnissa.

   Yllättävää kyllä, ohjelmoijan ennalta tietämä keskeytys voi olla
   haitallisempi seurauksiltaan kuin ennakoimaton häiriö; mikäli ohjelmoija
   tietää, että tunnin kuluttua on kokous, ei hän edes yritä keskittyä
   ongelmaan, jonka ymmärtäminen vaatii tuntien katkeamattoman keskittymisen.

2. **Työskentele pitkissä jaksoissa.** Koska ohjelmoijan päivittäisen työn
   aloittamiseen liittyy korkea kiinteä kustannus, on hänen tehokkaampaa
   työskennellä pitkissä jaksoissa. Jossakin vaiheessa raja tulee kuitenkin
   vastaan: väsyneenä ihminen tyhmistyy. Tämä raja kuitenkin vaihtelee eri
   henkilöiden välillä. Olen kuullut koodaajista, jotka hakkeroivat 36 tuntia
   putkeen, mutta oma ylärajani on 18 tuntia, ja parhaimmat työni olen tehnyt
   alle 12 tunnin rupeamien aikana.

   Optimaalinen työrupeaman pituus ei aina ole se maksimi, jonka ohjelmoija
   fyysisesti kestää. Tauon pitäminen voi olla myös hyödyllistä. Joskus, kun
   ohjelmoija palaa levon jälkeen ongelman pariin, on hänen alitajuntansa jo
   työstänyt vastauksen hänelle valmiiksi.

3. **Käytä ilmaisuvoimaista ohjelmointikieltä.** [Ilmaisuvoimaisemmat
   ohjelmointikielet](http://paulgraham.com/power.html) tekevät koodista
   lyhyempää. Ainakin osittain ohjelmoijat hahmottavat ongelmaa käyttämänsä
   ohjelmointikielen kautta. Mitä tiiviimpi ja ilmaisuvoimaisempi
   ohjelmointikieli on, sitä lyhyempää koodista tulee, ja sitä helpompaa
   ohjelmoijan on pitää koko koodi mielessään.

   Ohjelmoija voi vahvistaa kielen ilmaisuvoimaa rakentamalla kerroksia
   koodiinsa. Jokainen koodikerros tarjoaa ylempänä olevalle kerrokselle
   abstraktiotason, joka piilottaa ylemmän kerroksen kirjoittamisen kannalta
   tarpeettomia yksityiskohtia. Jos ohjelmoija tekee tämän työn oikein,
   tarvitsee hänen pitää mielessään vain ylempien kerrosten koodia.

4. **Kirjoita koodia uudelleen ja uudelleen.** Uudelleenkirjoittaminen johtaa
   usein selkeämpään koodiin ja ymmärrettävempiin malleihin. Vaikka
   uudelleenkirjoittaminen ei johtaisi selkeämpään lopputulokseen, voi
   ohjelmoija sen avulla saavuttaa kokonaisvaltaisen ymmärryksen ohjelman
   luonteesta. Näin katsottuna uudelleenkirjoittaminen on ohjelmoijalle
   erinomainen tapa ladata koko koodi mieleen.

5. **Kirjoita ymmärrettävää koodia.** Kaikki ohjelmoijat tietävät, että on
   tärkeää kirjoittaa ymmärrettävää ja helposti luettavaa koodia. Varsinkin
   ohjelman esiversio- eli prototyyppivaiheessa on ohjelmoija itse oman koodinsa
   tärkein lukija. Kun ohjelmoija kirjoittaa koodia itselleen, on
   ymmärrettävyydellä eri kriteerit kuin silloin, kun hän kirjoittaa
   kanssaohjelmoijille. Kirjoittaessaan yleisesti ymmärrettävää koodia on
   ohjelmoijan tärkeää välttää liian tiivistä koodia. Ohjelmasta saattaa tulla
   helpompilukuista, mikäli sen osat on selkeästi eroteltu toisistaan kuten
   johdatustason oppikirjassa. Jos ohjelmoija sen sijaan kirjoittaa koodia
   itselleen, ja hän tavoittelee koodin nopeaa sisäistettävyyttä sekä
   mieleenpalauttamista, on usein parempi tehdä koodista tiivistä.

6. **Työskentele pienissä ryhmissä.** Kun ohjelmoija muovaa koodia mielessään,
   hänen visionsa pysähtuu usein hänen oman koodinsa rajoille. Muiden
   ohjelmoijien kirjoittamaa koodia hän ei ymmärrä yhtä hyvin kuin omaansa, ja
   mikä tärkeämpää, hänellä ei ole vapauksia muokata tällaista koodia kuten
   omaansa. Tästä seuraa, että mitä pienempi ohjelmoijien ryhmä on, sitä
   laajemmin ryhmä voi muokata ohjelmistoprojektia.  Mikäli ohjelmoijia on vain
   yksi, voi hän suunnitella ja kirjoittaa uudelleen koko ohjelman lyhyessäkin
   ajassa.

7. **Älä anna useiden ihmisten muokata samaa koodia.** Muiden kirjoittama koodi
   on ohjelmoijalle aina vieraampaa kuin oma. Vaikka ohjelmoija lukisi toisen
   kirjoittaman koodin kuinka huolellisesti hyvänsä, ei lukeminen johda samaan
   ymmärrystasoon kuin se, että olisi itse kirjoittanut ratkaisun samaan
   ongelmaan. Seurauksena tästä on se, että mikäli tietty koodi on useamman
   ohjelmoijan kirjoittamaa, ei kukaan näistä ohjelmoijista ymmärrä koodia ja
   siihen liittyviä ongelmia yhtä hyvin kuin yksi hyvä ohjelmoija voisi
   ymmärtää.

   Lisäksi ohjelmoija ei voi vapaasti uudelleensuunnitella ja -kirjoittaa
   jotakin, jonka parissa toiset ohjelmoijat parhaillaan työskentelevät. Kyse ei
   ole vain luvan kysymisestä – uudelleensuunnittelu on useiden ohjelmoijien
   ryhmässä usein lähtökohtaisesti poissuljettu ajatus. Uudelleensuunnittelua
   voikin verrata lakien muuttamiseen. Mikäli ohjelmoija suunnittelee uudelleen
   koodin, jonka hän yksin omistaa, muotoilee hän vain uuden tulkinnan
   moniselitteisestä kuvasta. Lain muuttaminen sen sijaan on paljon vaativampaa.

   Mikäli ohjelmoijia on useampia, tulee ohjelma jakaa komponentteihin ja antaa
   jokaiselle henkilölle omansa.

8. **Liiku alhaalta ylöspäin.** Ohjelmoijan on helpompaa pitää koodi mielessään,
   kun hän tutustuu siihen paremmin. Tutustuttuaan ohjelmaan läpikotaisin, hän
   voi alkaa kohdella tiettyjä ohjelman osia mustina laatikoina, joiden sisältöä
   hänen ei tarvitse pitää mielessään. Ohjelmistoprojektin alussa ohjelmoijan on
   kuitenkin pidettävä mielessään kaikki yksityiskohdat. Mikäli ohjelmoija
   tarttuu liian suureen projektiin, ei hän välttämättä koskaan pysty
   ymmärtämään sitä kokonaan. Mikäli ohjelmoijan on kirjoitettava suuri,
   monimutkainen ohjelmisto, paras tapa ei välttämättä ole kirjoittaa sille
   kaikenkattavaa määritelmää, vaan luoda prototyyppi, joka ratkaisee osan
   ongelmista. Mitä tahansa etuja suunnitteluun liittyy, on ohjelmoijan
   tärkeämpää pystyä pitämään koko ohjelmisto mielessään.

On huomionarvoista, miten usein ohjelmoijat onnistuvat sattuman kaupalla
noudattamaan yllä olevaa kahdeksaa kohtaa. Ohjelmoija keksii idean uudesta
projektista, mutta koska hän ei saa virallista tukea idealle, hän ryhtyy
toteuttamaan ideaa työajan ulkopuolella. Yllättäen hän huomaakin olevansa
tehokkaampi kuin toimistolla, sillä hän voi työskennellä kotona ilman
keskeytyksiä ja häiriöitä. Innostuneena, hän työskentelee projektin parissa
useita tunteja putkeen. Koska tämän uuden projektin on tarkoitus olla vain koe,
hän käyttää skriptausohjelmointikieltä, joka osoittautuukin tehokkaammaksi kuin
"tuotanto-ohjelmointikieli". Hän kirjoittaa koodin uudelleen useita kertoja.
Uudelleenkirjoittaminen ei olisi mahdollista virallisessa projektissa, mutta hän
työskentelee omistautuneena, ja hän haluaa koodin olevan täydellistä. Ja koska
kukaan muu kuin hän ei tule koodia näkemään, hän kirjoittaa koodista tiivistä ja
sellaista, jota hänen on helppo muovailla mielessään. Hän työskentelee yksin,
sillä hän ei ole kertonut projektista kenellekään, tai koska projekti vaikuttaa
niin tuottamattomalta, ettei muilla ohjelmoijilla ole virallisesti lupaa
työskennellä sen parissa. Vaikkakin hän työskentelisi pienessä ryhmässä
projektin parissa, muutosten tahti olisi niin nopeaa, ettei kukaan pystyisi
työskentelemään saman osa-alueen parissa. Organisatorisesti katsottuna projekti
liikkuu alhaalta ylöspäin, sillä se on yhden ohjelmoijan käsissä; hän pystyy
pitämään koko koodin mielessään.

Vieläkin huomionvarvoisempaa on, miten usein virallisissa ohjelmistoprojekteissa
tekijät jättävät huomiotta yllä olevat kahdeksan kohtaa. Jos katsot tapaa, miten
ohjelmistoja kehitetään useimmissa organisaatioissa, näyttää siltä, että he
yrittävät tieten tahtoen tehdä ohjelmistokehitystä väärin. Tietyssä mielessä
organisaatiot tekevät ohjelmistokehitystä aina väärin, sillä organisaation
olemukseen kuuluu kohdella yksilöitä keskenään verrannollisina, potentiaalisesti
vaihdettavina koneen osina. Tämä lähestymistapa toimii rinnakkaistuvissa
tehtävissä kuten sodankäynti; ammattisotilaista muodostettu armeija on miltei
aina voittanut yksittäisistä sotureista koostuvan armeijan huolimatta siitä,
miten kunniakkaita ja motivoituneita nämä soturit ovat olleet.
Ohjelmistokehityksessä asia on toisin: ideat ja niiden kehittäminen eivät
rinnakkaistu helposti. Ja sitähän koodi on: ideoita.

Ei ole pelkästään totta, että organisaatiot eivät halua olla riippuvaisia
yksittäisestä nerosta, se on myös tautologia: organisaation määritelmään
sisältyy pyrkimys olla riippumaton yksittäisestä ihmisestä. Ainakin
tämänhetkinen ymmärryksemme organisaation luonteesta on tällainen.

Ehkä voimme keksia organisaation uudelleen. Voisiko olla olemassa organisaatio,
joka pystyisi hyödyntämään yksilöitä ilman, että se vaatisi heitä olemaan
keskenään verrannollisia? Markkina näyttäisi olevan tällainen organisaation
muoto, vaikkakin näyttäisi olevan osuvampaa kuvata markkinaa organisaation
taantuneena muotona, joka ilmaantuu, kun järjestäytynyt organisaatio ei ole
mahdollista.

Todennäköisesti paras ratkaisu olisi erottaa ohjelmistokehitykseen liittyvät
osat organisaation muista osista. Ehkäpä isoille yrityksille ja organisaatioille
olisi optimaalisinta olla yrittämättä kehittää ideoita talon sisällä ja sen
sijaan ostaa ne yksinkertaisesti muualta. Huolimatta siitä, mikä vastaus
osoittautuu parhaaksi tähän organisaatiokysymykseen, on tärkeää tunnistaa
ongelman olemassaolo. Jo käsitteessä ohjelmistoyritys on ristiriita; yritys on
organisaatio, ja käsitteet organisaatio sekä koodi eli ohjelmisto tuntuvat
liikkuvan luonnostaan vastakkaisiin suuntiin. Jokainen hyvä ohjelmoija tulee
tuntemaan tämän ristiriidan nahoissaan, sillä organisaatiot on suunniteltu
estämään se, mihin ohjelmoijat pyrkivät.

Hyvät ohjelmoijat onnistuvat kaikesta huolimatta saamaan paljon aikaiseksi.
Usein saavutukset kuitenkin vaativat ohjelmoijalta kapinanomaisia tekoja häntä
työllistävää organisaatiota vastaan. Ehkä tilannetta auttaisi se, että
organisaation muut työntekijät ymmärtäisivät ohjelmoijien käyttäytyvät oudosti,
koska heidän työnsä edellyttää erityistä keskittymistä ja yksilösuoritusta.
Ohjelmoija ei välttämättä ole vastuuton, jos hän työskentelee pitkiä jaksoja
ilman, että hän ottaa osaa mihinkään muuhun velvollisuuteen, tai jos hän heti
uppoutuu kirjoittamaan koodia yhdessä tehtävän määrittelyn sijaan, tai jos hän
uudelleenkirjoittaa koodia joka jo toimii. Ohjelmoija ei myöskään välttämättä
ole epäystävällinen, jos hän haluaa työskennellä yksin, tai jos hän ärähtää
sinulle, kun käyt ystävällisesti tervehtimässä häntä ovenraosta. Näillä
ärsyttävillä ohjelmoijan käyttäytymiseen liittyvillä ilmiöillä on yksi selitys:
koko koodin mielessä pitäminen on vahva voimavara.

Jos yllä olevan ymmärtäminen ei auta suuria organisaatioita ja yrityksiä, se
varmastikin auttaa niiden kilpailijoita. Suurten yritysten heikoin kohta on se,
että ne eivät anna yksittäisten ohjelmoijien tehdä erinomaista työtä. Jos
sinulla on startup-yritys, tässä on kilpailijoidesi heikko kohta. Ryhdy
ratkaisemaan ongelmia, joiden ratkaiseminen on mahdollista vain yhden suuren
mielen sisällä.

**Kiitokset** henkilöille Sam Altman, David Greenspan, Aaron Iba, Jessica
Livingston, Robert Morris, Peter Norvig, Lisa Randall, Emmett Shear, Sergei
Tsarev sekä Stephen Wolfram, jotka lukivat tämän tekstin luonnoksia.
