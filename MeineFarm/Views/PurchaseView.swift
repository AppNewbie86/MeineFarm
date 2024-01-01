import SwiftUI


struct PurchaseView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Group {
                HStack(alignment: .top, spacing: 8) {
                    
                    
                    Image("order")
                        .frame(width: 13, height: 18)
                        .padding()

                    
                    Text("Food Crazy Pizza Store\nx 2     Big Pizza Menu\nx 3 Fresh Banan Milkshake")
                        .font(
                            Font.custom("Helvetica", size: 12)
                                .weight(.light)
                        )
                        .kerning(0.35294)
                        .foregroundColor(Color(red: 0.06, green: 0.06, blue: 0.06))
                        .padding()

                }
                .background(Color.brown.opacity(0.6))

                
                HStack(alignment: .top, spacing: 8) {
                    Image("location")
                        .frame(width: 13, height: 18)
                        .padding()

                    
                    Text("Geislingen a. d. Steige Garten \n Ausfahrt Oberböhringen Friedhof")
                        .font(
                            Font.custom("Helvetica", size: 12)
                                .weight(.light)
                        )
                        .kerning(0.35294)
                        .foregroundColor(Color(red: 0.26, green: 0.26, blue: 0.26))
                        .padding()

                }
                .background(Color.brown.opacity(0.6))

                
                HStack(alignment: .top, spacing: 8) {
                    Image("clock")
                        .frame(width: 13, height: 18)
                        .padding()
                    
                    Text("Werktags tgl. von 8.00 - 17.00 Uhr \n erreichbar")
                        .font(
                            Font.custom("Helvetica", size: 12)
                                .weight(.light)
                        )
                        .kerning(0.35294)
                        .foregroundColor(Color(red: 0.26, green: 0.26, blue: 0.26))
                        .padding()

                }
                .background(Color.brown.opacity(0.6))

                
                PurchaseBodyView()
                
                
            }
            .frame(maxWidth: .infinity, alignment: .leading)
        }
        .frame(width: 375, height: 792)
        .background(Color.white)
    }
}

#Preview {
    PurchaseView()
}
struct PurchaseBodyView: View {
    let cardWidth: CGFloat = 100.0
    let spacing: CGFloat = 10.0
    
    var body: some View {
       
            ScrollView(.horizontal, showsIndicators: false) {
                HStack() {
                    ForEach(0..<7) { index in
                        if index == 0 {
                            Image("splashimg")
                                .resizable()
                                .frame(width: cardWidth, height: cardWidth)
                                .clipShape(Circle())
                                .onTapGesture {
                                    // Aktion für das angeklickte Bild
                                }
                                .padding(.leading, index == 0 ? 0 : spacing) // Füge nur für die zweite Karte nach links padding hinzu
                        } else {
                            Rectangle()
                                .frame(width: cardWidth, height: cardWidth)
                                .background(Color(red: 0.15, green: 0.35, blue: 0.43))
                                .onTapGesture {
                                    // Aktion für die angeklickte Karte
                                }
                                .padding(.leading, index == 0 ? 0 : spacing) // Füge für die Karten nach links padding hinzu
                                .cornerRadius(10)
                        }
                    }
                }
            }
            .frame(height: cardWidth + 20)
            .background(
                LinearGradient(
                    gradient: Gradient(colors: [
                        Color(red: 0.13, green: 0.47, blue: 0.75),
                        Color(red: 0.22, green: 0.44, blue: 0.48)
                    ]),
                    startPoint: .top,
                    endPoint: .bottom
                )
            )
            .ignoresSafeArea()        }
    }

