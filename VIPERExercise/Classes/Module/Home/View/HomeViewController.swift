//
//  ViewController.swift
//  VIPERModule
//
//  Created by Rohit Saini on 27/02/21.
//

import UIKit

class HomeViewController: UIViewController {
    
    var presenter: HomePresentation!
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.viewDidLoad()
    }
}

extension HomeViewController: HomeView {
    func didShowErr(err: String) {
        print(err)
    }
    func didUsersLoaded(result: [User]) {
        print(result)
    }
}
