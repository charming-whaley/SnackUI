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
        SnackButton("Tap on me!", .blue, 15, .wide) {
            await greetUser(withMessage: "Welcome to SnackUI!")
        }
    }
}
```
