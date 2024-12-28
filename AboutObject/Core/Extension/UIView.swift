//
//  UIView.swift
//  AboutObject
//
//  Created by Vladimir Murashka on 28.12.2024.
//

import UIKit

/// Расширение для упрощения работы с UIView.
extension UIView {
    
    /// Добавляет вью в качестве сабвью с отключением автогенерации ограничений.
    /// - Parameter view: Добавляемый дочерний UIView.
    func myAddSubview(_ view: UIView) {
        view.translatesAutoresizingMaskIntoConstraints = false
        addSubview(view)
    }
    
    /// Добавляет несколько вью в качестве сабвью с отключением автогенерации ограничений.
    /// - Parameter views: Перечень добавляемых дочерних UIView.
    func addSubviews(_ views: UIView...) {
        for view in views {
            myAddSubview(view)
        }
    }
    
    /// Анимация нажатия на вью, имитирующая нажатие с уменьшением и возвратом к исходному размеру.
    /// - Parameter completion: Замыкание, выполняемое после завершения анимации.
    func pushAnimate(_ completion: (() -> Void)?) {
        UIView.animate(
            withDuration: 0.1,
            animations: {
                self.transform = CGAffineTransform(
                    scaleX: 0.9,
                    y: 0.9
                )
            },
            completion: { _ in
                UIView.animate(withDuration: 0.1) {
                    self.transform = CGAffineTransform.identity
                } completion: { _ in
                    completion?()
                }
            })
    }
}
