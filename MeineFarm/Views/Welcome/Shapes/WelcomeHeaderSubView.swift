//
//  WelcomeHeaderSubView.swift
//  MeineFarm
//
//  Created by Marcel Zimmermann on 14.12.23.
//

import SwiftUI


struct WelcomeHeaderSubView: View {
    @State private var searchText: String = "" // Für das Suchfeld
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Zuhause")
                .font(.custom("Chalkduster", size: 32))
                .foregroundColor(.green)
            
            TextField("Suchen", text: $searchText)
                .padding()
                .background(Color(red: 0.94, green: 0.94, blue: 0.94).opacity(0.38))
                .cornerRadius(20)
                .foregroundColor(.black) // Hier habe ich die Farbe geändert, damit der Text sichtbarer ist
                .font(.custom("Helvetica", size: 14))
                .padding([.bottom])
        }
        .padding(.horizontal)
    }
}

#Preview {
    WelcomeHeaderSubView()
}
