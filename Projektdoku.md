#Projektdokumentation: Lokalisierung und Benutzeranmeldung

##Übersicht

-   Das Projekt besteht aus zwei Hauptansichten: dem Splashscreen und der Anmeldeseite.

Splashscreen mit Sprachanpassung

Die SplashView wird beim App-Start angezeigt. Sie zeigt ein Bild und den App-Namen an, der lokalisiert ist und je nach Systemsprache des Benutzers angepasst wird. Das Splashscreen-Design ist einfach und ermöglicht einen reibungslosen Übergang zur Anmeldeseite.

###Implementierung

Die Lokalisierung wird durch die Verwendung von NSLocalizedString erreicht. Lokalisierungsschlüssel wie "MyFarm" werden in den Lokalisierungsdateien (Localizable.strings) für verschiedene Sprachen definiert, einschließlich:

- Deutsch
- Türkisch
- Französisch
- Englisch

Die Schlüssel werden entsprechend mit den lokalisierten Texten für die Sprachen angepasst.

Die SplashView verwendet die Funktion NSLocalizedString(), um den lokalisierten App-Namen anzuzeigen.

Anmeldeseite mit Login- oder Registrierungsoptionen

Die LoginSignupView wird nach dem Splashscreen angezeigt und bietet dem Benutzer die Wahl zwischen Login und Registrierung. Diese View präsentiert klare Optionen für den Benutzer und ermöglicht einen reibungslosen Einstieg in die App.

Implementierung

Die LoginSignupView verwendet die Funktion @State zum Speichern des aktuellen Ansichtszustands. Der aktuelle Ansichtszustand wird verwendet, um die angezeigten Optionen zu steuern.

Die View verwendet Schaltflächen und Formularelemente, um Benutzerdaten für den Login oder die Registrierung zu sammeln.

Benutzerinteraktion

Die Benutzerinteraktion wird durch die Verwendung von Schaltflächen und Formularelementen gesteuert. Die Schaltflächen werden verwendet, um zwischen den Ansichten zu wechseln. Die Formularelemente werden verwendet, um Benutzerdaten für den Login oder die Registrierung zu sammeln.

ProductView

Die View ist einfach und übersichtlich aufgebaut. Sie verwendet Objekte und Schaltflächen, die dem Benutzer klar bestimmte Aktionen anzeigen. Durch das Betätigen des X-Buttons soll man zur letzten View navigieren können.

Implementierung eines Netzwerkmonitors

Dadurch wird dem Benutzer signalisiert, dass er mit seiner App und dem Content für die App online ist.

Ich habe eine ObservableObject-Klasse erstellt mit dem Namen NetworkMonitor und der Klasse habe ich global eine Funktion hinzugefügt, die den OnlineState überwacht.

AppService (ähnlich wie Firebase)

Diese Klasse stellt Funktionen bereit, die für die Benutzeranmeldung und -registrierung in der App benötigt werden.

Funktionen

createUser(): Erstellt einen neuen Benutzer mit einer E-Mail-Adresse und einem Passwort.
login(): Erstellt eine Sitzung für einen bestehenden Benutzer mit einer E-Mail-Adresse und einem Passwort.
logout(): Loggt den aktuellen Benutzer aus.
Implementierung

Die createUser()-Funktion erstellt einen neuen Benutzer mit einer eindeutigen Benutzer-ID. Die login()-Funktion erstellt eine Sitzung für einen bestehenden Benutzer mit der angegebenen E-Mail-Adresse und dem Passwort. Die logout()-Funktion löscht alle Sitzungen des aktuellen Benutzers.

Fehlerbehandlung

Alle Funktionen können Fehler werfen. Bei einem Fehler wird ein RequestStatus-Objekt zurückgegeben, das den Fehlertyp und die Fehlermeldung enthält.

Beispiel

// Erstellt einen neuen Benutzer
let result = try await AppService().createUser(email: "user@example.com", password: "password")

// Überprüft das Ergebnis
if result == .success {
    // Benutzer wurde erfolgreich erstellt
} else {
    // Fehler beim Erstellen des Benutzers
}
