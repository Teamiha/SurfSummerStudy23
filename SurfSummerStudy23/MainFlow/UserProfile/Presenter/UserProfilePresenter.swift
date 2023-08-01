//
//  UserProfilePresenter.swift
//  SurfSummerStudy23
//
//  Created by Михаил Светлов on 01.08.2023.
//

import Foundation


//MARK: - Protocol

protocol UserProfileViewProtocol: AnyObject {
    func succes()
    func failure(error: Error)
}

protocol UserProfilePresenterProtocol: AnyObject {
    init(view: UserProfileViewProtocol,
         router: RouterProtocol
        )
    
    func getSkills()
    
    func getData()
    
    var name: String? { get set }
    var slogan: String? { get set }
    var location: String? { get set }
    var about: String? { get set }
    var skillList: [String]? { get set }
    var editSkillMode: Bool? { get set }
    var userPhotoName: String? { get set }
    
    func changeEditSkillMode()
    
    func deleteSkillButtonTaped()
}


//MARK: - Class

class UserProfilePresenter: UserProfilePresenterProtocol {
    weak var view: UserProfileViewProtocol?
    var router: RouterProtocol?
    
    var skillList: [String]?
    
    var name: String?
    
    var slogan: String?
    
    var location: String?
    
    var about: String?
    
    var editSkillMode: Bool?
    
    var userPhotoName: String?
    
    
    required init(view: UserProfileViewProtocol, router: RouterProtocol) {
        self.view = view
        self.router = router
        getSkills()
        getData()
    }
    
    
    
    
    func changeEditSkillMode() {
        
    }
    
    func getSkills() {
        
    }
    
    func deleteSkillButtonTaped() {
        
    }
    
    func getData() {
        self.name = MockData().name
        self.location = MockData().location
        self.slogan = MockData().slogan
        self.about = MockData().about
        self.userPhotoName = MockData().userPhotoName
        
    }
    
    
    
}
