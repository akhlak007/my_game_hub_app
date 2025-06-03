# My Game Hub

[![Flutter](https://img.shields.io/badge/Flutter-02569B?style=flat-square\&logo=flutter\&logoColor=white)](https://flutter.dev)
[![Firebase](https://img.shields.io/badge/Firebase-FFCA28?style=flat-square\&logo=firebase\&logoColor=black)](https://firebase.google.com)
[![MIT License](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

> A multi-game arcade built with Flutter, featuring classic games like Flappy Bird, Fruit Ninja, Tower of Hanoi, and Tic Tac Toe in a unified and responsive interface.

📱 **Live Demo:** [https://alcipen-71f8e.web.app/](https://alcipen-71f8e.web.app/)
📖 **Blog Post:** [mygamehub.hashnode.dev](https://mygamehub.hashnode.dev)

---

## 📚 Table of Contents

* [Features](#features)
* [Prerequisites](#prerequisites)
* [Installation](#installation)
* [Project Structure](#project-structure)
* [Available Games](#available-games)
* [Development](#development)
* [Testing](#testing)
* [Deployment](#deployment)
* [Contributing](#contributing)
* [License](#license)
* [Support](#support)

---

## 🚀 Features

* 🎮 **Multi-Game Platform**: Four integrated classic games in one app
* 🌐 **Cross-Platform**: Runs on Android, iOS, Web, and Desktop
* 📱 **Responsive Design**: Works seamlessly across devices
* 🧱 **Modern Architecture**: Clean, scalable, and modular codebase
* ⚡ **Optimized Performance**: Smooth gameplay and minimal lag
* 📦 **PWA Ready**: Installable as a web app with offline support

---

## ✅ Prerequisites

Ensure the following are installed:

* **Flutter SDK** (>= 3.0.0)
* **Dart SDK** (>= 2.17.0)
* **Git**
* **Android Studio / VS Code**
* **Chrome** (for web)

### Platform-Specific Requirements

* **Android**: Android SDK, Emulator/API 21+
* **iOS**: Xcode 13+, macOS only
* **Web**: Any modern browser with WebGL

---

## ⚙️ Installation

```bash
git clone https://github.com/akhlak007/my_game_hub_app.git
cd my_game_hub_app
flutter pub get
flutter doctor
```

Run on your preferred device:

```bash
flutter run -d chrome      # Web
flutter run -d android     # Android
flutter run -d ios         # iOS (macOS only)
```

---

## 📁 Project Structure

```
lib/
├── core/              # Constants, Themes, Utilities
├── features/          # Feature modules (games)
│   ├── flappy_bird/
│   ├── fruit_ninja/
│   ├── tic_tac_toe/
│   └── tower_hanoi/
├── shared/            # Shared widgets and models
└── main.dart          # App entry point
```

---

## 🎮 Available Games

### 1. Flappy Bird

* Physics-based gameplay with obstacle avoidance
* Realistic movement and collision detection

### 2. Fruit Ninja

* Swipe detection for fruit slicing
* Real-time scoring and combo system

### 3. Tower of Hanoi

* Classic recursive disk-moving puzzle
* Drag-and-drop UI with move counter

### 4. Tic Tac Toe

* Single and multiplayer mode
* AI opponent using Minimax algorithm

---

## 🛠️ Development

### Code Style

* Follows Dart & Flutter style guide
* `dart format` used for formatting
* Modular design and SOLID principles

### State Management

* Provider for scalable and testable state control

### Performance

* Optimized rendering and memory use
* Cached assets and 60fps animations

---

## 🧪 Testing

```bash
flutter test                        # Unit tests
flutter test integration_test/     # Integration tests
flutter test test/widget_test/     # Widget tests
```

### Coverage

```bash
flutter test --coverage
genhtml coverage/lcov.info -o coverage/html
```

### Testing Strategy

* Unit: Game logic
* Widget: UI behavior
* Integration: Full user flows
* Performance: FPS/memory profiling

---

## 🚀 Deployment

### Web (Firebase Hosting)

```bash
flutter build web --release
firebase deploy
```

### Android

```bash
flutter build apk --release
```

### iOS

```bash
flutter build ios --release
```

---

## 🤝 Contributing

We welcome PRs from the community!

### Steps

1. Fork this repo
2. Create a branch: `git checkout -b feature/my-feature`
3. Commit: `git commit -m "Add my feature"`
4. Push: `git push origin feature/my-feature`
5. Create a pull request

### Guidelines

* Match code style
* Add tests for features
* Update relevant docs
* Write clear commit messages

---

## 📜 License

**MIT License**
See [LICENSE](LICENSE) file for full text.

```
MIT License
Copyright (c) 2025 Akhlak Ahmed
Permission is hereby granted, free of charge...
```

---

## 💬 Support

* Email: [akhlak.ahmed.dev@gmail.com](mailto:akhlak.ahmed.dev@gmail.com)
* GitHub Issues: Use [Issues](https://github.com/akhlak007/my_game_hub_app/issues)
* Blog: [mygamehub.hashnode.dev](https://mygamehub.hashnode.dev)

---

## 🙌 Acknowledgments

* Flutter and Dart community
* Open-source contributors
* Firebase and Hashnode

---

> This README follows best practices for open-source Flutter projects and is suitable for professional portfolios, collaborations, and scalable development environments.
