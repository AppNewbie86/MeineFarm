

import SwiftUI


struct WelcomeHeaderShapeView: View {
    var body: some View {
        HStack {
            
            Text("Farmertreffen")
                .font(.custom("Chalkduster", size: 20))
                .foregroundColor(.white)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)

                .frame(maxWidth: .infinity, alignment: .leading)
            
            Spacer() // Hinzugefügt, um zwischen Text und Bild Abstand zu schaffen
            
            Image("wlan_icon")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 24, height: 24) // Größe anpassen, falls erforderlich
                .foregroundColor(.white)
        }
        .padding()
    }
}


#Preview {
    WelcomeHeaderShapeView()
}
