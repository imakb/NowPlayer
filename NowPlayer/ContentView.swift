import SwiftUI

struct ContentView: View {
    @State private var nowPlayingInfo = "No audio playing"
    @State private var windowOnTop = false

    var body: some View {
        VStack {
            Text("Now Playing")
                .font(.title)

            Image(systemName: "music.note") // Placeholder icon
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50.0)
                .padding()

            Text(nowPlayingInfo)
                .font(.subheadline)
                .padding()

            Button("Keep on Top") {
                if let window = NSApp.windows.first {
                    if windowOnTop {
                        window.level = .normal
                    } else {
                        window.level = .floating
                    }
                    windowOnTop.toggle()
                }
            }
            .padding()

            Button("Play/Pause") {
                // Add code here to toggle between play and pause
                // For example, you can use AppleScript to control playback in some media players
            }
            .padding()

            HStack {
                Button("Rewind") {
                    // Add code here to rewind the current track
                }
                .padding()

                Button("Next Track") {
                    // Add code here to play the next track
                }
                .padding()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

