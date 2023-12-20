import SwiftUI

// Definiert eine SwiftUI-Ansicht für den StartFooter
struct StartFooterView: View {
    
    // Zustandseigenschaften, um die Anzeige des Sheets zu steuern
    @State private var isLoginViewPresented = false
    @State private var isRegisterViewPresented = false

    var body: some View {
        NavigationView {
            VStack(spacing: 30) {
                Spacer()
                
                // Button für die Registrierung
                Button(action: {
                    isRegisterViewPresented.toggle() // Anzeige des Registrierungsdialogs steuern
                }) {
                    Text(NSLocalizedString("Text3", comment: ""))
                        .font(.system(size: 18, weight: .bold))
                        .foregroundColor(.white)
                        .padding()
                        .background(Color(red: 0.15, green: 0.35, blue: 0.43))
                        .cornerRadius(10)
                }
                .sheet(isPresented: $isRegisterViewPresented, content: {
                    RegisterView() // Zeigt das Registrierungs-View an, wenn isRegisterViewPresented true ist
                })
                
                Spacer()
                
                // Horizontale Trennlinie und Text für bereits vorhandenen Account
                Rectangle()
                    .frame(height: 1)
                    .foregroundColor(Color(red: 0.28, green: 0.28, blue: 0.28))
                
                Text(NSLocalizedString("Text4", comment: ""))

                // Button für den Login
                Button(action: {
                    isLoginViewPresented.toggle() // Anzeige des Login-Dialogs steuern
                }) {
                    Text(NSLocalizedString("Text5", comment: ""))
                        .font(.system(size: 12))
                        .multilineTextAlignment(.center)
                        .foregroundColor(.black)
                }
                .sheet(isPresented: $isLoginViewPresented, content: {
                    LoginView() // Zeigt das Login-View an, wenn isLoginViewPresented true ist
                })
            }
            .padding(.vertical, 20)
            .frame(maxWidth: .infinity)
            .background(Color.white)
        }
    }
}

// Vorschau für die StartFooterView-Ansicht
#if DEBUG
struct StartFooterView_Previews: PreviewProvider {
    static var previews: some View {
        StartFooterView()
    }
}
#endif
