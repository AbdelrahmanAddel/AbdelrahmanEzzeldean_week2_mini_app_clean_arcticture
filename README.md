# 📱 Mini App Clean Architecture

A Flutter application built with **Clean Architecture** principles, featuring a modern UI design with smooth navigation and responsive layouts.

## 📸 Screenshots

<div align="center">
  
### 🏠 Home Screen
<img width="250" alt="Home Screen" src="https://github.com/user-attachments/assets/d2894488-ba5b-4a9b-b7a5-466e88e6b87e" />

### 📄 Details Screen  
<img width="250" alt="Details Screen" src="https://github.com/user-attachments/assets/300ed47c-d884-4502-a5a7-1d8e57a17c47" />

### 📈 Upgrade Plan Screen
<img width="250" alt="Upgrade Plan Screen" src="https://github.com/user-attachments/assets/eb2a0fa8-b873-489a-ba68-6a388a4d3ba0" />

</div>

---

## ✨ Features

- 🎨 **Modern UI Design** - Clean and intuitive user interface
- 🏗️ **Clean Architecture** - Scalable and maintainable code structure
- 🔄 **Custom Navigation Bar** - Interactive bottom navigation with animations

---

## 📂 Project Structure

```
lib/
├── core/
│   ├── common/
│   │   └── widgets/         # Shared widgets across the app
│   ├── constants/           # Assets, Colors, Fonts, and Text Styles
│   └── helper/              # Helper functions (e.g., spacer)
│
├── features/
│   ├── home/                # 🏠 Home feature
│   │   ├── data/            # (Prepared for future data layer)
│   │   ├── domain/          # (Prepared for future business logic)
│   │   └── presentation/    # UI Layer
│   │       ├── bloc/        # (Prepared for state management)
│   │       ├── pages/       # Home screen entry point
│   │       └── widgets/     # UI components
│   │
│   ├── details_screen/      # 📄 Details feature
│   │   ├── data/
│   │   ├── domain/
│   │   └── presentation/
│   │       ├── bloc/
│   │       ├── pages/       # Details screen entry point
│   │       └── widgets/     # UI components
│   │
│   └── upgrade_plan/        # 📈 Upgrade Plan feature
│       ├── data/
│       ├── domain/
│       └── presentation/
│           ├── bloc/
│           ├── pages/       # Upgrade Plan screen entry point
│           └── widgets/     # UI components
│
└── main.dart                # App entry point
```

---

## 🏛️ Architecture Overview

### Clean Architecture Implementation
Although the current scope focuses on **UI implementation only**, the project structure follows Clean Architecture principles:

- **📊 Data Layer** (`data/`) - Ready for datasources, models, and repositories
- **🎯 Domain Layer** (`domain/`) - Prepared for entities, use cases, and abstract repositories  
- **🖼️ Presentation Layer** (`presentation/`) - Contains UI components, pages, and state management

### Key Architecture Benefits
- **🔧 Scalability** - Easy to extend with new features
- **🧪 Testability** - Clear separation of concerns
- **🔄 Maintainability** - Organized code structure
- **♻️ Reusability** - Shared components in `core/`

---

## 🛠️ Tech Stack

| Technology | Purpose |
|------------|---------|
| **Flutter** | Cross-platform UI framework |
| **Clean Architecture** | Project structure & organization |
| **Material Design** | UI components & theming |
| **SVG Support** | Vector icons & graphics |

---

## 🚀 Getting Started

### Prerequisites
- Flutter SDK (>= 3.0.0)
- Dart SDK (>= 3.0.0)
- Android Studio / VS Code
- Git

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/AbdelrahmanAddel/AbdelrahmanEzzeldean_week2_mini_app_clean_arcticture.git
   cd mini_app_clean_architecture
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Run the application**
   ```bash
   flutter run
   ```

### Adding Screenshots

Create a `screenshots/` folder in your project root and add your screen images:

```bash
mkdir screenshots
# Add your screenshots:
# screenshots/home_screen.png
# screenshots/details_screen.png  
# screenshots/upgrade_plan_screen.png
```

---

## 📁 Key Directories

| Directory | Description |
|-----------|-------------|
| `lib/core/constants/` | App-wide constants (colors, assets, fonts) |
| `lib/core/common/widgets/` | Reusable UI components |
| `lib/features/*/presentation/pages/` | Screen entry points |
| `lib/features/*/presentation/widgets/` | Feature-specific UI components |

---

## 🔮 Future Enhancements

- [ ] **State Management** - Implement BLoC pattern
- [ ] **API Integration** - Add REST/GraphQL support
- [ ] **Local Storage** - Implement data persistence
- [ ] **Testing** - Add unit and widget tests
- [ ] **Localization** - Multi-language support
- [ ] **Animations** - Enhanced UI transitions

---

## 📌 Current Status

| Feature | Status |
|---------|--------|
| 🏠 Home Screen UI | ✅ Completed |
| 📄 Details Screen UI | ✅ Completed |
| 📈 Upgrade Plan Screen UI | ✅ Completed |

---

## 🤝 Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

---

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

<div align="center">

**Built with ❤️ using Flutter**

</div>
