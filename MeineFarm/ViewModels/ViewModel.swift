import Foundation

@MainActor
// ViewModel-Klasse zur Verwaltung von Daten und Logik für die Ansicht
class ViewModel: ObservableObject {
    
    // Private Instanz der Service-Klasse für die Datenverarbeitung
    private let service: AppService
    
    // Veröffentlichte Eigenschaften für die Ansicht
    @Published var showAlert = false // Zeigt an, ob ein Alert angezeigt werden soll
    @Published var alertMesage = "" // Nachricht für den Alert
    @Published var hasError = false // Gibt an, ob ein Fehler aufgetreten ist
    @Published var isLoading = false // Gibt an, ob die App lädt
    @Published var isLoggedIn = false // Gibt an, ob der Benutzer angemeldet ist

    // Initialisierung mit einem Dienst-Objekt
    init(service: AppService) {
        self.service = service
    }
    
    // Funktion zum Erstellen eines Benutzerkontos
    func createUser(email: String, password: String) async throws {
        isLoading = true // Setzt isLoading auf true, während der Erstellungsvorgang läuft
        let status = try await service.createUser(email: email, password: password) // Ruft die Funktion zum Erstellen eines Benutzerkontos im Service auf und wartet auf das Ergebnis
        
        // Verarbeitung des Status des Benutzererstellungsversuchs
        switch status {
        case .success:
            isLoading = false // Ladevorgang beenden
            alertMesage = "Ihr Konto wurde erfolgreich erstellt" // Erfolgsmeldung setzen
            showAlert.toggle() // Alert anzeigen
            
        case .error(let message):
            isLoading = false // Ladevorgang beenden
            hasError = true // Fehlerflag setzen
            alertMesage = message // Fehlermeldung setzen
            showAlert.toggle() // Alert anzeigen
        }
    }
    
    // Funktion für den Login
    func login(email: String, password: String) async throws {
        isLoading = true // Setzt isLoading auf true, während der Erstellungsvorgang läuft
        let status = try await service.login(email: email, password: password) // Ruft die Funktion zum Erstellen eines Benutzerkontos im Service auf und wartet auf das Ergebnis
        
        // Verarbeitung des Status des Benutzererstellungsversuchs
        switch status {
        case .success:
            isLoading = false // Ladevorgang beenden
            isLoggedIn = true
        case .error(let message):
            isLoading = false // Ladevorgang beenden
            hasError = true // Fehlerflag setzen
            alertMesage = message // Fehlermeldung setzen
            showAlert.toggle() // Alert anzeigen
        }
    }
    
   /*
    func logout() async throws {
        isLoading = true // Setzt isLoading auf true, während der Erstellungsvorgang läuft
        let status = try await service.logout()

        // Verarbeitung des Status des Benutzererstellungsversuchs
        switch status {
        case .success:
            isLoading = false // Ladevorgang beenden
            isLoggedIn = false
        case .error(let message):
            isLoading = false // Ladevorgang beenden
            hasError = true // Fehlerflag setzen
            alertMesage = message // Fehlermeldung setzen
            showAlert.toggle() // Alert anzeigen
        }
    }
    */
    
    
}
