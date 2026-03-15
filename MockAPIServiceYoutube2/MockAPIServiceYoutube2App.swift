//
//  MockAPIServiceYoutube2App.swift
//  MockAPIServiceYoutube2
//
//  Created by Yogesh Patel on 2026-03-14.
//

import SwiftUI

@main
struct MockAPIServiceYoutube2App: App {
    
    var service: Services {
        ProcessInfo().isRunningTests ? MockApiService() : APIService()
    }
    
    var body: some Scene {
        WindowGroup {
            UserListView(viewModel: UserViewModel(service: service))
        }
    }
}

extension ProcessInfo {
    var isRunningTests: Bool {
        // This environment variable is set by Xcode when running tests (both Unit and UI tests).
        return environment["XCTestConfigurationFilePath"] != nil
    }
}
