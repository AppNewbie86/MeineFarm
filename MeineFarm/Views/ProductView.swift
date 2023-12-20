//
//  ProductView.swift
//  MeineFarm
//
//  Created by Marcel Zimmermann on 20.12.23.
//

import SwiftUI

struct ProductView: View {
  var body: some View {
    ZStack {
        
        // Green BG
      Image("Rectangle 75")
        .frame(width: 375, height: 812)
        .background(
          LinearGradient(
            stops: [
              Gradient.Stop(color: Color(red: 0.53, green: 0.77, blue: 0.65).opacity(0.8), location: 0.00),
              Gradient.Stop(color: Color(red: 0.22, green: 0.44, blue: 0.48).opacity(0.8), location: 1.00),
            ],
            startPoint: UnitPoint(x: 0.5, y: 0),
            endPoint: UnitPoint(x: 0.5, y: 1)
          )
        )
        VStack {

        // Header Button + textinfofield

    ProductHeaderView()
        
        
       
        Image("Rectangle 1")
          .frame(width: 333, height: 605)
          .background(.white)
          .overlay(
            Rectangle()
            .stroke(Color(red: 0.66, green: 0.78, blue: 0.4), lineWidth: 7)
          )
          .cornerRadius(30.0, antialiased: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
            /* TabBar */
            WelcomeBodyShape3View()
                .frame(width: 330, height: 64)
                .padding()
        }
    }
    .frame(width: 375, height: 812)
    .background(.white)
  }
}


struct ProductView_Previews: PreviewProvider {
    static var previews: some View {
        ProductView()
    }
}
