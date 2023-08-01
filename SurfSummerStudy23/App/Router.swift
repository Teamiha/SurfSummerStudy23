//
//  Router.swift
//  SurfSummerStudy23
//
//  Created by Михаил Светлов on 31.07.2023.
//

import UIKit

protocol RouterMain {
    var navigationController: UINavigationController? { get set }
    var assemblyBilder: AssemblyBilderProtocol? { get set }
}

protocol RouterProtocol: RouterMain {
    func showUserProfile()
}


class Router: RouterProtocol {
    
    var navigationController: UINavigationController?
    var assemblyBilder: AssemblyBilderProtocol?
    
    init(navigationController: UINavigationController,
         assemblyBilder: AssemblyBilderProtocol) {
        self.navigationController = navigationController
        self.assemblyBilder = assemblyBilder
    }
    
    func showUserProfile() {
        if let navigationController = navigationController {
            guard let userProfileViewController = assemblyBilder?.createUserProfileViewControllerModule(router: self) else {return}
            navigationController.viewControllers = [userProfileViewController]
        }
    }
    
}


