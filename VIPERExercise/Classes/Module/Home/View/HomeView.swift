//
//  HomeView.swift
//  VIPERModule
//
//  Created by Rohit Saini on 27/02/21.
//

protocol HomeView {
    func didUsersLoaded(result: [User])
    func didShowErr(err: String)
}
