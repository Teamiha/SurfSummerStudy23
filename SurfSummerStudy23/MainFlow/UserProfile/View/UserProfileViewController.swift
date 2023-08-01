//
//  UserProfileViewController.swift
//  SurfSummerStudy23
//
//  Created by Михаил Светлов on 01.08.2023.
//

import UIKit

class UserProfileViewController: UIViewController {

    //MARK: - Constants
    
    private enum Constants {
        
    }
    
    //MARK: - Views
    
    var presenter: UserProfilePresenterProtocol!
    
    private var contentSize: CGSize {
        CGSize(width: view.frame.width, height: view.frame.height)
    }
    
    private lazy var alertAddSkill: UIAlertController = {
        let alert = UIAlertController(
        title: "Добавление навыка",
        message: "Введите название навыка которым вы владеете",
        preferredStyle: .alert
        )
        
        alert.addTextField { textField in
            textField.placeholder = "Введите название"
            textField.keyboardType = .default
        }
        
        let cancelAction = UIAlertAction(title: "Отмена", style: .cancel)
        
        let okAction = UIAlertAction(title: "Добавить", style: .default) { [weak alert] _ in
            guard let textFields = alert?.textFields else { return }
            
            if let textField = alert?.textFields?.first {
                
                let userInput = textField.text ?? ""
            }
        }
        
        alert.addAction(cancelAction)
        alert.addAction(okAction)
        
        return alert
    }()
    
    
    
    private lazy var titleName: UILabel = {
        let titleName = UILabel()
        titleName.numberOfLines = 1
        titleName.text = "Профиль"
        titleName.textAlignment = .center
        titleName.font = .systemFont(ofSize: 16)
        return titleName
    }()
    
    private lazy var slogan: UILabel = {
        let slogan = UILabel()
        slogan.numberOfLines = 1
        slogan.text = ""
        slogan.textAlignment = .center
        slogan.font = .systemFont(ofSize: 14)
        slogan.textColor = UIColor(red: 0.59, green: 0.58, blue: 0.61, alpha: 1)
        return slogan
    }()
    
    private lazy var userName: UILabel = {
        let userName = UILabel()
        userName.numberOfLines = 2
        userName.text = ""
        userName.textAlignment = .center
        userName.font = .systemFont(ofSize: 24)
        userName.textColor = UIColor(red: 0.19, green: 0.19, blue: 0.19, alpha: 1)
        return userName
    }()
    
    private lazy var location: UILabel = {
        let location = UILabel()
        location.numberOfLines = 0
        location.text = ""
        location.textAlignment = .center
        location.font = .systemFont(ofSize: 30)
        return location
    }()
    
    private lazy var about: UILabel = {
        let about = UILabel()
        slogan.numberOfLines = 0
        slogan.text = ""
        slogan.textAlignment = .center
        slogan.font = .systemFont(ofSize: 30)
        return about
    }()
    
    private lazy var profilePhoto: UIImageView = {
        let profilePhoto = UIImageView()
        profilePhoto.image = UIImage(named: presenter.userPhotoName ?? "")
        
        profilePhoto.contentMode = .scaleAspectFit
        profilePhoto.frame.size = CGSize(width: 120, height: 120)
        profilePhoto.layer.cornerRadius = 70
        profilePhoto.clipsToBounds = true
        
        return profilePhoto
    }()
    
    
    
//    private lazy var scrollView: UIScrollView = {
//        let scrollView = UIScrollView()
//        scrollView.backgroundColor = UIColor(red: 0.59, green: 0.58, blue: 0.61, alpha: 1)
//
//        scrollView.frame = CGRect(x: 0, y: 0, width: view.bounds.width, height: view.bounds.height)
//        scrollView.contentSize = contentSize
//        scrollView.bounces = false
//
//        scrollView.showsVerticalScrollIndicator = true
//
//        return scrollView
//    }()
    
    
    
    
    
    //MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.96, alpha: 1)
        navigationItem.titleView = titleName
        view.addSubview(profilePhoto)
        view.addSubview(userName)
        view.addSubview(slogan)
        setConstraints()
        setupValues()
    }
}

private extension UserProfileViewController {
    
    //MARK: - Methods
    
    func setupValues() {
        userName.text = presenter.name
        slogan.text = presenter.slogan
        location.text = presenter.location
        about.text = presenter.about
        }
    
    //MARK: - Constraints
    
    func setConstraints() {
        userName.translatesAutoresizingMaskIntoConstraints = false
        profilePhoto.translatesAutoresizingMaskIntoConstraints = false
        slogan.translatesAutoresizingMaskIntoConstraints = false
//        about.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            profilePhoto.topAnchor.constraint(equalTo: view.topAnchor, constant: CGFloat(150)),
            profilePhoto.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: CGFloat(127.5)),
            profilePhoto.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: CGFloat(-127.5)),
            profilePhoto.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: CGFloat(-568))
        ])
        
        NSLayoutConstraint.activate([
            userName.topAnchor.constraint(equalTo: profilePhoto.bottomAnchor, constant: CGFloat(16)),
            userName.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: CGFloat(113)),
            userName.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: CGFloat(-113)),
            userName.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: CGFloat(-452))
        ])
        
        NSLayoutConstraint.activate([
            slogan.topAnchor.constraint(equalTo: userName.bottomAnchor, constant: CGFloat(4)),
            slogan.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: CGFloat(51)),
            slogan.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: CGFloat(-51)),
            slogan.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: CGFloat(-400))
        ])
    }
    
}

//MARK: - Protocol

extension UserProfileViewController: UserProfileViewProtocol {
    
    func succes() {
        setupValues()
    }
    
    func failure(error: Error) {
        print(error)
        return
    }
}
