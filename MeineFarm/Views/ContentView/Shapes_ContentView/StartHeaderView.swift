import SwiftUI

// Definiert eine SwiftUI-Ansicht für den Header
struct HeaderView: View {
    var body: some View {
        VStack {
            Spacer().frame(height: 60) // Abstand von oben hinzufügen
            
            // Überschrift mit dem lokalisierten String "MyFarm"
            Text(NSLocalizedString("Text2", comment: ""))
                .font(.custom("Chalkduster", size: 60))
                .foregroundColor(Color(red: 0.54, green: 0.78, blue: 0.65))
            
            Spacer().frame(height: 50) // Abstand zwischen den Elementen hinzufügen
        }
        .padding(.horizontal) // Horizontalen Abstand hinzufügen
        .frame(width: 400) // Festgelegte Breite der Ansicht
        
        // Hintergrund mit einem Farbverlauf
        .background(
            LinearGradient(
                gradient: Gradient(colors: [Color(red: 0.54, green: 0.78, blue: 0.65), Color(red: 0.15, green: 0.35, blue: 0.43)]),
                startPoint: .top,
                endPoint: .bottom
            )
            .edgesIgnoringSafeArea(.top) // Hintergrund bis zum oberen Rand erweitern
        )
    }
}

// Vorschau für die HeaderView-Ansicht
#if DEBUG
struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
#endif
