
import Foundation
class UserManager {
    static let shared = UserManager()

    private init() {}

    var isLoggedIn: Bool = false // Add your login status logic here
}
