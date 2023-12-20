import SwiftUI
import AVFoundation

// Definiert eine SwiftUI-Ansicht für den Splash-Screen
struct SplashView: View {

  // Audioplayer
  @State private var audioPlayer: AVAudioPlayer?

  var body: some View {

    // **1. Bild und Titel des Splash-Screens**

    VStack {
      Group {
        Spacer() // Leerer Raum am oberen Rand des Bildschirms

        Image("splashimg") // Bild aus der Assets-Bibliothek
          .resizable()
          .aspectRatio(contentMode: .fill)
          .frame(width: 226, height: 199)
          .clipped() // Bild so zuschneiden, dass es ins Frame passt

        Text(NSLocalizedString("MyFarm", comment: "")) // Lokalisierter Titel "MyFarm"
          .font(.custom("Chalkduster", size: 60))
          .foregroundColor(.green)
          .multilineTextAlignment(.center)

        Spacer() // Leerer Raum am unteren Rand des Bildschirms
      }
    }

    // **2. Ton abspielen**

    .onAppear {
      // Audioplayer initialisieren und Ton abspielen
      let soundURL = Bundle.main.url(forResource: "owl_sound", withExtension: "mp3")!
      let audioPlayer = try! AVAudioPlayer(contentsOf: soundURL)
      self.audioPlayer = audioPlayer
      audioPlayer.play()
    }

    // **3. Ton stoppen**

    .onDisappear {
      // Ton stoppen, wenn die Ansicht verschwindet
      audioPlayer?.stop()
    }
  }
}

// Vorschau für die SplashView-Ansicht
#if DEBUG
struct SplashView_Previews: PreviewProvider {
  static var previews: some View {
    SplashView()
  }
}
#endif
