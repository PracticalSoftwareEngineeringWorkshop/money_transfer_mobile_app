#  [WORK IN PROGRESS]
---
# Money Transfer Mobile App

Money Transfer Hybrid Mobile App using Flutter SDK and Dart programming language

## Tasks
Add the following code in `pubspec.yaml` under `dependencies`
```
# Added HTTP library to make API calls
http: ^0.13.1

# https://pub.dev/packages/splash_screen_view
splash_screen_view: ^1.0.3
```

## Links
Login page design concept taken from `https://www.youtube.com/watch?v=ExKYjqgswJg`  

### Repository
`https://github.com/PracticalSoftwareEngineeringWorkshop/money_transfer_mobile_app`

## Screenshots
Splash Screen  
![Splash Screen](screenshots/splash_screen.png)  

Login Screen  
![Login Screen](screenshots/login_screen.png)  

Register Screen  
![Register Screen](screenshots/register_screen.png)    

Transfer Money Screen  
![Transfer Money Screen](screenshots/transfer_money_screen.png)  

## Flutter - How to
[Installation](https://flutter.dev/docs/get-started/install/macos)  
[Tutorial - Code Lab](https://flutter.dev/docs/get-started/codelab)  

### Stateless vs Stateful Widgets
- Stateless widgets are immutable, meaning that their properties can’t change—all values are final.
- Stateful widgets maintain state that might change during the lifetime of the widget.

### Creating apps
```
flutter create money_transfer_mobile_app
cd money_transfer_mobile_app
flutter run
```

To enable null safety, type:  
```
  $ cd money_transfer_mobile_app
  $ dart migrate --apply-changes
```

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
