# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Commands

```bash
flutter pub get      # Install dependencies
flutter run          # Run on connected device/emulator
flutter run -d web   # Run web version
flutter run -d macos # Run macOS version
flutter test         # Run all tests
flutter analyze      # Run linter
```

To run a single test file:
```bash
flutter test test/widget_test.dart
```

## Architecture

This is a Frontend Masters learning project — a cross-platform coffee shop app ("Coffee Master") targeting Android, iOS, web, Windows, Linux, and macOS.

**State management:** `StatefulWidget` + `setState()` only. No third-party state management.

**Navigation:** `BottomNavigationBar` with index-based tab switching in `MyHomePage` (`lib/main.dart`). No router package.

**Key files:**
- `lib/main.dart` — Entry point, app theme (brown seed color), `MyHomePage` with bottom nav, plus unused `Greet` and `HelloWorld` widgets left from earlier lessons
- `lib/offerspage.dart` — `OffersPage` (ListView of offers) and `Offer` (card widget with background image)

**Assets:** Images live in `images/` with resolution variants at `images/2.0x/`, `images/3.0x/`, `images/4.0x/`. All assets declared in `pubspec.yaml` under `flutter.assets`.

**Dependencies:** Only `cupertino_icons` beyond the Flutter SDK — no HTTP, routing, or persistence packages.