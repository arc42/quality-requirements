# Änderbarkeit

## Was bedeutet Änderbarkeit?
Aufwand, der zur Durchführung vorgegebener Änderungen notwendig ist. Änderungen sind dabei Korrekturen, Verbesserungen oder Anpassungen an Änderungen der Umgebung, der Anforderungen & der funktionalen Spezifikationen.


Zur Änderbarkeit gehören gemäß DIN/ISO 9126 folgende Teilmerkmale:

* _Analysierbarkeit_: Aufwand, um Mängel oder Ursachen von Versagen zu diagnostizieren oder um änderungsbedürftige Teile zu bestimmen.
* _Modifizierbarkeit_: Aufwand zur Ausführung von Verbesserungen, zur Fehlerbeseitigung oder Anpassung an Umgebungsänderungen
* _Stabilität_: Wahrscheinlichkeit des Auftretens unerwarteter Wirkungen von Änderungen.
* _Testbarkeit_: Aufwand, der zur Prüfung der geänderten Software notwendig ist


Umgangssprachlich heißt Änderbarkeit oftmals Flexibilität, Anpassbarkeit oder Erweiterbarkeit.






## Szenarien für Änderbarkeit

#### Szenario: Wenn die Datenimport-Komponente Daten aus einer zusätzlichen Datenquelle einlesen soll, so muss der dafür notwendige Konnektor innerhalb von drei Personenmonaten entwickelt, integriert und in Betrieb genommen werden können.


Geschäftsziel(e):
Flexibilität, Reaktionsfähigkeit, Entgegenkommen
Reaktion:
Der neue Konnektor ist programmiert und in Betrieb.
Zielwert:
3 Personenmonate


#### Szenario: Das Datenformat des jährlichen Buchungsreports wird jedes Jahr am 31. Dezember aktualisiert, um den gesetzlichen und steuerlichen Änderungen zu genügen. Das System muss das neue Format erzeugen können. 

Geschäftsziel(e):
Betriebsbereitschaft
Reaktion:
Die Buchungs- und Reportingkomponente ist geändert und liefert für den Buchungsreport das neue Format.
Zielwert:
Die Änderung muss in weniger als 80 Personenstunden umgesetzt werden können.

#### Szenario: Ein unabhängiger Entwickler kann PlugIns für das System erstellen. 

Geschäftsziel(e):
Ermögliche der "Community", die Basisfunktionalität des Systems zu erweitern
Auslöser:
Unabhängiger Entwickler (eine "third party") möchte eigene Erweiterung ("PlugIn") für das System erstellen
Reaktion:
Unabhängige Entwickler sind in der Lage, auf Basis vordefinierter Erweiterungspunkte das System zu erweitern. Dafür sind nebem dem System ausschliesslich Open Source Komponenten notwendig.
Zielwert:
Einfache PlugIns sollen innerhalb von 8 Personenstunden umsetzbar sein.

### Szenario: Wechsel des Algorithmus zur Routenberechnung. 

Geschäftsziel(e):
Setze Änderungen oder Verbesserungen in der Routenoptimierung möglichst schnell und einfach um
Auslöser:
Entwickler möchte einen neuen / anderen Algorithmus zur Berechnung passender Routen entwickeln und in das Gesamtsystem integrieren.
Reaktion:
Es gibt keinerlei Seiteneffekte auf andere Bausteine des Systems.
Zielwert:
Es lediglich ein einziger Softwarebaustein (Modul, Komponente, Package) betroffen, der eigentliche Austausch des alten gegen den neuen Algorithmus geschieht innerhalb von 4h (inklusive eventuelle Anpassungen der Build-Umgebung). 


#### Szenario: Ein Entwickler möchte ein neues Feld in die XY-Stammdaten aufnehmen. 

