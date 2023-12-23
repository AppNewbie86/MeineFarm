
import SwiftUI

struct AppSettingView: View {

    @State private var isPresented = false

    @State private var isLightMode = true
    @State private var isNotificationOn = true
    @State private var isSoundOn = true
    @State private var isAutoplayOn = true
    @State private var isVibrationOn = true

    var body: some View {
        NavigationView {
            VStack {
                Form {
                    Section(header: Text("Allgemein")) {
                        Toggle(isOn: $isLightMode, label: {
                            Text("Helles Design")
                        })
                        Toggle(isOn: $isNotificationOn, label: {
                            Text("Benachrichtigungen")
                        })
                        Toggle(isOn: $isSoundOn, label: {
                            Text("Sound")
                        })
                    }
                    Section(header: Text("Erweitert")) {
                        Toggle(isOn: $isAutoplayOn, label: {
                            Text("Autoplay")
                        })
                        Toggle(isOn: $isVibrationOn, label: {
                            Text("Vibration")
                        })
                    }
                }
                .foregroundColor(.black)
                .padding()
            }
            .navigationBarTitle("Einstellungen")
            .navigationBarItems(trailing: Button(action: {
                self.isPresented = false
            }, label: {
                Text("Schließen")
            }))
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(
                LinearGradient(
                    gradient: Gradient(colors: [Color.green.opacity(0.8), Color.green.opacity(0.6)]),
                    startPoint: .top,
                    endPoint: .bottom
                )
                .edgesIgnoringSafeArea(.all)
            )
        }
        .onAppear {
            // Hier kannst du logik einfügen, wenn die Ansicht erscheint
        }
    }
}

#Preview {
    AppSettingView()
}
