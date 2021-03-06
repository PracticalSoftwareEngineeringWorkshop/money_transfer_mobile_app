#  [WORK IN PROGRESS]
---
# Money Transfer Mobile App

Money Transfer Hybrid Mobile App using Flutter SDK and Dart programming language

## Creating and running a flutter app
```
flutter create money_transfer_mobile_app
cd money_transfer_mobile_app
flutter run

# To run on all devices/emulators at once  
flutter run -d all  
```

To enable null safety, type:  
```
  $ cd money_transfer_mobile_app
  $ dart migrate --apply-changes
```

## Tasks
Add the following code in `pubspec.yaml` under `dependencies`
```
# Added HTTP library to make API calls
http: ^0.13.1

# https://pub.dev/packages/splash_screen_view
splash_screen_view: ^1.0.3
```

### Stateless vs Stateful Widgets
- Stateless widgets are immutable, meaning that their properties can’t change—all values are final.
- Stateful widgets maintain state that might change during the lifetime of the widget.

## Flutter - How to
[Installation](https://flutter.dev/docs/get-started/install/macos)  
[Tutorial - Code Lab](https://flutter.dev/docs/get-started/codelab) 

## Links
Login page design concept taken from `https://www.youtube.com/watch?v=ExKYjqgswJg`  

### Repository
`https://github.com/PracticalSoftwareEngineeringWorkshop/money_transfer_mobile_app`

## Screenshots
Splash Screen  
![Splash Screen](screenshots/splash_screen.png)  

View Profile Screen  
![View Profile Screen](screenshots/view_profile_screen.png)    

Register Screen  
![Register Screen](screenshots/register_screen.png)    

Login Screen  
![Login Screen](screenshots/login_screen.png)  

Transfer Money Screen  
![Transfer Money Screen](screenshots/transfer_money_screen.png)   

## Setting up Flutter on Mac M1
### Flutter SDK
1. Install Rosetta  
`sudo softwareupdate --install-rosetta`    
1. Download Flutter.zip file from [here](https://flutter.dev/docs/get-started/install/macos)  
1. Update your PATH in .zshrc  
1. Verify with  
```
which flutter  
flutter --version  
flutter doctor
```  
1. JAVA_HOME should be set to JDK 8   

### Setup for Android
1. Install Android Studio  
1. Configure location of Android Studio  
```
flutter config --android-studio-dir "/Users/biniam.kefale/Library/Application Support/JetBrains/Toolbox/apps/AndroidStudio/ch-0/203.7678000/Android Studio.app"  
flutter doctor --android-licenses  
```  

### Setup for iOS   
```
sudo xcode-select --switch /Applications/Xcode.app/Contents/Developer  
sudo xcodebuild -runFirstLaunch  
sudo xcodebuild -license  
sudo gem install cocoapods  
```  
Verify that everything works    
`flutter doctor`  

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
