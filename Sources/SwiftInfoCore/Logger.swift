import Foundation

public var isInVerboseMode = ProcessInfo.processInfo.arguments.contains("-v")
public var isInSilentMode = ProcessInfo.processInfo.arguments.contains("-s")

public func log(_ message: String, verbose: Bool = false) {
    guard isInSilentMode == false else {
        return
    }
    guard verbose == false || isInVerboseMode else {
        return
    }
    print("* \(message)")
}
