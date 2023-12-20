
import SwiftUI

struct WelcomeBodyShapeView: View {
    var body: some View {
        HStack {
            Spacer()
            Image("calendar") // Hier das Kalenderbild ersetzen
                .resizable()
                .frame(width: 58, height: 58)
                .background(Color.white)
                .overlay(
                    Rectangle()
                        .stroke(Color.black, lineWidth: 0.5)
                )
                .cornerRadius(2.0)
                .padding()
            
            
            Text("Bald ist es wieder soweit !! Und wir öffnen zum Tag der Offenen Türe wo ihr unser Gemeinnutziges Projekt euch in Ruhe anschauen könnt.")
                .font(Font.custom("Helvetica", size: 12).weight(.thin))
                .foregroundColor(Color(red: 0.27, green: 0.27, blue: 0.27))
                .frame(width: 198, height: 73, alignment: .topLeading)
                .padding(.top, 5)
            
            Spacer()
        }
        .background(RoundedRectangle(cornerRadius: 20).foregroundColor(.white))
        .padding()
        
        Divider().frame(width: 337, height: 0)
            .overlay(Rectangle().stroke(Color(red: 0.85, green: 0.85, blue: 0.85), lineWidth: 1))
        
    }
}

#Preview {
    WelcomeBodyShapeView()
}
