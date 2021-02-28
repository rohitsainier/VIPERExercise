//
//  DetailInteractor.swift
//  VIPERExercise
//
//  Created by Rohit Saini on 28/02/21.
//

import Foundation


protocol DetailUseCase {
    
}
struct DetailInteractor{
    let session:URLSession
    init(session: URLSession){
        self.session = session
    }
}

extension DetailInteractor:DetailUseCase{
    
}
