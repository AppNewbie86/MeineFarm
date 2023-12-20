

import SwiftUI

struct WelcomeBodyShape2View: View {
    @State private var isDropdownExpanded: Bool = false // Für die Dropdown-Liste
    @State private var selectedOption: String = "Filter" // Für die ausgewählte Option im Dropdown
    @State private var message: String = "" // Für die Benutzereingabe der Nachricht

    var body: some View {
        VStack(spacing: 8) {
            HStack {
                Text("farm neuigkeiten")
                    .font(.custom("Chalkduster", size: 20))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Button(action: {
                    isDropdownExpanded.toggle()
                }, label: {
                    Text(selectedOption)
                        .foregroundColor(.white)
                        .padding(8)
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(Color(red: 0.15, green: 0.35, blue: 0.43))
                                .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 4)
                        )
                })
            }
            .padding()

            
            ZStack(alignment: .bottomTrailing) {
                RoundedRectangle(cornerRadius: 20)
                    .foregroundColor(Color(red: 0.94, green: 0.94, blue: 0.94).opacity(0.38))
                    .frame(width: 340, height: 100)
                
                
                
                TextField("Tippe deine Nachricht", text: $message)
                    .padding()
                    .foregroundColor(.black)
                    .font(Font.custom("Helvetica", size: 14))
                    .frame(width: 280, height: 40)
                    .padding()
                    .padding(.vertical)
                
                Button(action: {
                    // Hier sollte die Logik für das Senden der Nachricht implementiert werden
                }, label: {
                    Text("Senden")
                        .foregroundColor(.white)
                        .padding(5)
                        .background(
                            RoundedRectangle(cornerRadius: 2)
                                .foregroundColor(Color(red: 0.15, green: 0.35, blue: 0.43))
                                .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 4)
                        )
                })
            }
        }
    }
}

#Preview {
    WelcomeBodyShape2View()
}
