import UIKit
import SwiftUI

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = scene as? UIWindowScene else {
            return
        }
        
        let window = UIWindow(windowScene: windowScene)
        
        let showSwiftUIViews = true
        if showSwiftUIViews {
            window.rootViewController = UIHostingController(rootView: NavigationView() { ContentView() })
        } else {
            let navigationController = UINavigationController(rootViewController: ContentViewController(style: .grouped))
            navigationController.navigationBar.prefersLargeTitles = true
            window.rootViewController = navigationController
        }
        
        self.window = window
        window.makeKeyAndVisible()
    }

}
