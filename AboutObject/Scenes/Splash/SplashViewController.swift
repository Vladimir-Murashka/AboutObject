//
//  SplashViewController.swift
//  AboutObject
//
//  Created by Vladimir Murashka on 27.12.2024.
//

import UIKit

// MARK: - SplashViewProtocol
/// Протокол viewController(а) Splash экрана
protocol SplashViewProtocol: UIViewController {}

// MARK: - SplashViewController
/// ViewController Splash экрана
final class SplashViewController: UIViewController {
    /// Ссылка на presenter Splash экрана, реализующий протокол SplashViewProtocol.
    var presenter: SplashPresenterProtocol?
    
    // MARK: - PrivateProperties
    /// Инициализация UIImageView для отображения логотипа.
    private lazy var logoImageView: UIImageView = {
        let image = UIImage(named: "mainLogo")
        let imageView = UIImageView(image: image)
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    // MARK: - LifeCycle
    /// View загрузилось
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupViewController()
        self.presenter?.viewDidLoad()
    }
}

// MARK: - SplashViewProtocol Impl
/// Расширение ViewController(а) Splash экрана реализации SplashPresenterProtocol
extension SplashViewController: SplashViewProtocol {}

// MARK: - PrivateMethods
/// Расширение ViewController(а) Splash экрана для реализации пользовательского интерфейса.
extension SplashViewController {
    /// Настраивает свойства SplashViewController, включая фон, добавление сабвью и их ограничения.
    private func setupViewController() {
        self.view.backgroundColor = .systemBackground
        self.addSubViews()
        self.setupConstraints()
    }
    
    /// Добавляет элементы интерфейса в иерархию представлений.
    private func addSubViews() {
        self.view.addSubviews(self.logoImageView)
    }
    
    /// Устанавливает ограничения для элементов интерфейса с использованием Auto Layout.
    private func setupConstraints() {
        let logoWidth: CGFloat = 200
        let logoHeight: CGFloat = 200
        
        NSLayoutConstraint.activate([
            self.logoImageView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor), // Центрирование по вертикали.
            self.logoImageView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor), // Центрирование по горизонтали.
            self.logoImageView.widthAnchor.constraint(equalToConstant: logoWidth),         // Установка ширины логотипа.
            self.logoImageView.heightAnchor.constraint(equalToConstant: logoHeight)       // Установка высоты логотипа.
        ])
    }
}
