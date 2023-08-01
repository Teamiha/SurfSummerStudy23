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
        let label = UILabel()
        var cityName = ""
        label.numberOfLines = 1
        label.text = "Профиль"
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 16)
        return label
    }()
    
    private lazy var slogan: UILabel = {
        let slogan = UILabel()
        slogan.numberOfLines = 0
        slogan.text = ""
        slogan.textAlignment = .center
        slogan.font = .systemFont(ofSize: 30)
        return slogan
    }()
    
    private lazy var location: UILabel = {
        let location = UILabel()
        location.numberOfLines = 0
        location.text = ""
        location.textAlignment = .center
        location.font = .systemFont(ofSize: 30)
        return location
    }()
    
    private lazy var profilePhoto: UIImageView = {
        let profilePhoto = UIImageView()
        profilePhoto.frame.size = CGSize(width: 120, height: 120)
        profilePhoto.layer.cornerRadius = 50
        
        return profilePhoto
    }()
    
    
    
    private lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.backgroundColor = UIColor(red: 0.59, green: 0.58, blue: 0.61, alpha: 1)
        
        scrollView.frame = CGRect(x: 0, y: 0, width: view.bounds.width, height: view.bounds.height)
        scrollView.contentSize = contentSize
        scrollView.bounces = false
      
        scrollView.showsVerticalScrollIndicator = true
        
        return scrollView
    }()
    
    
    
    //MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 0.59, green: 0.58, blue: 0.61, alpha: 1)
        
    
        navigationItem.titleView = titleName
        
        
        
//        view.addSubview(scrollView)

        
    }
}

private extension UserProfileViewController {
    
    //MARK: - Methods
    
    func setupValues() {
       
        }
    
    //MARK: - Constraints
    
    
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
