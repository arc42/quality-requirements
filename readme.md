# Qualitätsanforderungen ![](icon.png)
Hier finden Sie Beispiele von Qualitätsanforderungen an Software.

Die Ideen zu den hier aufgeführten Szenarien und Qualitätsanforderungen stammen aus unterschiedlichen Quellen und Projekten. Ich habe alle überarbeitet und weitgehend neutralisiert. Die Erklärungen von Qualitätsmerkmalen stammen teilweise aus DIN/ISO 9126 und DIN/ISO 25010.

## Download

Zur Zeit gibt es diese Szenarien im PDF-Format [direkt von Github Releases](https://github.com/arc42/quality-requirements/releases/).

## Build / Generierung
### Voraussetzungen
- Für html-Erzeugung: Java JDK, [Gradle](http://www.gradle.org/)
- Für vollständige Generierung: bash oä (Windows: cygwin)
- übersetzen der adoc-Texte: entweder [asciidoc](http://asciidoc.org/) oder [**asciidoctor** (bevorzugt)](http://asciidoctor.org/)
- Zur Konvertierung in docx: [pandoc](http://johnmacfarlane.net/pandoc/)

### Build selbst ausführen
Entweder `gradle` oder

```
./build.sh
```

- Quellen liegen in asciidoc-Format unter /src/asciidoc.

### Einschränkungen
- gradle baut zZt nur html- und pdf-Versionen sowie eine einfache (ungestylte) docx.
- Daher: docx manuell korrigiert (gestyled) unter build/docs bzw. resources  
- aktuelle Versionen (ohne styling) in docbook und docx im Build-Verzeichnis

## Offene Punkte / Fehler
Siehe den [Issue-Tracker](https://github.com/arc42/quality-requirements/issues) für arc42-quality-requirements auf Github.

## Feedback
Ich freue mich über konstruktive Kritik und Verbesserungsvorschläge sowie Beiträge jeglicher Art :-) - in unserem [Issue-Tracker](https://github.com/arc42/quality-requirements/issues "issue-Tracker for arc42-quality-requirements on Github").

## Status
![Issues](http://img.shields.io/github/issues/arc42/quality-requirements.svg)

## Danke
Alex Heusingfeld, Christoph Iserlohn, Roland Weisleder

## Changes (sofern nicht aus dem Commit-Log ersichtlich)

- 2015-09-22: Ergänzung um ISO-25010
- 2015-05-11: Issue-Tracker Links korrigiert
- 2013-09-28: Links korrigiert, Voraussetzungen, Vorgehen bei build
- 2013-09-23: Umstellung auf gradle-build
- 2013-09: Umstellung auf AsciiDoc für besseres Tagging, Website-Export etc.
- 2013-08: (Automatische) Konvertierung in Markdown
- 2013-07: (Automatische) Konvertierung in docx, für Kompatibilität
- Dezember 2012: Initiale Version (in Scrivener)
