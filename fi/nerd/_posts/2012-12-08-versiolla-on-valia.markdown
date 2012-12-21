---
layout: article-fi
title: Versiolla on väliä
---

Kehittäjienvälinen viestintä on ohjelmistokehityksen tärkeimpiä näkökulmia.
Viestintää tapahtuu monella tasolla; käytäväkeskustelut ja tiimin sisäiset
palaverit ovat vain osa ohjelmistokehitykseen liittyvän viestinnän kirjoa.
Viestintämuoto, johon kehittäjät usein kiinnittävät liian vähän huomiota, on
koodin välityksellä keskusteleminen ja merkitysten välittäminen. Tässä
artikkelissa esittelen erään menetelmän, jonka uskon olevan hyödyksi monille
ohjelmistokehitysprojekteille.

## Semanttinen versiointi – tietopainotteinen viestintä hyveenä

Semanttinen versiointi on formaali määritelmä<span class="source-reference">[1]</span>
teknisille ohjelmistoversioille. Sen lähtökohtana on, että
ohjelmistoversiomuutosten tulisi olla ymmärrettäviä ja johdonmukaisia.

Semanttisessa versioinnissa ohjelmiston versio muodostuu kolmesta komponentista:
pää-, ala- ja korjausversionumerosta.

<pre class="color-green">
                alaversionumero
                |
                | korjausversionumero
pääversionumero | |
              | | |
              1.2.7
</pre>

### Pääversionumero

Semanttisessa versioinnissa pääversionumero kuvaa ohjelman
taaksepäinyhteensopivuutta sekä kypsyysastetta.  Alle 1 olevan versiot ovat
vielä kehitysversioita, joissa mikä tahansa voi muuttua. Tämä antaa kehittäjille
työskentelyrauhaa, sillä heidän ei tarvitse kuluttaa aikaa
etukäteissuunnitteluun, joka voi myöhemmin osoittautua tarpeettomaksi, vaan he
voivat keskittyä ohjelman esiversion eli prototyypin kehittämiseen. Tällainen
alle 1 oleva versio, esimerkiksi 0.3.2, kertoo ohjelman käyttäjille, että
tulevissa versioissa ohjelman keskeisetkin käsitteet ja käytännöt voivat muuttua
radikaalisti.

Taaksepäinyhteensopivuuden viestintä on ohjelmistokirjastoissa tärkeää. Mikäli
taaksepäinyhteensopivuus katkeaa, joutuu kirjaston käyttäjä usein muuttamaan
omaa ohjelmaansa, jotta hän voisi ottaa kirjaston uuden version käyttöön.
Kirjaston kehittäjä on velvollinen viestimään jollakin tavalla yhteensopivuuden
katkeamisesta, ja semanttisen versioinnin mukainen pääversionumero tarjoaa tähän
mainion työkalun.

### Alaversionumero

Alaversionumeron kasvattaminen kuvaa uusien ominaisuuksien lisäämistä tavalla,
joka ei riko taaksepäinyhteensopivuutta. Mikäli semanttisesti versioidun
ohjelmiston versionumero muuttuu 1.2.1 –> 1.3.0, voi ohjelmiston käyttäjä
päätellä, että ohjelmistoon on tullut uusia ominaisuuksia, mutta hänen ei
välttämättä tarvitse tietää niistä, sillä uusi versio on hänen jo-käyttämänsä
version kanssa yhteensopiva.

### Korjausversionumero

Semanttisesti versioidun ohjelmiston korjausversionumero kohoaa aina, kun
ohjelmistosta julkaistaan uusi versio, joka sisältää pelkästään korjauksia.

Mikäli versio muuttuu 2.4.0 –> 2.4.1, haluaa ohjelmiston kehittäjä viestiä, että
uusi versio sisältää korjauksen edellisessä versiossa olleeseen virheeseen,
mutta että se ei sisällä uusia ominaisuuksia.

## Lopuksi

Ohjelmistokehitys on tärkeältä osin viestintää ja maailman ymmärrettävämmäksi
tekemistä. Valitse selkeys – valitse semanttinen versiointi!

***

\[1\] [Semantic versioning](http://semver.org/)
