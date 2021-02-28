//
//  HomePresenter.swift
//  VIPERModule
//
//  Created by Rohit Saini on 27/02/21.
//

import Foundation
protocol HomePresentation {
    func viewDidLoad() -> Void
}

struct HomePresenter{
    var view: HomeView
    var interactor: HomeUseCase
    var router: HomeRounting
    init(view:HomeView,interactor: HomeUseCase,router:HomeRounting){
        self.view = view
        self.interactor = interactor
        self.router = router
    }
    
}

extension HomePresenter: HomePresentation{
    func viewDidLoad() {
        interactor.loadUsers{ (status, message, users) in
            if status{
                view.didUsersLoaded(result: users)
            }
            else{
                view.didShowErr(err: message)
            }
        }
    }
}
