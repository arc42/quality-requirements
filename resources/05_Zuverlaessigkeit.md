
# Zuverlässigkeit

## Was bedeutet Zuverlässigkeit?
Fähigkeit der Software, ihr Leistungsniveau unter festgelegten Bedingungen über einen festgelegten Zeitraum zu bewahren.

Zu Zuverlässigkeit gehören nach DIN/ISO 9126 folgende Teilmerkmale:
* _Reife_: Geringe Versagenshäufigkeit durch Fehlzustände.
* _Fehlertoleranz_: Fähigkeit, ein spezifiziertes Leistungsniveau bei Software-Fehlern oder Nicht-Einhaltung ihrer spezifizierten Schnittstelle zu bewahren.
* _Wiederherstellbarkeit_: Fähigkeit, bei einem Versagen das Leistungsniveau wiederherzustellen und die direkt betroffenen Daten wiederzugewinnen.




## Szenarien für Zuverlässigkeit

#### Szenario: Wenn der Datenimport fehlschlägt, gibt das System detaillierte Auskunft über den/die aufgetretenen Fehler. 

Geschäftsziel(e):
Fähigkeit, Fehler im Datenimport schnell zu identifzieren, lokalisieren und zu beheben.

Auslöser
Datenimport schlägt fehl.

Reaktion:
System sammelt die für Fehlerdiagnose und -behebung relevanten Informationen (Art des Fehlers, betroffene Datensätze, Zeit, letzte erfolgreiche ausgeführte Aktion etc.)

Zielwert:
Relevante Informationen werden in weniger als 30 Sekunden nach Auftreten des Fehlers ins Logfile geschrieben und per smtp-Mail an <[x@y.com](mailto:x@y.com)> geschickt.


#### Szenario: Das Diagnose-Subsystem soll die gleiche Messgenauigkeit für Zeitmessungen besitzen, wie entsprechende externe Werkzeuge. 

Geschäftsziel(e):
Externe Messwerkzeuge für die Ausführungszeiten von Transaktionen liefern identische Ergebnisse zum internen Diagnose-Subsystem.

Auslöser
Ein Benutzer stößt im System eine beliebige Transaktion an. Die interne Diagnose ist dabei auf "ein" konfiguriert.

Reaktion:
Das interne Diagnose-Subsystem speichert die Anfangs- und Endzeit der Transaktion.

Zielwert:
Die vom internen Diagnose-Subsystem gemessenen Zeiten stimmen im Bereich von 5% mit Werten überein, die externe Werkzeuge für diesselbe Transaktion ermittelt haben.


#### Szenario: Das System besitzt eine Ausfallsicherung für den Servlet-Container. 

Geschäftsziel(e):
Problemlose Behandlung genereller Fehler- und Ausfallsituationen

Auslöser:
Der Servlet-Container stürzt aufgrund eines Softwareproblems ab-
Hardware und Betriebssystem sind weiterhin verfügbar. 

Reaktion und Zielwert:
Das Monitoringsystem entdeckt den Ausfall innerhalb von 1 Sekunde, stellt innerhalb von 15 Sekunden einen Ersatz-Container bereit und ist nach spätestens 120 Sekunden wieder voll funktionsfähig.

Bemkerungen:
Für ein konkretes System wäre hierbei zusätzlich zu spezifizieren, ob und in welchem Umfang die gerade aktiven Sessions des ausgefallenen Containers gesichert und auf das Ersatzsystem übertragen werden müssen.


#### Szenario: Das System verarbeitet während der pdf-Generierung und Dateikonvertierung (im Speicher) Daten im Bereich bis zu mehreren Gigabyte. Sollte es zu Speicherknappheit oder -überlauf kommen, darf das System nicht abstürzen, sondern muss aussagekräftige Log-Meldungen schreiben, die Generierung kontrolliert beenden und die Benutzer darüber benachrichtigen. 

Geschäftsziel(e):
Zuverlässigkeit des Systems auch bei umfangreichen und voluminösen Generierungs- und Konvertierungsaufgaben.

Auslöser:
Das System generiert oder konvertiert Daten, eventuell verteilt auf mehrere Threads, Prozesse oder Knoten. Es tritt an mindestens einem dieser Threads, Prozesse oder Knoten ein Speicherüberlauf auf.

