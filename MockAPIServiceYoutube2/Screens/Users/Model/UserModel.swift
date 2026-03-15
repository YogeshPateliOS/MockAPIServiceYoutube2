//
//  UserModel.swift
//  MockAPIServiceYoutube2
//
//  Created by Yogesh Patel on 2026-03-14.
//

import Foundation

struct UserModel: Codable, Identifiable {
    let id: Int
    let name, email: String
    
    var imageName: String {
        guard !name.isEmpty, let chr = name.first?.lowercased() else {
            return "person.circle.fill"
        }
        return "\(chr).circle.fill"
    }
}
