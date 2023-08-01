//
//  SceneDelegate.swift
//  SurfSummerStudy23
//
//  Created by Михаил Светлов on 31.07.2023.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        window?.windowScene = windowScene
        let navigationController = UINavigationController()
        let assemblyBilder = ModuleBuilder()
        let router = Router(navigationController: navigationController, assemblyBilder: assemblyBilder)
        router.showUserProfile()
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
    }
}
