# SnackUI

<p>SnackUI is an open-source library of modern UI components written in SwiftUI</p>

## Quick start

<p>Clone the repo to your project via Swift Package Manager and voilà!</p>

```
https://github.com/charming-whaley/SnackUI.git
```

## Usage

<p>SnackUI's compact syntax and extensive components set allow to build great-looking designs in SwiftUI</p>

```swift
import SnackUI

struct ContentView: View {
    var body: some View {
        SnackButton(withTitle: "Tap on me!", ofColor: .blue, AndSize: .large, withRadiusOf: 20) {
            Task {
                await greet()
            }
        }
    }
    
    @MainActor
    private func greet() async {
        print("Hi!")
    }
}
```
