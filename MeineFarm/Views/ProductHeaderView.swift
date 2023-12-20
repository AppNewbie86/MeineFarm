

import SwiftUI

struct ProductHeaderView: View {
    var body: some View {
        HStack {
            // Add the X button
            Image("X button")
                .frame(width: 30.15385, height: 28)
                .padding(.top, 50)
                .position(x: 30, y: 40)
            
            
            // Add the Group 83 image and the rectangle
            Image("Group 83")
                .padding()
                .position(x: 30, y: 65)

            
            Spacer(minLength: 50)
             
            
            
        }
    }
}

#Preview {
    ProductHeaderView()
}
