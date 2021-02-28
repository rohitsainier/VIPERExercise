//
//  DetailPresenter.swift
//  VIPERExercise
//
//  Created by Rohit Saini on 28/02/21.
//

import Foundation
protocol DetailPresentation {
    
}

struct DetailPresenter{
    var view: DetailView
    var interactor: DetailUseCase
    var router: DetailRounting
    init(view:DetailView,interactor: DetailUseCase,router:DetailRounting){
        self.view = view
        self.interactor = interactor
        self.router = router
    }
    
}

extension DetailPresenter: DetailPresentation{
    
}
