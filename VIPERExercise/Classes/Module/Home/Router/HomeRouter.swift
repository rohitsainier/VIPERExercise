//
//  HomeRouter.swift
//  VIPERModule
//
//  Created by Rohit Saini on 27/02/21.
//

import UIKit

protocol HomeRounting {
    
}

struct HomeRouter{
    var viewController: UIViewController
    init(view: UIViewController){
        self.viewController = view
    }
}

extension HomeRouter: HomeRounting{
    
}
