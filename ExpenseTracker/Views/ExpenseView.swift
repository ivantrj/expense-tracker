//
//  ExpenseView.swift
//  ExpenseTracker
//
//  Created by ivan trj  on 29.11.23.
//

import SwiftUI

struct ExpenseView: View {
    @FetchRequest(sortDescriptors: [SortDescriptor(\.date, order: .reverse)]) var expenses: FetchedResults<Expense>
    
    var body: some View {
        NavigationStack {
            VStack {
                ScrollView(.vertical, showsIndicators: true) {
                    VStack {
                        HStack {
                            Text("Welcome")
                                .font(.title)
                            
                            Spacer()
                        }
                        
                        ForEach(expenses) { expense in
                            NavigationLink(destination: EditExpenseView(expense: expense)) {
                                ExpenseDetail(amount: String(expense.amount), date: expense.date!, name: expense.name!, type: expense.type ?? "Transportation")
                            }
                        }
                    }
                }
            }
            .padding()
            .navigationTitle("Expenses")
        }
    }
}

#Preview {
    ExpenseView()
}
