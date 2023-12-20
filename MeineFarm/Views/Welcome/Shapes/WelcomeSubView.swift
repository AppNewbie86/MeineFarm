
import SwiftUI


struct WelcomeSubView: View {
    var body: some View {
        VStack {
            ZStack {
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 330, height: 197)
                    .background(Color.white)
                    .cornerRadius(10)
                    .shadow(color: Color.black.opacity(0.25), radius: 2, x: 0, y: 4)
                
                HStack {
                    VStack(alignment: .leading, spacing: 6) {
                        HStack {
                            Image("Profilbild")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 41, height: 41)
                                .clipShape(Circle())
                                .overlay(
                                    Circle()
                                        .stroke(Color.white, lineWidth: 2)
                                )
                                .offset(x: 10, y: 10) // Positionierung des Kreises im Rechteck
                            
                            Text("John seine Tomaten sind lecker")
                                .font(
                                    Font.custom("Inter", size: 12)
                                        .weight(.bold)
                                )
                                .foregroundColor(Color(red: 0.27, green: 0.27, blue: 0.27))
                            
                            Button(action: {
                                // Aktion beim Klicken auf den Button
                            }) {
                            Text("Kontakt")
                                .font(
                                Font.custom("Helvetica", size: 12)
                                .weight(.bold))
                                .multilineTextAlignment(.center)
                                .foregroundColor(.white)
                                .frame(width: 65, height: 21)
                                .background(Color.blue)
                            }
                            .offset(x: 10) // Anpassung der Position des Buttons "Fremont"
                            
                        }
                        Divider()
                        Group() {
                            Text("Bewertungsstüble")
                                .font(
                                    Font.custom("Inter", size: 13)
                                        .weight(.light)
                                )
                                .foregroundColor(Color(red: 0.27, green: 0.27, blue: 0.27))
                                .frame(width: 306, height: 15, alignment: .center)
                            Text("Hier können Sie gelungene Produkte bewerten")
                                .font(
                                    Font.custom("Inter", size: 13)
                                        .weight(.light)
                                )
                                .foregroundColor(Color(red: 0.27, green: 0.27, blue: 0.27))
                                .frame(width: 306, height: 15, alignment: .center)
                        }
                        HStack {
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 101, height: 55)
                                .background(
                                    Image("gemüse1")
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 101, height: 55)
                                        .clipped()
                                )
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 90, height: 55)
                                .background(
                                    Image("gemüse2")
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 90, height: 55)
                                        .clipped()
                                )
                            
                            Rectangle()
                              .foregroundColor(.clear)
                              .frame(width: 94, height: 55)
                              .background(
                                Image("gemüse3")
                                  .resizable()
                                  .aspectRatio(contentMode: .fill)
                                  .frame(width: 94, height: 55)
                                  .clipped()
                              )
                            
                        }
                        
                        VStack {
                            
                            HStack {
                                
                                ZStack {
                                    
                                    Image("greenlabel")
                                        .frame(width: 20, height: 20)
                                    
                                    Image("heart")
                                        .frame(width: 10.23535, height: 10.87501)
                                }
                                
                                Text("12")
                                  .font(Font.custom("Inter", size: 12))
                                  .foregroundColor(Color(red: 0.77, green: 0.77, blue: 0.77))
                                  .frame(width: 15, height: 13, alignment: .leading)
                                
                                ZStack {
                                    
                                    Image("redlabel")
                                        .frame(width: 27, height: 20)
                                    Image("flag")
                                    .frame(width: 11.07692, height: 12)
                                    
                                    
                                }
                                
                                Text("nachricht")
                                  .font(
                                    Font.custom("Helvetica", size: 12)
                                      .weight(.bold)
                                  )
                                  .multilineTextAlignment(.center)
                                  .foregroundColor(.black)
                                  .frame(width: 81, height: 21, alignment: .center)
                                  .background(Color.blue.opacity(0.6))
                                  .cornerRadius(8)
                                
                                Text("kommentieren")
                                  .font(
                                    Font.custom("Helvetica", size: 12)
                                      .weight(.bold)
                                  )
                                  .multilineTextAlignment(.center)
                                  .foregroundColor(.black)
                                  .frame(width: 91, height: 21, alignment: .center)
                                  .background(Color.green.opacity(0.6))
                                  .cornerRadius(8)


                            }
                        }
                    }
                    .padding(.leading, 15) // Anpassung des inneren Abstands der HStack
                    
                    Spacer() // Fügt Platz zwischen den Inhalten und dem Rand des Rechtecks hinzu
                }
            }
        }
    }
}




#Preview {
    WelcomeSubView()
}
