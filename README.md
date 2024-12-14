## UI components framework for SwiftUI

SnackUI allows developers to build beautiful iOS-apps faster. SnackUI is responsively designed allowing your iOS-app to scale on multiple devices

## Installation guide

To use SnackUI components, all you need to do is install SnackUI via the Swift Package Manager:

```
https://github.com/charming-whaley/SnackUI.git
```

Voilà! Now you are ready to improve UI in your project!

## Usage

After the installation, add any SnackUI component to your project:

```swift
struct ContentView: View {
    var body: some View {
        SnackButton(label: "WoW!", color: Color.red, size: .medium) {
            print("This is the most significant UI-library I've ever seen!")
        }
    }
}
```
