import SwiftUI

struct SettingsView: View {
    @State private var sensitivity: Double = 3.0
    @State private var highContrast: Bool = false

    var body: some View {
        VStack {
            Text("Flash Protection Settings")
                .font(.largeTitle)
                .padding()

            VStack(spacing: 20) {
                // Sensitivity Level Slider
                VStack {
                    Text("Sensitivity Level: \(Int(sensitivity))")
                    Slider(value: $sensitivity, in: 1...5, step: 1)
                        .accessibilityLabel("Adjust sensitivity level")
                }

                // High Contrast Mode Toggle
                Toggle(isOn: $highContrast) {
                    Text("High Contrast Mode")
                }
                .accessibilityLabel("Toggle high contrast mode")
            }
            .padding()

            // Save Button
            Button(action: {
                saveSettings()
            }) {
                Text("Save Settings")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
            .padding()
        }
        .padding()
    }

    /// Saves the current settings for sensitivity and high contrast mode.
    ///
    /// This method saves the sensitivity level and high contrast mode settings
    /// to UserDefaults, allowing the app to persist these preferences across
    /// launches.
    private func saveSettings() {
        UserDefaults.standard.set(sensitivity, forKey: "sensitivity")
        UserDefaults.standard.set(highContrast, forKey: "highContrast")
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}