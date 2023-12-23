//
//  Validator.swift
//  MeineFarm
//
//  Created by Marcel Zimmermann on 20.12.23.
//

import Foundation

// Here Proof the Email und PasswordTextField of Validate Format for email and Password

enum Validator {
    static func validateEmail(_ email: String) -> Bool {
        let emailRegex = #"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$"#
        
        let emailPredicate = NSPredicate(format: "SELF MATCHES %@", emailRegex)
        return emailPredicate.evaluate(with: email)
    }
    
    static func validatePassword(_ password: String) -> Bool {
        // Hier sollte der reguläre Ausdruck für das Passwort stehen
        let passwordRegex = "dein_password_regex_hier"
        
        let passwordPredicate = NSPredicate(format: "SELF MATCHES %@", passwordRegex)
        return passwordPredicate.evaluate(with: password)
    }
    
    static func validateName(_ name: String) -> Bool {
        // Hier sollte die Validierung für den Namen stehen
        // Zum Beispiel: Der Name darf nicht leer sein
        return !name.isEmpty
    }
}
