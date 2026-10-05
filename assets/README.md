# Assets

This project ships with a code-drawn logo (see `lib/widgets/app_logo.dart`) so no image
assets are required to run it.

If you'd like to use a real logo image instead:

1. Drop your image here, e.g. `assets/logo.png`.
2. Register it in `pubspec.yaml`:
   ```yaml
   flutter:
     assets:
       - assets/logo.png
   ```
3. In `lib/widgets/app_logo.dart`, replace the `Icon(...)` with:
   ```dart
   Image.asset('assets/logo.png', width: size * 0.6, height: size * 0.6)
   ```
