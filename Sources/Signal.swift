public typealias SignalNumber = Int32

public enum Signal: SignalNumber {
    /// Terminate - Hangup.
    case HUP	= 1
    /// Terminate - Terminal interrupt signal.
    case INT	= 2
    /// Terminate (core dump) - Terminal quit signal.
    case QUIT	= 3
    /// Terminate (core dump) - Illegal instruction.
    case ILL	= 4
    /// Terminate (core dump) - Trace/breakpoint trap.
    case TRAP	= 5
    /// Terminate (core dump) - Process abort signal
    case ABRT	= 6
    /// Continue - Continue executing, if stopped.
    case EMT	= 7
    /// Terminate (core dump) - Erroneous arithmetic operation.
    case FPE	= 8
    /// Terminate - Kill (cannot be caught or ignored).
    case KILL	= 9
    /// Terminate (core dump) - Access to an undefined portion of a memory object.
    case BUS	= 10
    /// Terminate (core dump) - Invalid memory reference.
    case SEGV	= 11
    /// Terminate (core dump) - Bad system call.
    case SYS	= 12
    /// Terminate - Write on a pipe with no one to read it.
    case PIPE	= 13
    /// Terminate - Alarm clock
    case ALRM	= 14
    /// Terminate - Termination signal.
    case TERM	= 15
    /// Ignore - High bandwidth data is available at a socket.
    case URG	= 16
    /// Stop - Stop executing (cannot be caught or ignored).
    case STOP	= 17
    /// Stop - Terminal stop signal.
    case TSTP	= 18
    /// Continue - Continue executing, if stopped.
    case CONT	= 19
    /// Ignore - Child process terminated, stopped, or continued.
    case CHLD	= 20
    /// Stop - Background process attempting read.
    case TTIN	= 21
    /// Stop - Background process attempting write.
    case TTOU	= 22
    /// Terminate - Terminal interrupt signal.
    case IO     = 23
    /// Terminate (core dump) - CPU time limit exceeded.
    case XCPU	= 24
    /// Terminate (core dump) - File size limit exceeded
    case XFSZ	= 25
    /// Terminate - Virtual timer expired.
    case VTALRM	= 26
    /// Terminate - Profiling timer expired.
    case PROF	= 27
    /// Terminate - Virtual timer expired.
    case WINCH	= 28
    /// Terminate (core dump) - Illegal instruction.
    case INFO	= 29
    /// Terminate - User-defined signal 1.
    case USR1	= 30
    /// Terminate - User-defined signal 2.
    case USR2	= 31
}
