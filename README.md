# Dabendorfer Beziehungsrechner - iOS
:de: Dieses Projekt erzeugt eine iOS App, welche es ermöglicht, für Menschen zu berechnen, wie gut sie zueinander passen. Hierbei bedient sich das Programm dem magischen Dabendorfer Beziehungsalgorithmus.

:uk: This project creates a an iOS app, that calculates how well people are matching to each other. The program uses the magical relationship algorithm of Dabendorf.

:fr: Napoléon n'a pas encore transmis la traduction à nous.

## Berechnung des Beziehungswertes
:de: Um die Ehen der Dabendorf Orthodoxen Bürger effektiv segnen zu können, hat _N_ einen großartigen Algorithmus erschaffen, der anhand der Namen der Personen einen einzigartigen Beziehungsinteger für jede Partnerschaft ausgibt und anzeigt, wie wahrscheinlich eine großartige Wirksamkeit selbiger in Zukunft zu sein scheint. Hierbei ist 10 Prozent der kleinste mögliche Wert und 100 Prozent die maximale Anzahl an Erfolg. Die Berechnung desselben ist für jeden Dabendorfer im Kopf möglich.

:uk: To effectively bless the marriages of Dabendorf Orthodox citizens _N_ has created a great algorithm, which outputs a unique relationship integer for each partnership based on the names of the persons and an indication of how good a great relationship seems to be in the future. The smallest possible value is 10 percent and 100 percent is the maximum number of success. The calculation of this algorithm is easily possible in a mental way.

###Beispiel
:de: Dieses Beispiel zeigt die Berechnung des Beziehungswertes für `Gernot` und `Renate`.

0. Beide Namen werden nach dem Alphabet sortiert und ihre Einzelbuchstaben in einen Array aus Buchstaben geschrieben. (Sonderzeichen werden hierbei in die Buchstaben des 26stelligen Grundalphabets umgewandelt).
 ``` swift
[G, E, R, N, O, T, R, E, N, A, T, E]
```

1. Anschließend wird unter jeden Buchstaben geschrieben, wie oft er im gesamten Array vorkommt. Die Zahlen bilden den neuen Array.
 ``` swift
[1, 3, 2, 2, 1, 2, 2, 3, 2, 1, 2, 3]
```

2. Danach werden die erste und die letzte Zahl, die zweite und die vorletzte Zahl usw. jeweils addiert und an eine neue Liste angehangen. Bei ungerader Anzahl wird die mittlere Zahl einzeln angefügt. Die Zahlen bilden den neuen Array.
 ``` swift
[4, 5, 3, 4, 4, 4]
```

3. Der vorherige Schritt wird so oft wiederholt, bis eine Zahlenreihe übrig bleibt, die aneinander gereiht kleiner als 100 ist.
 ``` swift
[8, 9, 7]
```

4. Wenn ein zweistelliges Zwischenergebnis herauskommt, wird jede Ziffer des Wertes einzeln an die Liste angehangen.
 ``` swift
[1, 5, 9]
```
 ``` swift
[1, 0, 5]
```
 ``` swift
[6, 0]
```

-> `Gernot` und `Renate` passen zu `60%` zusammen.

:uk: This example shows the calculation of the relationship value for `Gernot` and `Renate`.

0. Both names are sorted alphabetically and written their individual characters in an array of characters. (Special characters will be converted into the letters of the 26-digit basic alphabet).
 ``` swift
[G, E, R, N, O, T, R, E, N, A, T, E]
```

1. After that, the number of occurrence of each character have to be written in a new list. These numbers form the new array.
 ``` swift
[1, 3, 2, 2, 1, 2, 2, 3, 2, 1, 2, 3]
```

2. Thereafter, the first and the last number, the second and the penultimate number, etc. has to be added and appended to a new list. With an odd number of characters, the middle number is listed separately. These numbers form the new array.
 ``` swift
[4, 5, 3, 4, 4, 4]
```

3. The previous step is repeated until a series of numbers remains, which is lined up less than 100.
 ``` swift
[8, 9, 7]
```

4. When a double-digit intermediate result comes out, each digit of the value is individually appended to the list.
 ``` swift
[1, 5, 9]
```
 ``` swift
[1, 0, 5]
```
 ``` swift
[6, 0]
```

-> The relationship value for `Gernot` and `Renate` is `60%`.

## Programmentwicklung
:de: Das Projekt wurde mit Xcode auf einem macOS 10.11 Rechner mit Swift programmiert und kann mit einem entsprechenden Programm modifiziert und verbessert werden.

:uk: The project was written with the Swift programing language in Xcode on macOS 10.11. It could be modified very easily with this program.

## Kompatibilität
:de: Das Programm ist auf iOS 9 für iPhone und iPad vollständig lauffähig. Ältere Betriebssystemversionen werden nicht explizit unterstützt, sind jedoch auch nutzbar. Es wird jedoch empfohlen, stets die neueste Betriebssystemversion zu laden.

:uk: The program runs on iOS 9 for iPhone and iPad. Older OS versions are not explicitly supported. However, it is recommended that you always get the latest OS version.

## Sprachen
:de: Das Programm ist auf Dabendorferisch, Deutsch und Englisch lauffähig. Aufgrund der geringen Menge an sprachlichen Elementen ist eine einfache Implementierung anderer Sprachen möglich und kann durch eine PullRequest eingereicht werden.

:uk: The program runs on Dabendorf-language, German and English. Due to the small amount of linguistic elements a simple implementation of other languages is possible and can be submitted by a PullRequest.

## Lizenz
:de: Die Dabendorf Orthodoxe Religion verbietet es, das Programm und seine Bestandteile zur Monetarisierung in anderen Programmen zu benutzen, um Kapital zu akkumulieren. Die private, unentgeltliche Nutzung zu eigenen Sektenzwecken ist jedoch jederzeit möglich.

:uk: The Dabendorf Orthodox religion forbids it to use the program and its components to monetize in other programs in order to accumulate capital. The private, free use for their own purposes is however possible at any time.

##Status
:de: Die aktuelle Version des Programms ist vollständig lauffähig.

:uk: The current version of the program is fully capable of running.


***

Bussy
Die Dabendorfer Päpste
