//
//  ExpenseTrackerApp.swift
//  ExpenseTracker
//
//  Created by ivan trj  on 29.11.23.
//

import SwiftUI

@main
struct ExpenseTrackerApp: App {
    @StateObject private var dataController = DataController()
    
    var body: some Scene {
        WindowGroup {
            MainView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
