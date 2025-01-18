import SwiftUI

struct ContentView: View {
    @State private var sensitivity: Double = 3.0
    @State private var highContrast: Bool = false

    var body: some View {
        NavigationView {
            VStack {
                SettingsView(sensitivity: $sensitivity, highContrast: $highContrast)
                StatsView()
            }
            .navigationTitle("Flash Protection")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}