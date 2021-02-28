//
//  HomeInteractor.swift
//  VIPERModule
//
//  Created by Rohit Saini on 27/02/21.
//

import UIKit

typealias responseHandler = (_ success: Bool,_ message:String,_ response: [User]) -> Void

protocol HomeUseCase {
    func loadUsers(completion: @escaping (responseHandler)) -> Void
}
struct HomeInteractor: HomeUseCase{
    let session:URLSession
    init(session: URLSession){
        self.session = session
    }
}

extension HomeInteractor{
    func loadUsers(completion: @escaping (responseHandler)) {
        session.request(.users, using: Void()) { (result) in
            switch result{
            case .success(let response):
                print(response)
                completion(true, "Users fetched successfully", response)
            case .failure(let err):
                print(err)
                completion(false, err.localizedDescription, [])
            }
        }
    }
}
