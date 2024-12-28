//
//  SceneBuildManager.swift
//  AboutObject
//
//  Created by Vladimir Murashka on 28.12.2024.
//

import Foundation

protocol SceneBuildManagerProtocol {
    func buildSplashScreen() -> SplashViewController
}

final class SceneBuildManager {
    
    init() {}
}

extension SceneBuildManager: SceneBuildManagerProtocol {
    func buildSplashScreen() -> SplashViewController {
        let viewController = SplashViewController()
        let presenter = SplashPresenter(sceneBuildManager: self)
        
        viewController.presenter = presenter
        presenter.viewController = viewController
        
        return viewController
    }
}

