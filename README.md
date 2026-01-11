# Measures Converter (Flutter)

A Flutter-based unit conversion application supporting length conversions.
Built with a clean, scalable architecture and ready for future extensions
such as temperature and currency conversion.

## Features
- Length conversion (meters, feet, km, miles)
- Web and Android compatible

## Tech Stack
- Flutter (stable)
- Dart
- Material Design

## Future Enhancements
- Weight & temperature conversion
- Currency conversion (API-based)
- State management (Riverpod)

## How to Run

### Prerequisites
- Flutter SDK installed and configured
- For Android: Android Studio with emulator or physical device
- For Web: Chrome, Edge, or other modern browser

### Setup
```bash
flutter pub get
```

### Running on Web
```bash
# Run on default web browser
flutter run -d chrome

# Or run on Edge
flutter run -d edge

# Or simply run and select web option
flutter run
```

### Running on Android

#### Option 1: Using Android Emulator
```bash
# Check available emulators
flutter emulators

# Launch an emulator (replace Pixel_6a with your emulator name)
flutter emulators --launch Pixel_6a

# Run the app on emulator
flutter run -d emulator-5554
```

#### Option 2: Using Physical Android Device
```bash
# Enable USB Debugging on your Android device
# Connect device via USB

# Check if device is detected
flutter devices

# Run on connected device (replace with actual device ID)
flutter run -d <your-device-id>
```

#### Option 3: Auto-select Device
```bash
# Let Flutter show available options and choose
flutter run
```

### Development Commands
- `r` - Hot reload (apply changes instantly)
- `R` - Hot restart (restart the app)
- `q` - Quit the development session
## Test Screenshots
- Running on Web (Edge Browser)
![running_on_web_edge_browser](/screenshots/running_on_web.png)

- Running on Pixel 6a Emulator
![running_on_android](/screenshots/running_on_android_pixel_6a.png)
![running_on_android](/screenshots/running_on_andriod.png)
![running_on_android](/screenshots/android_screenshot.png)

