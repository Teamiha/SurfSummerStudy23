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
    
    var name: String { get set }
    var slogan: String { get set }
    var location: String { get set }
    var about: String { get set }
    var skillList: [String]? { get set }
    var editSkillMode: Bool { get set }
    
    func changeEditSkillMode()
    func getSkills()
    func deleteSkillButtonTaped()
}


//MARK: - Class

class UserProfilePresenter: UserProfilePresenterProtocol {
    weak var view: UserProfileViewProtocol?
    var router: RouterProtocol?
    var skillList: [String]?
    
    required init(view: UserProfileViewProtocol, router: RouterProtocol) {
        self.view = view
        self.router = router
        getSkills()
    }
    
    var name: String
    
    var slogan: String
    
    var location: String
    
    var about: String
    
    var editSkillMode: Bool
    
    func changeEditSkillMode() {
        <#code#>
    }
    
    func getSkills() {
        <#code#>
    }
    
    func deleteSkillButtonTaped() {
        <#code#>
    }
    
    
    
}
