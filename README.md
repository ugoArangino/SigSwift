# SigSwift

This is a Swift wrapper for *Darwin* `signal.h`.

## Usage

### [Example](https://github.com/ugoArangino/SigSwift/tree/master/Example)

```swift
import Foundation
import SigSwift

public enum State {
    case started
    case stopped
}

var state: State = .started

SignalController.add(.INT) { (signalNumber) in
    guard let signal = Signal(rawValue: signalNumber) else {
        return
    }
    
    state = .stopped
    print("Intercepted signal: \(signal)")
    print("Set state to .stopped")
}

repeat {
    print("hello \(Date())")
    sleep(2)
} while (state == .started)
```

**Build** with: `swift build`  
**Run** with `./.build/debug/Example`

You can send the `SIGINT` signal with `kill -2 thePID`.

The application will return:

```
Intercepted signal: INT
Set state to .stopped
```

## TODO

- [ ] Documentation
- [ ] Wrapp also *Linux* `signal.h`
