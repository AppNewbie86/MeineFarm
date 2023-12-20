import SwiftUI

// Definiert eine SwiftUI-Ansicht für den Login-Bildschirm
struct LoginView: View {
    
    // Zustandsvariablen für die Eingabefelder
    @State private var name: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var confirmPassword: String = ""

    var body: some View {
        VStack {
            // Titel "myFaRM"
            Text("myFaRM")
                .font(.custom("Chalkduster", size: 60))
                .foregroundColor(.green)
                .multilineTextAlignment(.center)
            
            // Hintergrundform und Layout für den Login-Bereich
            ZStack {
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 345, height: 521)
                    .background(
                        LinearGradient(
                            stops: [
                                Gradient.Stop(color: Color(red: 0.54, green: 0.78, blue: 0.65), location: 0.00),
                                Gradient.Stop(color: Color(red: 0.15, green: 0.35, blue: 0.43), location: 1.00),
                            ],
                            startPoint: UnitPoint(x: 0.5, y: 0),
                            endPoint: UnitPoint(x: 0.5, y: 1.2)
                        )
                    )
                    .cornerRadius(50)
                    .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 4)
                
                VStack(spacing: 20) {
                    
                    // Überschrift "LOGIN"
                    Text(NSLocalizedString("Text6", comment: ""))
                        .font(.custom("Chalkduster", size: 32))
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.white)
                        .frame(width: 233, height: 37)
                        .padding()
                    
                    // Textfelder für Name, E-Mail und Passwort
                    TextField("Name", text: $name)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .frame(width: 310.03714, height: 42)
                    
                    TextField("Email", text: $email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .frame(width: 310.03714, height: 42)
                    
                    TextField("Password", text: $password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .frame(width: 310.03714, height: 42)
                }
                .offset(y: 25)
            }
            Spacer()
            // Button für den Login
            Button(action: {
                // Aktion für den Button
            }) {
                Text(NSLocalizedString("Text6", comment: ""))
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 200, height: 50)
                    .background(Color(red: 0.15, green: 0.35, blue: 0.43))
                    .cornerRadius(10)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.white)
        .edgesIgnoringSafeArea(.all)
        .padding(.bottom, 20)
    }
}

// Vorschau der LoginView-Ansicht
#if DEBUG
struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
#endif
