import Appwrite // Import vom Package

// Definiert verschiedene Statusmeldungen, die bei Anfragen auftreten können
// 'success' repräsentiert einen erfolgreichen Status, 'error' wird verwendet, wenn ein Fehler auftritt
enum RequestStatus {
    case success
    case error(_message: String)
}

// Definiere einen benutzerdefinierten Fehlertyp für den Logout
enum LogoutError: Error {
    case logoutFailed(description: String)
}

class AppService {
    
    // Erstellt einen Appwrite-Client und konfiguriert ihn mit bestimmten Einstellungen
    let client = Client()
        .setEndpoint("https://cloud.appwrite.io/v1")
        .setProject("65735701d14f180cfeca")
        .setSelfSigned(true)
    
    let account: Account
    
    // Initialisiert die AppService-Klasse und erstellt ein Account-Objekt mit dem übergebenen Client
    init() {
        account = Account(client)
    }
    
    // Funktion zum Erstellen eines Benutzers
    // Die Funktion erstellt einen Benutzer mit einer E-Mail-Adresse und einem Passwort
    // Die Funktion wird asynchron ausgeführt und kann Fehler werfen
    func createUser(email: String, password: String) async throws -> RequestStatus {
        do {
            // Versucht, einen Benutzer zu erstellen, und verwendet eine eindeutige Benutzer-ID
            _ = try await account.create(userId: ID.unique(), email: email, password: password)
            return .success // Gibt 'success' zurück, wenn die Erstellung erfolgreich war
        } catch {
            // Gibt 'error' zurück und liefert die Fehlermeldung, falls ein Fehler auftritt
            return .error(_message: error.localizedDescription)
        }
    }
    
    // Funktion zum Einloggen eines Benutzers
    // Die Funktion erstellt eine Sitzung mit der angegebenen E-Mail-Adresse und dem Passwort
    // Die Funktion wird asynchron ausgeführt und kann Fehler werfen
    func login(email: String, password: String) async throws -> RequestStatus {
        do {
            // Versucht, eine E-Mail-Sitzung zu erstellen
            _ = try await account.createEmailSession(email: email, password: password)
            return .success // Gibt 'success' zurück, wenn der Login erfolgreich war
        } catch {
            // Gibt 'error' zurück und liefert die Fehlermeldung, falls ein Fehler auftritt
            return .error(_message: error.localizedDescription)
        }
    }
    
    // Funktion zum Ausloggen eines Benutzers
    // Die Funktion wird asynchron ausgeführt und hat ein dementsprechendes Fehlerhandling
    func logout() async throws {
        do {
            // Löscht alle Sitzungen des aktuellen Benutzers und speichert das Ergebnis
            let deletedSessions = try await account.deleteSessions()
            
            // Verwende 'deletedSessions', wenn nötig
            print("Gelöschte Sitzungen: \(deletedSessions)") // Beispiel für die Verwendung des Ergebnisses
            
            print("Logout erfolgreich") // Optional: Ausgabe, wenn der Logout erfolgreich war
        } catch {
            // Behandlung des Fehlers beim Ausloggen
            throw LogoutError.logoutFailed(description: error.localizedDescription)
        }
    }



}
