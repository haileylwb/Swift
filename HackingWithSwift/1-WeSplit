//
//  ContentView.swift
//  WeSplit
//
//  Created by Hailey Wong-Budiman on 12/24/24.
//

import SwiftUI

struct ContentView: View {
    @State private var checkAmount = 0.0
    @State private var numPeople = 2
    @State private var tipPercent = 20
    @FocusState private var amountIsFocused: Bool

    
    let tipPercentages = [10, 15, 18, 20, 0]
    
    var totalPerPerson: Double {
        let peopleCount = Double(numPeople + 2)
        let tipSelection = Double(tipPercent)
        let tipVal = checkAmount / 100 * tipSelection
        let grandTotal = checkAmount + tipVal
        let amountPerPerson = grandTotal / peopleCount
        return amountPerPerson
    }
    
    var totalAmount: Double {
        let tipSelection = Double(tipPercent)
        let tipVal = checkAmount / 100 * tipSelection
        let grandTotal = checkAmount + tipVal
        return grandTotal
    }
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Amount", value: $checkAmount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                        .keyboardType(.decimalPad)
                        .focused($amountIsFocused)
                    
                    Picker("Number of People: ", selection: $numPeople) {
                        ForEach(2 ..< 100) {
                            Text("\($0) people")
                        }
                    }
                }
                
                Section {
                    Picker("Tip percentage", selection: $tipPercent) {
                        ForEach(tipPercentages, id: \.self) {
                            Text($0, format: .percent)
                        }
                    }
                    .pickerStyle(.segmented)
                } header: {
                    Text("How much would you like to tip?")
                }
                
                Section {
                    Text(totalPerPerson, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                } header: {
                    Text("Amount per Person")
                }
                
                Section {
                    Text(totalAmount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                } header: {
                    Text("Total Amount")
                }
                
                .navigationTitle("WeSplit")
                .toolbar {
                    ToolbarItemGroup(placement: .keyboard){
                        Spacer()
                        Button("Done") {
                            amountIsFocused = false
                        }
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