Geschäftsziel(e):
Fähigkeit zur Änderung / Anpassung des Domänenmodells (fachliche Datenstruktur) inklusive Oberfläche und Datenbank.
Auslöser / Stimulus:
Die Fach-, Business- oder Marketingabteilung benötigt in den Stammdaten ein neues Attribut vom Typ "String" (maximale Länge 80 Zeichen)
Reaktion:
Ein Entwickler identifziert die zugehörigen Programmteile, nimmt die notwendigen Erweiterungen vor, testet die Erweiterungen in Integrations- und Systemtestumgebung.
Zielwert:
Alle notwendigen Änderungen und zugehörigen Tests sind innerhalb von 40h (Aufwand) abgeschlossen.


#### Szenario: Unterstütze ANSI SQL-92 kompatibe Datenbanksysteme. 

Geschäftsziel(e):
Flexibilität, biete das System Kunden mit unterschiedlichen Datenbanksystemen an.
Auslöser / Stimulus:
Ein Kunde möchte das System mit einer (für uns neuen) (ANSI-SQL-92 kompatiblen) Datenbank verwenden.
Reaktion:
Entwickler und Tester nehmen das System mit der Datenbank in Betrieb und führen sämtliche Systemtests durch, insbesondere die SQL-92 Kompatibilitätstests.
Zielwert:
Sofern die Datenbank die Kompatibilitätstests erfolgreich durchläuft, sind auch alle übrigen Systemtests erfolgreich.


#### Szenario: Generierter Code für Testfälle ist leicht verständlich und manuell modifizierbar. 
Qualitätsziele: Verständlichkeit, Testbarkeit, Modifizierbarkeit

