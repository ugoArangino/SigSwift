import Darwin

public typealias SignalActionHandler = (@convention(c) (SignalNumber) -> Swift.Void)
private typealias CSignalActionHandler = SignalActionHandler
private typealias CSignalAction = sigaction
private typealias CSignalActionUnion = __sigaction_u

public class SignalController {
    
    public static func add(_ signal: Signal, action: @escaping SignalActionHandler) {
        let cSignalActionUnion: CSignalActionUnion = unsafeBitCast(action, to: __sigaction_u.self)
        var signalAction = CSignalAction(__sigaction_u: cSignalActionUnion, sa_mask: 0, sa_flags: 0)
        
        let _ = withUnsafePointer(to: &signalAction) { actionPointer in
            let signalNumber = signal.rawValue
            sigaction(signalNumber, actionPointer, nil)
        }
    }
}
