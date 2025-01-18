import SwiftUI

struct StatsView: View {
    @State private var flashCount: Int = 0
    @State private var lastDetection: String = "Never"
    @State private var protectionStatus: String = "Active"

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Protection Statistics")
                .font(.headline)

            HStack {
                Text("Flashes Detected:")
                Spacer()
                Text("\(flashCount)")
                    .fontWeight(.bold)
            }

            HStack {
                Text("Last Detection:")
                Spacer()
                Text(lastDetection)
                    .fontWeight(.bold)
            }

            HStack {
                Text("Protection Status:")
                Spacer()
                Text(protectionStatus)
                    .fontWeight(.bold)
            }

            Spacer()
        }
        .padding()
        .onAppear {
            // Load stats from the service or storage
            loadStats()
        }
    }

    private func loadStats() {
        // TODO:
        //Logic to load statistics from the FlashDetectionService or storage
        // This is a placeholder for actual implementation
        //flashCount = 10 // Example value
        //lastDetection = "2023-10-01 12:00:00" // Example value
        //protectionStatus = "Active" // Example value
    }
}