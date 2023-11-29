//
//  DataController.swift
//  ExpenseTracker
//
//  Created by ivan trj  on 29.11.23.
//

import Foundation
import CoreData

class DataController: ObservableObject {
    let container = NSPersistentContainer(name: "ExpenseTracker")
    
    init() {
        container.loadPersistentStores { decription, error in
            if let error = error {
                print("failed to load data in data controller \(error.localizedDescription)")
            }
        }
    }
}
