class FlashDetectionService {
    // The threshold for brightness detection, expected range is 0.0 to 1.0
    var threshold: Float
    // The number of flashes detected
    var flashCount: Int
    // The date and time of the last detected flash
    var lastDetection: Date?
    init(threshold: Float = 0.25) {
        self.threshold = threshold
        self.flashCount = 0
    // Analyzes a frame to detect flashes based on brightness.
    // The frame parameter is expected to be an array of UInt8 representing pixel data in RGBA format.
    func analyzeFrame(_ frame: [UInt8]) -> Bool {
        let brightness = calculateBrightness(frame)
        if brightness > threshold {
            triggerProtection()
            return true
        }
        return false
    }

    // Calculates the average brightness of the frame.
    // The frame parameter is expected to be an array of UInt8 values in RGBA format.
    private func calculateBrightness(_ frame: [UInt8]) -> Float {
        let pixelCount = frame.count / 4 // RGBA 
        var totalBrightness: Float = 0

        for i in stride(from: 0, to: frame.count, by: 4) {
            totalBrightness += calculatePixelBrightness(r: Float(frame[i]), g: Float(frame[i + 1]), b: Float(frame[i + 2]))
        }

        return totalBrightness / Float(pixelCount)
    }

    // Calculates the brightness of a single pixel.
    private func calculatePixelBrightness(r: Float, g: Float, b: Float) -> Float {
        return (r * 0.2126 + g * 0.7152 + b * 0.0722) / 255.0
    }

    // This function is triggered when a flash is detected.
    // Additional protection measures might include reducing screen brightness,
    // displaying a warning message, or pausing video playback.
    private func triggerProtection() {
        flashCount += 1
        lastDetection = Date()
        // TODO: Add additional protection measures here
    }
}       var totalBrightness: Float = 0
        let pixelCount = frame.count / 4 // Assuming RGBA format

        for i in stride(from: 0, to: frame.count, by: 4) {
            let r = Float(frame[i])
            let g = Float(frame[i + 1])
            let b = Float(frame[i + 2])
            totalBrightness += (r * 0.2126 + g * 0.7152 + b * 0.0722) / 255.0
        }

        return totalBrightness / Float(pixelCount)
    }

        // This function is triggered when a flash is detected.
        // Additional protection measures might include reducing screen brightness,
        // displaying a warning message, or pausing video playback.
        private func triggerProtection() {
            flashCount += 1
            lastDetection = Date()
            // TODO: Add additional protection measures here
        }
    }
}