Geschäftsziel(e):
Tester können den automatisch generierten Code für Testfälle leicht verstehen und eigenen Bedürfnissen anpassen.
Auslöser / Stimulus:
Ein Tester beschreibt einen Testfall in einer (semi-formalen) Sprache.
Reaktion:
Testcode (in C, Java oder C#) für bestimmte Teile des Systems wird durch den XY-Generator automatisch auf Basis dieser Testfallbeschreibung erzeugt.   
Zielwert:
Ein Tester kann den generierten (C- oder Java) Quellcode für einen Testfall im Mittel in weniger als 30 Minuten verstehen und einfache Änderungen daran vornehmen.
Anmerkung: Im hier genannten Szenario ändern Tester generierten Code. Je nach Art des Codegenerators könnte dieser geänderte Code bei Neugenerierung überschrieben werden. Entsprechende Anforderungen müssten in anderen Szenarien gestellt werden.

#### Szenario: Entwickler kann die Ursache fehlgeschlagener Testfälle in kurzer Zeit lokalisieren. 

Geschäftsziel(e):
Kurze Fehlerbehebungszeiten, gute Änderbarkeit, geringes Risiko bei Änderungen
Auslöser / Stimulus:
Entwickler, Tester oder das Build-System führen automatische Testfälle (Unit- oder Integrationstests) aus. 
Reaktion:
Ein Testfall schlägt fehl. Aus den Fehler- und/oder Log-Nachrichten kann ein Entwickler die Ursache/den Auslöser des Fehlers in kurzer Zeit lokalisieren.
Zielwert:
Entwickler findet die Ursache durchschnittlich in weniger als 10 Minuten.

#### Szenario: Der Auftraggeber fordert eine neue Funktion im System. Entwickler identifizieren kurzer Zeit die für diese Erweiterung passende Stelle innerhalb des Quellcodes.

Geschäftsziel(e):
Eine neue Funktion soll in kurzer Zeit implementiert werden können.
Auslöser / Stimulus:
Änderungsanforderung
Reaktion:
Entwickler suchen innerhalb des Quellcodes die geeignete Stelle für die Erweiterung.
Zielwert:
Entwickler finden die geeignete Stelle in weniger als zwei Stunden.

#### Szenario: Eine neue Funktion mittlerer Komplexität soll in kurzer Zeit implementiert werden können.

Geschäftsziel(e):
Eine neue Funktion mittlerer Komplexität soll in kurzer Zeit implementiert werden können.
Auslöser / Stimulus:
Änderungsanforderung
Reaktion und Zielwert:
Entwickler implementieren diese Funktion inklusive automatisierter Testfälle (Unit-Tests) innerhalb von weniger als 5 PT.

#### Szenario: Das bisherige Format der Logmeldungen genügt für den Betreiber nicht mehr. Sämtliche Logmeldungen müssen um zusätzliche Informationen ergänzt werden. 

Geschäftsziel(e):
Flexible Anpassung an geänderte/erweiterte Anforderungen beim Logging.
Auslöser / Stimulus:
Betreiber benötigt zusätzliche Informationen in Logmeldungen (beispielsweise IP-Adresse des ausführenden Webservers, Session-ID oÄ).
Reaktion und Zielwert:
Entwickler müssen die betroffenen Stellen im Quellcode innerhalb von als 40h anpassen können.
Anmerkung: Für dieses Szenarion ist das Verhältnis aus Zielwert und Umfang des betroffenen Quellcodes (LoC) relevant: 

#### Szenario: Ein Entwickler möchte einen Report über alle Buchungen eines Tages implementieren

Geschäftsziel(e):
Eine neue Funktion (geringer Komplexität) soll in kurzer Zeit umsetz- und testbar sein
Auslöser / Stimulus:
Auftraggeber benötigt die Ergebnisse des Buchungsreports
Reaktion und Zielwert:
Entwickler implementiert diese Funktion innerhalb von 3 Arbeitstagen.
Tester testet diese Funktion gegen die Spezifikation innerhalb von 2 Arbeitstagen.

#### Szenario: Entwickler erweitert die externe XY-Schnittstelle um Authentifizierung. 

Geschäftsziel(e):
Die XY-Schnittstelle benötigt ab sofort eine sichere Authentifizerung. 
Auslöser / Stimulus:
Regularien oder Kundenanforderungen erfordern eine sichere Authentifizierung über OAuth 2.0 der XY-Schnittstelle 
Reaktion und Zielwert:
Entwickler erweitern die Schnittstelle um OAuth 2.0 innerhalb von 5 PT Entwicklungszeit.

#### Szenario: Das verwendete Datenbanksystem muss von einem kommerziellen durch ein Open-Source System ersetzt werden können. 

Geschäftsziel(e):
Bei Bedarf und in bestimmten Einsatzszenarien des Systems müssen Lizenzkosten reduziert werden.
Auslöser / Stimulus:
Betreiber/Kunde des Systems möchte die LIzenzkosten des verwendeten Datenbanksystems reduzieren.
Reaktion:
Entwickler können die standardmässig verwendete Oracle (™) Datenbank durch eine quelloffene (etwa: MySQL oder PostgreS ersetzen.
Zielwert:
Der Wechsel der Datenbank ist mit weniger als 40 PT Aufwand durchführbar.
Alle funktionalen Anforderungen werden danach erfüllt, nachgewiesen durch Integrations-, System- und Abnahmetests.
Die Laufzeiten der wichtigsten 15 Anwendungsfälle verschlechtert sich gegenüber der kommerziellen Datenbank um höchstens 15%.
Die Laufzeiten aller übrigen Anwendungsfälle verschlechtert sich gegenüber der kommerziellen Dankbank um höchstens 25%.

#### Szenario: Der XY-Geschäftsprozess kann zur Laufzeit um zusätzlicher Verarbeitungsschritte ergänzt werden 

Geschäftsziel(e):
Dynamische Erweiterung des Geschäftsprozesses XY trägt zur Zufriedenheit der Anwender bei. 
Auslöser / Stimulus:
 Zur Anpassung an Marktbedürfnisse erweitert ein Entwickler oder Architekt den Geschäftsprozess XY um einen zusätzlichen Schritt, während die aktiven Prozessinstanzen von XY vom System bearbeitet werden.
Kontext:
Mehr als 20 Benutzer haben unvollständige Projekte (Daten) auf Basis des aktuellen XY-Prozesses gespeichert.
Reaktion/Zielwert:
Das System aktualisiert selbständig und ohne Datenverlust die vorhandenen Daten der unvollständigen Projekte (automatische Migration der Benutzerspezifischen Daten auf die neue Version von XY).
Die Änderung des XY-Prozesses dauert nicht länger als 80 Personenstunden (Aufwand).

#### Szenario: Der einzelne Verarbeitungsschritt AB innerhalb des Anwendungsfalls XY wird von der Regulierungsbehörde für ungültig erklärt und im System entfernt. Die vom System bearbeiteten Daten sind nicht betroffen. 

Geschäftsziel(e):
Die Änderung am Anwendungsfall XY kann mit geringen Kosten und ohne negative Auswirkungen durchgeführt werden.
Auslöser / Stimulus:
Der Gesetzgeber, vertreten durch die Regulierungsbehörde, untersagt die Verwendung des Verarbeitungsschrittes AB.
Reaktion:
Ein Entwickler oder Architekt entfernt im System den Verarbeitungsschritt AB (durch löschen der entsprechenden Aufrufe oder durch Neukonfiguration der Prozessabläufe).
Zielwert:
Die Änderung erfordert höchstens 24 Zeitstunden mit höchstens 48 Personenstunden Aufwand. Nach dieser Zeit ist das System wieder völlig funktionsfähig.
Diese Änderung hat keine Auswirkung auf die im System vorhandenen Daten der Anwender/Kunden bezüglich des XY-Anwendungsfalles. Eine (automatische) Migration einiger Daten ist zulässig, darf allerdings die 24 Zeitstunden-Grenze nicht überschreiten.


#### Szenario: Erweitere das X-Subsystem um eine vollständig automatisierte Testsuite. 

Geschäftsziel(e):
Verbessere die Änderbarkeit und Testbarkeit des Systems.
Auslöser / Stimulus:
Kunde kündigt umfangreiche Änderungswünsche am X-Subsystem an. Die bessere Änderbarkeit und Testbarkeit reduzieren das Risiko dieser Änderungen.
Reaktion:
Entwickler implementieren Unit- und Integrationstests für sämtliche Klassen sowie Schnittstellen des Subsystems X.
Zielwert:
Gesamtaufwand der Änderungen liegt unter 200 Personentagen. 

#### Szenario: Erweitere das XY-System um einen mobilen Client (Android, iOS), ohne die Performance der übrigen GUI-Teile zu beeinträchtigen. 

Geschäftsziel(e):
Einführung neuer Zugangswege verbreitert die mögliche Kundenbasis und steigert die Attraktivität des Systems.
Auslöser / Stimulus:
Kunden und Verbraucher erwarten (wie selbstverständlich) native mobile Clients als Bestandteil des Produktportfolios.
Reaktion:
Entwicklungsteam entwirft und implementiert mobile Clients für das XY-System sowie die dazu benötigte (Daten-)Schnittstelle. 
Zielwert:
- Die bisherigen (Browser- und Rich-)Clients werden in ihrer Performance in keiner Weise beeinträchtigt. 
- Bei 100 parallelen Browser-Benutzern und 100 gleichzeitig angemeldeten mobilen Clients dürfen maximal 3% der Datenzugriffe maximal 20% mehr Zeit beanspruchen als vor der Einführung der mobilen Clients. 
Anmerkung: Dieses Szenario beschreibt mehrere Qualitätsmerkmale: Attraktivität, Effizienz/Performance, Verfügbarkeit, Robustheit und Änderbarkeit.

#### Szenario: Erweiterungen oder Änderungen eines Subsystems sollen unabhängig von allen anderen Subsystemen möglich sein. 

Geschäftsziel(e):
Leichte Änderbarkeit, schnelle Reaktion auf Fehler.
Auslöser / Stimulus:

Reaktion:
Entwicklungsteam ändern innerhalb eines Subsystems - die Aussenschnittstellen dieses Subsystems bleiben dabei identisch!
Zielwert:
Kein anderes Subsystem muss geändert werden. Für sämtliche anderen Subsysteme gilt:
- Der Quellcode bleibt identisch
- Compile-, Build- und Testprozesse bleiben identisch
- Deployment-, Installation und Konfiguration bleiben identisch
Anmerkung: Diese Anforderung bedeutet, dass sämtliche Subsysteme nur über ihre öffentlichen ("offiziellen") Schnittstellen kommunizieren - und kein Subsystem Interna eines anderen verwendet oder ausnutzt. Herausfordernd insbesondere bei Kopplung über Daten oder Datenstrukturen.

