//
//  APICaller.swift
//  PaginationTableFirst
//
//  Created by Leonid Safronov on 11.05.2022.
//

import Foundation

class APICaller {
    var isPaginating = false

    func fetchData(pagination: Bool = false, completion: @escaping (Result<[String], Error>) -> Void) {
        if pagination {
            isPaginating = true
        }
        DispatchQueue.global().asyncAfter(deadline: .now() + (pagination ? 3 : 2)) {
            let originalData = [
            "Apple",
            "Google",
            "FaceBook",
            "Apple",
            "Google",
            "FaceBook",
            "Apple",
            "Google",
            "FaceBook",
            "Apple",
            "Google",
            "FaceBook",
            "Apple",
            "Google",
            "FaceBook",
            "Apple",
            "Google",
            "FaceBook",
            "Apple",
            "Google",
            "FaceBook",
            "Apple",
            "Google",
            "FaceBook"
            ]
            let newData = [
            "banana", "oranges", "grapes", "food"
            ]
            completion(.success(pagination ? newData : originalData))
            if pagination {
                self.isPaginating = false
            }
        }
    }
}
