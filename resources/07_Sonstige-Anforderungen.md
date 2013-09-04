


# Sonstige Qualitätsanforderungen

Da hätten wir noch eine nahzu beliebige Menge weiterer Qualitätsanforderungen, beispielsweise Funktionalität. Oder diverse Synonyme bereits vorgestellter Q-Merkmale :-)

Einige Definitionen:

## Funktionalität:

Vorhandensein von Funktionen mit festgelegten Eigenschaften; diese Funktionen erfüllen die definierten Anforderungen. Zu Funktionalität gehören nach DIN/ISO 9126 noch folgende Teilmerkmale:

* _Richtigkeit_: Liefern der richtigen oder vereinbarten Ergebnisse oder Wirkungen, z.B. die benötigte Genauigkeit von berechneten Werten.
* _Angemessenheit_: Eignung der Funktionen für spezifizierte Aufgaben, z.B. aufgaben-orientierte Zusammensetzung von Funktionen aus Teilfunktionen.
* _Interoperabilität_: Fähigkeit, mit vorgegebenen Systemen zusammenzuwirken. Hierunter fällt auch die Einbettung in die Betriebsinfrastruktur.
* _Ordnungsmäßigkeit_: Erfüllung von anwendungsspezifischen Normen, Vereinbarungen, gesetzlichen Bestimmungen und ähnlichen Vorschriften.


## Sonstige Szenarien

#### Szenario: Ein Werkzeug zur Performancemessung muss für unterschiedliche Datenbanksysteme zur Verfügung stehen. 
Qualitätsziele: Portabilität, Effizienz, Betreibbarkeit

Geschäftsziel(e):
Vielseitiges Werkzeug, soll für unterschiedliche Datenbanksysteme zur Verfügung stehen

Auslöser/Stimulus
Das Werkzeug wird (per Dialog, Kommandozeile oder programmatisch) mit einem Datenbanksystem verbunden ("connected"): Oracle, DB2, Sybase, MySQL, PostgreSQL

Reaktion:
Das Werkzeug stellt die Verbindung zum jeweiligen DBMS erfolgreich her - im Werkzeug ist die DB-Struktur sichtbar.

Zielwert:
Der "connect" zur Datenbank erfolgt innerhalb von 30 Sekunden.

#### Szenario: Die Kernfunktionen der Mac-OS Software können unter iOS und Android wiederverwendet werden. 
Qualitätsziele: Wiederverwendbarkeit, Austauschbarkeit

Geschäftsziel(e):
Schnelle Time-to-Market, reduzierte Entwicklungskosten, Marktvergrößerung

Auslöser / Stimulus:
Code ist für Mac-OS entwickelt

Reaktion:
Der Code ist weitmöglich (soweit die Technologie das zulässt) sowohl unter iOS und Android wieder verwendbar.

Zielwert:
Das Entwicklungsteam soll die Kernfunktionen wiederverwenden, ohne sie komplett neu implementieren beziehungsweise entwerfen zu müssen.
Ausnahme hiervon sind direkte Aufrufe der jeweiligen Betriebssystemfunktionen.


#### Szenario: 60% Testabdeckung für Unit-Tests. 
Qualitätsziele: Testbarkeit, Änderbarkeit

Geschäftsziel(e):
Einfache Erweiter- und Änderbarkeit durch hohe Testabdeckung, schnelle Rückmeldung über mögliche Nebenwirkungen bei Codeänderungen.

Auslöser / Stimulus:
Entwickler entwickelt oder ändert eine Funktion / Methode / Klasse.

Reaktion:
Die betroffene Funktion / Methode / Klasse wird durch Unit-Tests überprüft.

Zielwert:
Über 60% Pfadabdeckung wird durch die Unit-Tests erreicht.


#### Szenario: Einfaches Hinzufügen neuer Tests. 
Qualitätsziele: Testbarkeit, Änderbarkeit

Geschäftsziel(e):
Fähigkeit, neue Tests einfach in bestehende Test-Suites zu integrieren.

Auslöser / Stimulus:
Tester möchte neuen Test zu einer bestehenden Testsuite hinzufügen 

Reaktion:
Der Test wird zugefügt ohne den Code des Systems selbst (d.h. Den Produktivcode) zu modifizieren.

Zielwert:
Es ist kein Re-Compile oder Neukonfiguration des Systems (genauer: des Produktivcodes) nötig.
Anmerkung: Testcode oder Testkonfigurationen dürfen jedoch verändert werden.


#### Szenario: Werden zwei stochastische Testreihen ausgeführt, sind die Resultate zu 90% ähnlich . 
Qualitätsziele: Testbarkeit, Konsistenz, Nachvollziehbarkeit

Geschäftsziel(e):
Konsistente Testergebnisse auch bei stochastischen Tests oder Testreihen.

Auslöser / Stimulus:
Testszenario oder Testreihe mit Anteil an zufällig bestimmten Testdaten wird ausgeführt 

Reaktion:
Ähnliche Testergebnisse.

Zielwert:
Die Ergebnisse zweier Testreihen sind bei 90% aller Einzeltests ähnlich.

#### Szenario: Ein Tester möchte mehrere Testszenarien mit einem einzelnen Befehl durchführen können. 
Qualitätsziele: Testbarkeit, Effizienz

Geschäftsziel(e):
Ausführung mehrerer Testszenarien im Batch

Auslöser / Stimulus:
Testadministrator oder Tester möchte mehrere Tests oder Testszenarien durchführen 

Reaktion:
Aggregation oder Hintereinander-Ausführung mehrerer Tests.

Zielwert:
Ausführung mehrerer Tests benötigt nur einen einzigen Befehl des Testers oder Testadministrators.


#### Szenario: Die X-Daten des Y-Systems sollen für ein externes Werkzeug zur Anforderungsanalyse und -management (etwa: Requisite-Pro, Enterprise-Architect oä) zugänglich sein. 
Qualitätsziel: Interoperabilität

Geschäftsziel(e):
Datenkompatibilität mit marktüblichen Werkzeugen zur Anforderungsanalyse zählt als Vorteil gegenüber Mitbewerbern.

Auslöser / Stimulus:
Ein Endbenutzer möchte die X-Daten des Y-Systems in eines der unterstützten Anforderungstools überführen. 

Kontext:
20 Benutzer haben X-Daten in Form einzelner Projekte im System erfasst.
Jedes dieser Projekte enthält mindestens ein, höchstens 100 unterschiedliche Requirements.

Reaktion:
Das Y-System exportiert die betreffenden X-Daten in das Anforderungstool (Requisite-Pro oder Enterprise-Architect).

Zielwert:
- Beim Export der Daten treten keine Fehler auf.
- Von den im Y-System enthaltenen Requirements werden mindestens 98% korrekt exportiert.
- Sämtliche nicht exportierten Requirements werden den betroffenen Benutzern als Fehler gemeldet.


