
import SwiftUI

struct StartBodyView: View {
    @State private var isAnimated = false // State for animation
    
    var body: some View {
        Image("splashimg")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 300, height: 200)
            .cornerRadius(20)
            .padding(.vertical, 20)
            .cornerRadius(40)
            
            
    }
}



#Preview {
    StartBodyView()
}
