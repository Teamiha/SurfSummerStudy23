//
//  Router.swift
//  SurfSummerStudy23
//
//  Created by Михаил Светлов on 31.07.2023.
//

import Foundation

protocol RouterMain {
    var navigationController: UINavigationController? { get set }
    var assemblyBilder: AssemblyBilderProtocol? { get set }
}

protocol RouterProtocol: RouterMain {
    
}


class Router: RouterProtocol {
    
    var navigationController: UINavigationController?
    var assemblyBilder: AssemblyBilderProtocol?
    
    init(navigationController: UINavigationController, assemblyBilder: AssemblyBilderProtocol) {
        self.navigationController = navigationController
        self.assemblyBilder = assemblyBilder
    }
    
    func foo() {
       
    }
    
    func boo() {
       
        }
    }
}


