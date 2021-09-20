//
//  ViewController.swift
//  messages
//
//  Created by osa on 18.09.2021.
//

import UIKit
import SwiftUI

class AuthViewController: UIViewController {

    let emailButton = UIButton(title: "Email",
                               backgroundColor: .black,
                               titleColor: .white)
    let loginButton = UIButton(title: "Login",
                               isShadow: true,
                               backgroundColor: .white,
                               titleColor: .buttonRed())
    let googleButton = UIButton(title: "Google",
                                isShadow: true,
                                backgroundColor: .white,
                                titleColor: .black)
    
    let googleLabel = UILabel(text: "Get started with")
    let emailLabel = UILabel(text: "Sign up with")
    let registeredLabel = UILabel(text: "Already on board?")
    
    let logoImageView = UIImageView(image: #imageLiteral(resourceName: "messageLogo.png"), contentMode: .scaleAspectFit)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        setupConstraints()
    }

    
}

// MARK: -  Setup Constraints

extension AuthViewController {
    private func setupConstraints() {
        view.addSubview(logoImageView)
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        
        let googleView = ButtonFormView(label: googleLabel, button: googleButton)
        let emailView = ButtonFormView(label: emailLabel, button: emailButton)
        let loginView = ButtonFormView(label: registeredLabel, button: loginButton)
        let stackView = UIStackView(arrangedSubviews: [googleView, emailView, loginView], axis: .vertical, spacing: 40)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            logoImageView.heightAnchor.constraint(equalToConstant: 120),
            logoImageView.widthAnchor.constraint(equalToConstant: 120),
            logoImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 150),
            logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 120),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40)
        ])
        
        
    }

}



// MARK: -  Preview
struct ViewControllerProvider: PreviewProvider {
    static var previews: some View {
        ContainerView().edgesIgnoringSafeArea(.all)
    }
    
    struct ContainerView: UIViewControllerRepresentable {
        
        let viewController = AuthViewController()
        
        func makeUIViewController(context: Context) -> AuthViewController {
            return viewController
        }
        
        func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
        }
    }
}
