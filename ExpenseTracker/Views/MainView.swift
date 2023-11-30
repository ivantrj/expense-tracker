//
//  ContentView.swift
//  ExpenseTracker
//
//  Created by ivan trj  on 29.11.23.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            ExpenseView()
                .tabItem {
                    Image(systemName: "dollarsign")
                    Text("Expenses")
            }
            
            AddExpenseView()
                .tabItem {
                    Image(systemName: "plus")
                    Text("Add expense")
                }
            
            SettingsView()
                .tabItem {
                    Image(systemName: "gear")
                    Text("Settings")
                }
        }
    }
}

#Preview {
    MainView()
}
