//
//  SceneDelegate.swift
//  AboutObject
//
//  Created by Vladimir Murashka on 27.12.2024.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    
    func scene(_ scene: UIScene,
               willConnectTo session: UISceneSession,
               options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let windowScene = (scene as? UIWindowScene) else { return }
        self.setupRootViewController(windowScene: windowScene)
    }
}



// MARK: - Private methods
private extension SceneDelegate {
    
    func setupRootViewController(windowScene: UIWindowScene) {
        let window = UIWindow(windowScene: windowScene)
        let sceneBuildManager: SceneBuildManagerProtocol = SceneBuildManager()
        let viewController = sceneBuildManager.buildSplashScreen()
        let navigationController = UINavigationController(rootViewController: viewController)
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
        window.overrideUserInterfaceStyle = .light
        self.window = window
    }
    
}