Reaktion:
Das System beendet die entsprechenden Prozesse kontrolliert und speichert den Zwischenstand der Generierung/Konvertierung zur späteren Verwendung ab. Es erzeugt eine passende Logmeldung und informiert den jeweiligen Benutzer über die Situation. 

Zielwert:
Speicherüberlauf wird innerhalb von 15 Sekunden erkannt, alle beteiligten Prozesse innerhalb weiterer 15 Sekunden kontrolliert beendet.
Bemerkung: auch Benutzerbarkeit

#### Szenario: Das System verhält sich auch bei Unterspannungen der Hardware-Sensoren (bis zu 15% unterhalb der Nennspannung) in allen Belangen funktional korrekt. 

Geschäftsziel(e):
Zuverlässigkeit

Auslöser / Stimulus:
Die Spannung der Hardware-Sensoren (z.B. Sensor zur Messung der Papier-Transportgeschwindigkeit, der Durchflussgeschwindigkeitoä) sinkt höchstens 15% unterhalb der vorgeschriebenen Nennspannung.

Reaktion:
Alle Systemfunktionen arbeiten korrekt weiter.

Bemerkung: Einige Sensor-Typen verhalten sich bei Unterspannung unkontrollierbar, manche arbeiten langsamer, andere ungenau, andere gar nicht mehr. Die Systemfunktionen müssen daher die Spannung der Sensoren überwachen und auf Spannungsprobleme entsprechend reagieren.

#### Szenario: Kein Datenverlust bei Spannungsverlust oder Unterspannung. 

Geschäftsziel(e):
Robustheit gegenüber Schwankungen oder Ausfällen der elektrischen Versorgung. Das System verliert bei Spannungsverlust oder Unterspannung (der gesamten Netzversorgung) keine Daten.

Auslöser / Stimulus:
Die Versorgungsspannung fällt aus oder schwankt um bis zu 25%.

Reaktion:
Das System ist lange genug durch redundante Stromversorgung gesichert, um im Falle des Verlustes der regulären Stromversorgung noch sämtliche im Speicher befindlichen Daten konsistenz auf langfristigen Speichermedien sichern zu können.

Zielwert:
Spannungsverlust oder Unterspannung wird innerhalb von 200msec erkannt.


#### Szenario: Das System bietet eine Ausfallsicherung des Servlet-Containers. 

Geschäftsziel(e):
Das System soll Ausfälle der allgemeinen Infrastruktur (insbesondere Servlet-Container) problemlos und ohne Absturz behandeln.

Auslöser / Stimulus:
Der (für viele Systemfunktionen notwendige) Servlet-Container fällt aus.

Reaktion:
Das System erkennt den Ausfall und transferiert alle noch zur Verfügung stehenden Daten/Sessions auf einen Ersatz-Servlet-Container.

Zielwert:
Entdecke den Fehler im Servlet-Container innerhalb von 1 Sekunde.
Fährt den Hot/Cold-Standby Servlet-Container innerhalb von 30 Sekunden hoch.
Nach 180 Sekunden hat das System die gesamte Funktionalität von vor dem Ausfall wieder hergestellt. 


#### Szenario: Auch im Dauerbetrieb verhält sich das System gegenüber Online-Benutzern angemessen stabil und robust.

Geschäftsziel(e):
Das System soll sich gegenüber Online-Benutzern auch nach längerer Benutzung stabil und robust verhalten. 

Auslöser / Stimulus:
Endbenutzer verwenden das System für mindestens 8 Stunden ohne Neustart, Abmeldung oder sonstige Unterbrechung.
Dabei sind ständig mindestens 20 parallele Benutzer am System angemeldet - höchstens 1000 parallele Benutzer.

Reaktion:
Das System funktioniert für alle angemeldeten Benutzer korrekt.
Für den oder die die lange angemeldeten Benutzer gilt dies ebenfalls.

Zielwert:
In der gesamten Zeit tritt bei den Benutzern kein Absturz auf.
Anmerkung: Es muss für die Benutzer zumindest so aussehen, als verhalte sich das System stabil. Serverseitige Probleme muss das System gegenüber den Benutzern kaschieren oder durch Standby-Systeme oder Failover kompensieren können.


