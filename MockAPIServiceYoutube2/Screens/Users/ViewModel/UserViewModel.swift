//
//  UserViewModel.swift
//  MockAPIServiceYoutube2
//
//  Created by Yogesh Patel on 2026-03-14.
//

import Foundation

final class UserViewModel: ObservableObject {
    @Published private(set) var users: [UserModel] = []
    private let service: Services
    var isError: Bool = false
    
    init(service: Services = APIService()) {
        self.service = service
    }
    
    @MainActor
    func fetchUsers() async {
        do {
            users = try await service.request(type: UserEndPoint.fetchUsers)
            isError = false
        }catch {
            print(String(describing: error))
            isError = true
        }
    }
}
