# 📏 Sdpify - Scalable Density Pixels for Responsive UI

[![Pub Version](https://img.shields.io/pub/v/sdpify)](https://pub.dev/packages/sdpify)
[![Platform Support](https://img.shields.io/badge/platform-flutter-blue)](https://flutter.dev)

**Sdpify** is a lightweight package that provides **Scalable Density Pixels (SDP)** to ensure a **consistent UI** across different screen sizes and densities. It dynamically converts **pixel-based values (`px`) into scalable dp (`sdp`)**, making your app **adaptive and responsive** on all devices.

---

## 🚀 Features
- **Simple `.sdp` extension for easy usage**  
- **Automatically updates on screen size changes & rotation**  
- **Works seamlessly on Android, iOS, Web, Desktop**  
- **No more hardcoded pixel values - true scalability!**

---

## 📦 Installation
Add the package to your `pubspec.yaml` file:
```yaml
dependencies:
  sdpify: ^latest_version
```

Then, run:
```sh
flutter pub get
```

## 📌 Usage
### Import the package
```dart
import 'package:sdpify/sdpify.dart';
```

### Wrap Your App with `Sdpify`
To ensure proper scaling, wrap your `MaterialApp` with `Sdpify`:
```dart
Sdpify(
  builder: (context) {
    return MaterialApp(
      home: HomePage(),
    );
  },
);
```

### Convert Pixels to SDP
```dart
double scalableSize = 16.sdp; // Scales dynamically based on screen size
```

### Responsive Widget Sizing
```dart
Container(
  width: 100.sdp, // Scaled width
  height: 50.sdp, // Scaled height
);
```

### Font Scaling
```dart
Text(
  'Sdpify Example',
  style: TextStyle(fontSize: 14.sdp),
);
```

## 📖 API Reference
### `double.sdp`
### `int.sdp`
### `num.sdp`
Converts a logical pixel value to scalable dp.

### `Sdpify`
A wrapper widget that automatically adjusts scaling based on screen size and orientation.

#### Parameters:
- `builder`: A function that returns the main app widget.

---

## 🤝 Contributions
Contributions are welcome! Feel free to open an issue or submit a pull request.

## 📜 License
Sdpify is released under the MIT License.
