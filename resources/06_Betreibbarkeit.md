# Betreibbarkeit

## Was bedeutet Betreibbarkeit?
Betreibbarkeit wird in DIN/ISO 9126 nicht definiert.

In der Praxis gehören hierzu folgende Teilmerkmale:
* _Analysierbarkeit:_ Aufwand, um Mängel oder Ursachen von Versagen zu diagnostizieren oder um änderungsbedürftige Teile zu bestimmen.
* _Installierbarkeit_: Aufwand, der zum Installieren der Software in einer festgelegten Umgebung notwendig ist.
* _Übertragbarkeit_: Eignung der Software, von einer Umgebung in eine andere übertragen zu werden. Umgebung kann organisatorische Umgebung, Hardware- oder Software-Umgebung einschließen. Teilweise als "Portabilität" bezeichnet.
* _Austauschbarkeit_: Möglichkeit, diese Software anstelle einer spezifizierten anderen in der Umgebung jener Software zu verwenden, sowie der dafür notwendige Aufwand.
* _Koexistenz_: Fähigkeit der Software, neben einer anderen mit ähnlichen oder gleichen Funktionen zu arbeiten






## Szenarien für Betreibbarkeit

#### Szenario: Das Werkzeug zur Messung der aktuellen Datenbank-Performance muss sowohl unter MySQL, Oracle und DB2 laufen. 

Geschäftsziel(e):

Reaktion:
Das Werkzeug muss eine Verbindung zu allen genannten Datenbanken aufbauen können und die jeweilige DB-Struktur anzeigen können.

Zielwert:
Initialisierung und Erkennung des verbundenen DB-Typs erfolgt in weniger als 30 Sekunden.

#### Szenario: Das XY-System lässt sich inklusive sämtlicher benötigten Softwarekomponenten vollständig automatisiert installieren. 

Geschäftsziel(e):
Kurze Releasezyklen, um schnelle Erweiterungen oder Fehlerbehebungen produktiv setzen zu können

Auslöser:
Betreiber (oder Administrator) möchte neue Version von XY (innerhalb einer neuen virtuellen Maschine bzw. neuen Hardware) installieren

Reaktion:
Ein automatischer Installer (Skript, Programm) installiert auf Basis einer Ubuntu-Linux Standardinstallation sowohl alle Teile des XY-Systems wie auch sämtliche benötigten zusätzlichen Software- komponenten (etwa: Datenbank, Middleware, Crypto-Module). Sämtliche benötigten Daten (etwa: Datenbank-Initialisierung, LDAP-Standardbenutzer) werden mit angelegt.

Zielwert:
Die gesamte Installation dauert auf Basis eines bereits installierten Ubuntu-Linux höchstens 30 Minuten.

#### Szenario: Langlebigkeit

Die Software kann &uuml;ber 20 Jahre hinweg auf jeweils aktueller Hardware und Software (Betriebssysteme, DB-Systeme usw.)  portiert werden,
wozu nicht mehr als 5 Personentage pro Monat investiert werden m&uuml;ssen.

#### Szenario: Unabh&auml;ngigkeit der Installation von Zuf&auml;llen des Internets

Die Software l&auml;sst sich auf einem System  installieren, ohne dass ein Internetzugang vorhanden ist.
