# SnackUI

<p>SnackUI is an open-source library of UI components written in SwiftUI. It helps you build modern interfaces with an ease</p>

## Installation

<p>SnackUI made for SwiftUI projects, but those who want to see its power can use SwiftUI in their UIKit project. The obligatory is <b>iOS18+</b> and <b>macOS15+</b></p>

<p>To install SnackUI, just go to Swift Package manager and copy-paste this link to the repository browser:</p>

```
https://github.com/charming-whaley/SnackUI.git
```

<p>You will see SnackUI package, just download it and voilà!</p>

## Usage

<p>SnackUI is SwiftUI-based library, so you just need to add any component from the library in your view</p>

```swift
import SwiftUI
import SnackUI

struct ContentView: View {
    var body: some View {
        SnackButton("Tap on me!", .blue, radius: 20, size: .wide) {
            print("I love SnackUI!")
        }
    }
}
```
