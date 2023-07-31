//
//  ModuleBilder.swift
//  SurfSummerStudy23
//
//  Created by Михаил Светлов on 31.07.2023.
//

import UIKit

protocol AssemblyBilderProtocol {
    
    func createModule1(router: RouterProtocol) -> UIViewController
    func createModule2(cityName: String?, router: RouterProtocol) -> UIViewController
}


class ModuleBuilder: AssemblyBilderProtocol {
    
    func createModule1(router: RouterProtocol) -> UIViewController {
        
        return view
    }
    
    func createModule2(router: RouterProtocol) -> UIViewController {
        
        return view
    }
}


