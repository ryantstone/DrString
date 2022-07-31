import ArgumentParser

public enum ACL: Hashable, Codable {
    case `public`, `internal`, `private`, `filePrivate`
}

extension ACL: ExpressibleByArgument {
    public init?(argument: String) {
        switch argument.lowercased() {
        case "private":
            self = .private
            
        case "fileprivate":
            self = .filePrivate
            
        case "internal":
            self = .internal
            
        case "public":
            self = .public
            
        default:
            return nil
        }
    }
}
