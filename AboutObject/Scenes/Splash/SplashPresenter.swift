//
//  SplashPresenter.swift
//  AboutObject
//
//  Created by Vladimir Murashka on 27.12.2024.
//


import UIKit

/// Протокол презентера Splash экрана
protocol SplashPresenterProtocol: AnyObject {
    /// View загрузилось
    func viewDidLoad()
}

// MARK: - SplashPresenter
/// Presenter Splash экрана
final class SplashPresenter {
    /// Ссылка на viewController Splash экрана, реализующий протокол SplashViewProtocol.
    weak var viewController: SplashViewProtocol?
    
    // MARK: - PrivateProperties
    /// Менеджер для создания и конфигурации сцен приложения.
    private let sceneBuildManager: SceneBuildManagerProtocol
    
    // MARK: - Initializer
    /// Параметры инициализатора
    /// - Parameters:
    ///     - sceneBuildManager: Менеджер для создания и конфигурации сцен приложения.
    init(sceneBuildManager: SceneBuildManagerProtocol) {
        self.sceneBuildManager = sceneBuildManager
    }
}

//MARK: - SplashPresenterExtension Impl.
/// Расширение Presenter(а) Splash экрана реализации SplashPresenterProtocol
extension SplashPresenter: SplashPresenterProtocol {
    func viewDidLoad() {
//        let rootViewController = UINavigationController(rootViewController: self.sceneBuildManager.buildTabBarScreen())
//        UIApplication.shared.windows.first?.rootViewController = rootViewController
    }
}
