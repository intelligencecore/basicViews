//
//  diagnostics.swift
//  swiftCourseraProject
//
//  Created by Richie on 8/17/25.
//
import SwiftUI


//🔑 Rule of Thumb
//    •    UI description → goes inside body.
//    •    Logic (loops, calculations, data handling) → goes in functions, models, or event handlers like .onAppear or inside a Button’s action.

//
//Focus on Patterns
//
//You don’t need to memorize everything—just learn the patterns:
//    •    ForEach for loops in UI.
//    •    if statements for conditions.
//    •    functions for reusable logic.
//
                        
                        

struct Diagnostics: View {
    @State private var progress: Int = 0
    private let total: Int = 10

    var body: some View {
        VStack(spacing: 16) {
            Text("Hang on!")
                .font(.headline)

            // Progress bar showing current progress out of total
            ProgressView(value: Double(progress), total: Double(total))
                .padding(.horizontal)

            HStack(spacing: 12) {
                Button("Start Count Up") {
                    progress = 0
                    // Increment progress 0 -> 10 over time
                    Timer.scheduledTimer(withTimeInterval: 0.4, repeats: true) { t in
                        if progress < total {
                            progress += 1
                        } else {
                            t.invalidate()
                        }
                    }
                }

                Button("Reset") { progress = 0 }
            }
        }
        .padding()
    }
}

    
#Preview {
    Diagnostics()
}
