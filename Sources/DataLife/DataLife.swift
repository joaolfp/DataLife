public class DataLife<T> {

    public typealias CompletionHandler = ((T) -> Void)

    public var value : T? {
        didSet {
            self.notifyObservers(self.observers)
        }
    }

    var observers : [Int : CompletionHandler] = [:]

    public init() {}

    public func observer(_ observer: ObserverProtocol, completion: @escaping CompletionHandler) {
        self.observers[observer.id] = completion
    }
    
    func notifyObservers(_ observers: [Int : CompletionHandler]) {
        if value != nil {
            observers.forEach({ $0.value(value!) })
        }
    }

    deinit {
        observers.removeAll()
    }
}
