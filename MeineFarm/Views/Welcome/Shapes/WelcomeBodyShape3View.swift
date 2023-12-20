
import SwiftUI

struct WelcomeBodyShape3View: View {
    @State private var isSheetPresented = false
    @State private var activeTab: Int = 0
    
    var body: some View {
        VStack(spacing: 8) {
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 330, height: 64)
                .foregroundColor(.white)
                .overlay(
                    HStack(spacing: 0) {
                        ForEach(0..<5) { index in
                            Button(action: {
                                activeTab = index
                                isSheetPresented.toggle()
                                // Füge hier deine Logik für die verschiedenen Tabs ein
                            }) {
                                VStack {
                                    getImageForIndex(index)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 24, height: 24)
                                    Text("Tab \(index + 1)")
                                        .foregroundColor(activeTab == index ? .green : .gray)
                                        .font(.system(size: 14, weight: .semibold))
                                }
                                .frame(maxWidth: .infinity)
                                .padding(8)
                                .background(Color.white)
                            }
                        }
                    }
                )
                .cornerRadius(20)
                .sheet(isPresented: $isSheetPresented, content: {
                    switch activeTab {
                    case 0:
                        // Beispielinhalt für den ersten Tab
                        Text("Hier suchen Sie sich ihre Farm heraus")
                    case 1:
                        // Beispielinhalt für den zweiten Tab
                        Text("Suchen Sie hier ihre Pflanzen heraus")
                    case 2:
                        // Beispielinhalt für den dritten Tab
                        Text("Freundeskreis")
                    case 3:
                        // Beispielinhalt für den vierten Tab
                        Text("Inhalt für den vierten Tab")
                    case 4:
                        // Beispielinhalt für den fünften Tab
                        Text("Inhalt für den fünften Tab")
                    default:
                        Text("Kein Tab ausgewählt")
                    }
                })
        }
    }
    
    func getImageForIndex(_ index: Int) -> Image {
        switch index {
        case 0:
            return Image(systemName: "house.fill")
        case 1:
            return Image(systemName: "heart.fill")
        case 2:
            return Image(systemName: "person.fill")
        case 3:
            return Image(systemName: "message.fill")
        case 4:
            return Image(systemName: "star.fill")
        default:
            return Image(systemName: "questionmark.circle.fill")
        }
    }
}

#Preview {
    WelcomeBodyShape3View()
}
