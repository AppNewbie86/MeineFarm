import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = AppLoadingViewModel()
    
    var body: some View {
        ZStack {
            if viewModel.isActive {
                VStack {
                    HeaderView()
                        .padding(30)
                    StartBodyView()
                    StartFooterView()
                }
                .padding(.horizontal) // Add padding for a better layout
            } else {
                SplashView()
                    .onAppear {
                        viewModel.simulateAppLoading()
                    }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity) // Utilize maximum available space
        .background(Color.white)
        .edgesIgnoringSafeArea(.all) // Extend views to edges
    }
}


#Preview {
    ContentView()
}

