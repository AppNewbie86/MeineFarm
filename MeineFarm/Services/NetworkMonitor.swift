
import Combine
import Foundation
import Network

// ObservableClass NetworkMonitor proof the Onlinestate with a global function

class NetworkMonitor: ObservableObject {
    @Published var isOnline = false

    private let reachabilityManager: NWPathMonitor

    init() {
        reachabilityManager = NWPathMonitor()

        reachabilityManager.start(queue: .main)
        reachabilityManager.pathUpdateHandler = { [weak self] path in
            guard let self = self else { return }
            self.isOnline = path.status == .satisfied
        }
    }
}

func isOnline() -> Bool {
    let networkMonitor = NetworkMonitor()
    return networkMonitor.isOnline
}
