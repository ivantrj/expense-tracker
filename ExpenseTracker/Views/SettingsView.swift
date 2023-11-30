//
//  SettingsView.swift
//  ExpenseTracker
//
//  Created by ivan trj  on 29.11.23.
//

import SwiftUI

struct SettingsView: View {
    @AppStorage("darkMode") var isDarkMode = false
    
    var body: some View {
        NavigationStack {
            Form {
                Section("Appearance") {
                    Toggle("Dark Mode", isOn: $isDarkMode)
                }
                
                Section("About") {
                    Text("This app helps you manage your expenses.")
                }
            }
            .navigationTitle("Settings")
            .preferredColorScheme(isDarkMode ? .dark : .light)
        }
    }
}

#Preview {
    SettingsView()
}
