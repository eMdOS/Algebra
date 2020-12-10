public enum Validated<Value, Error> {
    case valid(Value)
    case invalid([Error])

    public static func error(_ error: Error) -> Validated {
        .invalid([error])
    }
}

public extension Validated {
    var value: Value? {
        guard case .valid(let value) = self else {
            return nil
        }
        return value
    }

    var isValid: Bool {
        value != nil
    }

    var errors: [Error]? {
        guard case .invalid(let errors) = self else {
            return nil
        }
        return errors
    }

    var isInvalid: Bool {
        errors != nil
    }
}
