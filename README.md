# Sign Language Translator App

A Flutter application that translates sign language to text and vice versa using machine learning and computer vision.

## Features

- Real-time hand gesture recognition
- Text-to-sign language animation
- Interactive learning modules
- Progress tracking
- Offline support
- Custom gesture database

## Tech Stack

- Flutter
- TensorFlow Lite
- Google ML Kit
- Camera API
- Drift
- BLOC

## Getting Started

### Prerequisites

- Flutter SDK (>=3.0.0)
- Android Studio / VS Code
- TensorFlow Lite
- Google ML Kit

### Installation

```bash

# Install dependencies
flutter pub get

# Run the app
flutter run
```

### Project Structure

```
lib/
├── core/
│   ├── constants/
│   ├── services/
│   └── utils/
├── data/
│   ├── models/
│   ├── repositories/
│   └── datasources/
├── domain/
│   ├── entities/
│   └── usecases/
└── presentation/
    ├── screens/
    ├── widgets/
    └── providers/
```

## Usage

1. Grant camera permissions
2. Point camera at hand signs
3. View real-time translations
4. Practice with learning modules

## Contributing

1. Fork repository
2. Create feature branch
3. Commit changes
4. Push to branch
5. Open pull request

## License

MIT License - see LICENSE.md

## Acknowledgments

- Google ML Kit Team
- TensorFlow Lite Team
- Sign Language Dataset Contributors