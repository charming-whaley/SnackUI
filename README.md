## SnackUI: an open-source UI library for SwiftUI
SnackUI is an open-source library made on SwiftUI to help developers with designing their apps! It provides a vig variety of ui components such as buttons, labels, texts, etc.

## Installation guide

Firstly, you need to install SnackUI via Swift package manager

## Usage

After you've installed it, you just need to add a component to your view, and voilà, you're ready to use SnackUI in your project 

```swift
struct ContentView: View {
    var body: some View {
        SnackButton(label: "WoW!", color: Color.red, size: .medium) {
            print("This is the most significant UI-library I've ever seen!")
        }
    }
}
```
