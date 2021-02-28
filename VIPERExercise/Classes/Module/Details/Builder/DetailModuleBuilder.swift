//
//  DetailModuleBuilder.swift
//  VIPERExercise
//
//  Created by Rohit Saini on 28/02/21.
//

import UIKit


struct DetailsModuleBuilder{
    static func build() -> UIViewController{
        let mainstory = Storyboard.Main.load
        let view = mainstory.instantiateViewController(withIdentifier: "DetailsViewController") as! DetailsViewController
        view.title = "Details"
        let interactor = DetailInteractor(session: .shared)
        let router = DetailRouter(view: view)
        let presenter = DetailPresenter(view: view, interactor: interactor, router: router)
        view.presenter = presenter
        return view
    }
}
