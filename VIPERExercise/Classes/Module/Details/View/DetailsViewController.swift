//
//  DetailsViewController.swift
//  VIPERExercise
//
//  Created by Rohit Saini on 28/02/21.
//

import UIKit

class DetailsViewController: UIViewController {

    var presenter: DetailPresentation!
    var user: User? = nil
    override func viewDidLoad() {
        super.viewDidLoad()
        configUI()
        // Do any additional setup after loading the view.
    }
    
    private func configUI(){
        print(user)
    }
}

extension DetailsViewController:DetailView{
    
}
