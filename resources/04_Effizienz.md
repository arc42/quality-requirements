
---
# Effizienz

## Was bedeutet Effizienz?
Nach DIN/ISO 9126: Verhältnis zwischen dem Leistungsniveau der Software und dem Umfang der eingesetzten Betriebsmittel unter festgelegten Bedingungen.
In der Praxis oftmals vereinfacht als _Performance_, Verarbeitungsgeschwindigkeit, Antwortzeit, Skalierbarkeit, Durchsatz, Speicherbedarf oder Mengengerüst bezeichnet.
 
Nach DIN/ISO 9126 gehören zu Effizienz folgende Teilmerkmale:

* _Zeitverhalten_: Antwort- und Verarbeitungszeiten sowie Durchsatz bei der Funktionsausführung.
* _Verbrauchsverhalten_: Anzahl, Menge und Dauer der benötigten Betriebsmittel für die Erfüllung der Funktionen.

Anmerkung: Die Effizienz vorhandener Software können Sie "am lebenden Objekt" objektiv messen. Insofern ist die Prüfung, ob Effizienzanforderungen an Software erreicht werden, verhältnismäßig einfach möglich. 


## Szenarien für Effizienz


#### Szenario: Schnelle Erzeugung großer Mengen an Testdaten für das XY-System. 

Geschäftsziel(e):
Effektives Testen, Test mit großen Datenmengen.

Auslöser:
Ein Tester benötigt für den Test des XY-Systems Testdaten.

Reaktion:
Der Testdaten-Generator erzeugt 1 Gigabyte an passenden, fachlich korrekten Testdaten.

Zielwert:
Laufzeit weniger als eine Stunde.

#### Szenario: Das Diagnose-Subsystem beeinflusst die Ausführungszeit von Funktionen und Transaktionen des Systems nur in geringem Umfang . 

Geschäftsziel(e):
Genaues Reporting über Laufzeiten und genaue Fehlerdiagnose ohne Beeinträchtigung von Laufzeiten.

Auslöser:
Benutzer, Tester oder Administrator ruft eine Diagnosefunktion auf.

Reaktion:
Das System arbeitet ohne Einschränkung weiter.

Zielwert:
Alle Funktionen und Transaktionen des Systems laufen funktional korrekt. Laufzeiten sind gegenüber abgeschaltetem Diagnose-Subsystem höchstens 5% höher.


#### Szenario: Generierung aller für den Monatsabschluss erforderlichen Reports und Listen innerhalb von 4h Laufzeit. 

Geschäftsziel(e):
Performanter und pünktlicher Monatsabschluss

Auslöser / Stimulus:
Die Controlling- oder Finanz-Abteilung startet nach Buchungsschluss den Monatsabschluss.

Reaktion:
Das System generiert alle notwendigen Reports und Listen.

Zielwert:
Die Generierung endet spätestens nach 4h Laufzeit, erste (einfache) Reports stehen dem Controlling nach 30 Min Laufzeit zur Verfügung.

#### Szenario: Sämtliche Integrationstests des Subsystems XY können innerhalb von 15 Minuten automatisiert ausgeführt werden. 

Geschäftsziel(e):
Risikoarme Änderungen und Erweiterungen.

Auslöser / Stimulus:
Entwickler führt eine Änderung am Quellcode im Subsystem XY durch und startet anschliessend die automatisierte Testsuite (der Initegrations- und Unittsts) dieses Subsystems. 

Reaktion:
Das Testframework führt sämtliche Testfälle aus und berichtet die Testergebnisse an den Benutzer.

Zielwert:
Sämtliche Testfälle sind in weniger als 15 Minuten komplett ausgeführt.

Bemerkung: Last-, Performance- oder Stresstests können unabhängig von den Integrationstests auch länger laufen. Diese sind nicht Bestandteil dieses Szenarios.

#### Szenario: In 90% aller Fälle erhalten Benutzer die XY-Daten innerhalb von 3 Sekunden. 

Geschäftsziel(e):
Paralleles Arbeiten mehrerer Benutzer ist mit akzeptabler Laufzeit möglich

Auslöser / Stimulus:
10 echt parallel arbeitende Benutzer fordern vom System die XY-Daten an.

Reaktion:
Das System zeigt bei allen anfordernden Benutzern die korrekten Daten an.

Zielwert:
Bei mindestens 9 von 10 dieser Benutzer dauert diese Anfrage 3 Sekunden oder weniger (in 90% der Anfragen nach den XY-Daten antwortet das System in 3 Sekunden oder schneller).

#### Szenario: Bei 200 oder mehr gleichzeitig angemeldeten Benutzern verhält sich das System immer noch performant. 

Geschäftsziel(e):
Fähigkeit des Systems, seine Funktionsfähigkeit, insbesondere an der GUI, auch bei mehreren parallelen Benutzern zu erhalten.

Auslöser:
200 oder mehr Benutzer sind am System angemeldet.
20 oder mehr Benutzer arbeiten gleichzeitig im XY-Dialog aus oder starten eine YZ-Berechnung.

Reaktion:
Das System arbeitet normal und bedient sämtliche Benutzer.

Zielwert:
Die Reaktionen des Systems im XY-Dialog erfolgen innerhalb von 2 Sekunden.
Das System führt die YZ-Berechnung in weniger als 5 Sekunden durch. 
Bemerkung: Skalierbarkeit

#### Szenario: Das XY-System soll auch umfangreiche benutzerdefinierte Reports in weniger als 1 Sekunde speichern. 

Geschäftsziel(e):
Reaktive Benutzeroberfläche steigert Bedienkomfort.

Auslöser:
Benutzer hat einen spezifischen Report konfiguriert und speichert diesen über die "speichern" Funktion ab.

Reaktion und Zielwert:
Das System speichert die gesamte Reportdefinition (im xml-Format) in weniger als 1 Sekunde. 


#### Szenario: An Benutzerprofil angepasste grafische Konfigurationsoberfläche erscheint in weniger als 2 Sekunden. 

Geschäftsziel(e):
Reaktive Benutzeroberfläche steigert Bedienkomfort.

Auslöser:
Benutzer startet die Konfigurationsoberfläche für Reports.

Reaktion und Zielwert:
Beim Start der Report-Konfigurationsoberfläche erscheint eine gemäß des Benutzeprofils aufbereitete grafische Oberfläche in weniger als 2 Sekunden.



