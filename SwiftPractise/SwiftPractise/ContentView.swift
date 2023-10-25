//
//  ContentView.swift
//  SwiftPractise
//
//  Created by Shahin Noor on 25/10/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var isComplete: Bool = false
    @State var currentAmount: CGFloat = 0
    
    var body: some View {
        Text(isComplete ? "Completed" : "Not completed")
            .padding(.horizontal)
            .frame(width:300, height: 300)
            .background(isComplete ? Color.green : Color.gray)
            .cornerRadius(10)
//            .onTapGesture {
//                isComplete.toggle()
//            }
//            .onLongPressGesture(minimumDuration: 5) {
//                isComplete.toggle()
//            }
            .scaleEffect(1+currentAmount)
            .gesture(MagnificationGesture()
                .onChanged{ value in
                    currentAmount = value - 1
                }
                .onEnded{ value in
                    withAnimation(.spring()){
                        currentAmount = 0
                    }
                }
            )
        
    }
}

#Preview {
    ContentView()
}
