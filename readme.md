# Qualitätsanforderungen

Hier finden Sie Beispiele von Qualitätsanforderungen an Software.

Die Ideen zu den hier aufgeführten Szenarien und Qualitätsanforderungen stammen aus unterschiedlichen Quellen und Projekten. Ich habe alle überarbeitet und weitgehend neutralisiert. Die Erklärungen von Qualitätsmerkmalen stammen teilweise aus DIN/ISO 9126.


## Download ##
Zur Zeit gibt es diese Szenarien in html, docx und docbook Format. 

Download [hier, direkt von BitBucket](https://bitbucket.org/arc42/quality-requirements/downloads/ "Qualitätsanforderungen-Beispiele-docx").

## Build / Generierung

#### Voraussetzungen

* Für html-Erzeugung: Java JDK (6 oder 7), [Gradle](http://www.gradle.org/)
* Für vollständige Generierung: bash oä (Windows: cygwin)
* übersetzen der adoc-Texte: entweder [asciidoc](http://asciidoc.org/) oder [**asciidoctor** (bevorzugt)](http://asciidoctor.org/)
* Zur Konvertierung in docx: [pandoc](http://johnmacfarlane.net/pandoc/)

#### Build selbst ausführen
Entweder

    gradle asciidoctor

oder

    ./build.sh
    
* Quellen liegen in asciidoc-Format unter /src/asciidoc.

#### Einschränkungen
* gradle baut zZt nur die html-Version (d.h. ruft pandoc nicht auf, erzeugt kein docbook)
* Deswegen sind aktuelle Versionen in docbook und docx im Build-Verzeichnis 


## Offene Punkte / Fehler
Siehe den [Issue-Tracker](https://bitbucket.org/arc42/quality-requirements/issues?status=new&status=open) für arc42-quality-requirements auf Bitbucket.

## Feedback ##
Ich freue mich über konstruktive Kritik und Verbesserungsvorschläge sowie Beiträge jeglicher Art :-) - in unserem [Issue-Tracker](https://bitbucket.org/arc42/quality-requirements/issues?status=new&status=open "issue-Tracker for arc42-quality-requirements on bitbucket").


## Changes

* 2013-09-28: Links korrigiert, Voraussetzungen, Vorgehen bei build
* 2013-09-23: Umstellung auf gradle-build
* 2013-09: Umstellung auf AsciiDoc für besseres Tagging, Website-Export etc.
* 2013-08: (Automatische) Konvertierung in Markdown
* 2013-07: (Automatische) Konvertierung in docx, für Kompatibilität
* Dezember 2012: Initiale Version (in Scrivener)


