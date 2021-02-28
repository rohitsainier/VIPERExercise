//
//  DetailRouter.swift
//  VIPERExercise
//
//  Created by Rohit Saini on 28/02/21.
//

import UIKit

protocol DetailRounting {
    
}

struct DetailRouter{
    var view: UIViewController
    init(view: UIViewController){
        self.view = view
    }
}

extension DetailRouter: DetailRounting{
    
}

