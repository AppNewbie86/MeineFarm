import SwiftUI

struct WelcomeView: View {
    // State properties für die Ansicht
    @State private var searchText: String = "" // Für das Suchfeld
    @StateObject private var networkMonitor = NetworkMonitor()
    
    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(
                    colors: [
                        Color(red: 0.65, green: 0.88, blue: 0.76),
                        Color(red: 0.33, green: 0.58, blue: 0.63)
                    ]
                ),
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()
            ScrollView {
                VStack(spacing: 10) {
                    Text(networkMonitor.isOnline ? "Online" : "Offline")
                        .font(.caption2) // Use a smaller font size
                        .foregroundColor(.white) // Set the text color to white
                        .padding(.vertical, 5) // Add some padding for readability
                        .frame(width: 80) // Set the width to 80 pixels
                    //.offset(y: 25) // Position the text slightly below the top edge
                    
                    WelcomeHeaderSubView()
                    WelcomeHeaderShapeView()
                    WelcomeBodyShapeView()
                    WelcomeBodyShape2View()
                    WelcomeSubView()
                        .padding()
                    WelcomeBodyShape3View()
                    
                }
                .padding(20)
            }
        }
    }
}
struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
