//
//  ContentView.swift
//  BetterRest
//
//  Created by Hailey Wong-Budiman on 12/26/24.
//

import SwiftUI
import CoreML

struct ContentView: View {
    static var defaultWakeTime: Date {
      var components = DateComponents()
      components.hour = 7
      components.minute = 0
      return Calendar.current.date(from: components) ?? Date.now
    }
    
    @State private var wakeUp = defaultWakeTime
    @State private var sleepAmount = 8.0
    @State private var coffeeAmount = 1
    
    func calcBedtime() -> String {
        do {
            let config = MLModelConfiguration()
            let model = try SleepCalculator(configuration: config)
            
            let components = Calendar.current.dateComponents([.hour, .minute], from: wakeUp)
            let hour = (components.hour ?? 0) * 60 * 60
            let minute = (components.minute ?? 0) * 60
            
            let prediction = try model.prediction(wake: Double(hour +
            minute), estimatedSleep: sleepAmount, coffee:
            Double(coffeeAmount))
            let sleepTime = wakeUp - prediction.actualSleep
            
            return sleepTime.formatted(date: .omitted, time: .shortened)
        } catch {
            return "Error"
        }
    }
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    DatePicker("Enter a Time", selection: $wakeUp, displayedComponents: .hourAndMinute)
                } header: {
                    Text("When do you want to wake up?")
                        .font(.headline)
                }
                Section {
                    Stepper("\(sleepAmount.formatted()) hours", value:
                                $sleepAmount, in: 4...12, step: 0.25)
                } header: {
                    Text("Desired amount of sleep")
                        .font(.headline)
                }
                Section {
                    Stepper(coffeeAmount == 1 ? "1 cup" : "\(coffeeAmount) cups",
                            value: $coffeeAmount, in: 1...20)
                } header: {
                    Text("Daily Coffee Intake")
                        .font(.headline)
                }
                Section {
                    Text(calcBedtime())
                } header: {
                    Text("Your Best Bedtime")
                        .font(.headline)
                }
            }
                .navigationTitle("BetterRest")
        }
    }
}



#Preview {
    ContentView()
}
