//
//  HomeModuleBuilder.swift
//  VIPERModule
//
//  Created by Rohit Saini on 27/02/21.
//

import UIKit

struct HomeModuleBuilder{
    static func build(usingNavigationFactory factory: NavigationFactory) -> UINavigationController{
        let mainstory = Storyboard.Main.load
        let view = mainstory.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
        let interactor = HomeInteractor(session: .shared)
        let router = HomeRouter(view: view)
        let presenter = HomePresenter(view: view, interactor: interactor, router: router)
        view.presenter = presenter
        return factory(view)
    }
}
