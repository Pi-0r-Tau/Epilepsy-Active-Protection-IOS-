# Epilepsy-Active-Protection-IOS
IOS version of Epilepsy Active Protection Extension for web
# Epilepsy Flash Protection App

A Swift application designed to protect users from harmful flashing content in videos by analyzing video frames and applying dynamic brightness control.

This is a work in progress, and will be updated less commonly that the extension.

## Key Features

- **Real-time Flash Detection**: Analyzes video frames to detect flashes and applies protective measures instantly.
- **User Adjustable Settings**: Users can customize sensitivity levels and enable high contrast mode for better visibility.
- **Statistics Tracking**: Displays statistics related to flash detections and the current protection status.

## Project Structure

```
EpilepsyFlashProtectionApp
├── EpilepsyFlashProtectionApp
│   ├── AppDelegate.swift         # Application lifecycle management
│   ├── ContentView.swift          # Main content view
│   ├── Models
│   │   └── ProtectionSettings.swift # Configuration settings for protection
│   ├── Services
│   │   └── FlashDetectionService.swift # Analyzes video frames for flashes
│   ├── Views
│   │   ├── SettingsView.swift     # User interface for settings
│   │   └── StatsView.swift        # Displays statistics
│   └── Resources
│       ├── Assets.xcassets        # Image assets
│       └── LaunchScreen.storyboard # Launch screen interface
├── EpilepsyFlashProtectionApp.xcodeproj # Xcode project file
├── Info.plist                     # Application configuration
└── README.md                      # Project documentation
```

## Installation

1. Clone the repository.
2. Open the `EpilepsyFlashProtectionApp.xcodeproj` file in Xcode.
3. Build and run the application on a simulator or a physical device.

## Usage

- The application automatically protects videos by detecting flashes.
- Users can adjust sensitivity levels and toggle high contrast mode through the settings interface.
- Statistics related to flash detections are displayed in the stats view.

## Contributing

Contributions are welcome! Please open an issue or submit a pull request for any enhancements or bug fixes.

## License

This project is licensed under the MIT License. See the LICENSE file for details.