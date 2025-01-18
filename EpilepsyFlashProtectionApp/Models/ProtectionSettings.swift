struct ProtectionSettings {
    var threshold: Float
    var highContrast: Bool
    var lastSensitivity: Int
    var flashCount: Int
    var lastDetection: Date?

    static let defaultSettings = ProtectionSettings(
        threshold: 0.25,
        highContrast: false,
        lastSensitivity: 3,
        flashCount: 0,
        lastDetection: nil
    )
}