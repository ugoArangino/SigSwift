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
