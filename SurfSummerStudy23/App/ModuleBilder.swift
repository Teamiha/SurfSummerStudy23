//
//  ModuleBilder.swift
//  SurfSummerStudy23
//
//  Created by Михаил Светлов on 31.07.2023.
//

import UIKit

protocol AssemblyBilderProtocol {
    
    func createUserProfileViewControllerModule(router: RouterProtocol) -> UIViewController
    
}


class ModuleBuilder: AssemblyBilderProtocol {
    
    func createUserProfileViewControllerModule(router: RouterProtocol) -> UIViewController {
        let view = UserProfileViewController()
        let presenter = UserProfilePresenter(view: view, router: router)
        view.presenter = presenter
        return view
    }
    
   
}


