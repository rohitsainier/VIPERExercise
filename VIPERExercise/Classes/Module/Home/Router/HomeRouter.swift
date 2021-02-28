//
//  HomeRouter.swift
//  VIPERModule
//
//  Created by Rohit Saini on 27/02/21.
//

import UIKit

protocol HomeRounting {
    func naviagateToDetail(user:User)
}

struct HomeRouter{
    var view: UIViewController
    init(view: UIViewController){
        self.view = view
    }
}

extension HomeRouter: HomeRounting{
    func naviagateToDetail(user: User) {
        let DestinationVC: DetailsViewController = Storyboard.Main.load.instantiateViewController(withIdentifier: "DetailsViewController") as! DetailsViewController
        DestinationVC.user = user
        self.view.navigationController?.pushViewController(DestinationVC, animated: true)
    }
}
