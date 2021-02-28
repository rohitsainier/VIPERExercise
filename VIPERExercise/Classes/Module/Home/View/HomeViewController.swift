//
//  ViewController.swift
//  VIPERModule
//
//  Created by Rohit Saini on 27/02/21.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    var presenter: HomePresentation!
    private var usersArr: [User] = [User]()
    override func viewDidLoad() {
        super.viewDidLoad()
        configUI()
        presenter.viewDidLoad()
        
    }
    
    private func configUI(){
        self.title = "Home"
        tableView.register(UINib(nibName: "HomeCell", bundle: nil), forCellReuseIdentifier: "HomeCell")
    }
}

extension HomeViewController: UITableViewDelegate,UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 130
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return usersArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "HomeCell") as? HomeCell else {return UITableViewCell()}
        cell.configureCell(user: usersArr[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}

extension HomeViewController: HomeView {
    func didShowErr(err: String) {
        //Show Error 
    }
    func didUsersLoaded(result: [User]) {
        usersArr = result
        DispatchQueue.main.async { [weak self] in
            guard let `self` = self else{return}
            self.tableView.reloadData()
        }
    }
}
