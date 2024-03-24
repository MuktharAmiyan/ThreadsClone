//
//  ThreadsTextFieldModifier.swift
//  ThreadsClone
//
//  Created by Mukthar Amiyan on 23/03/24.
//


import SwiftUI


struct ThreadsTextFieldModifier : ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .padding(12)
            .background(Color(.systemGray6))
            .clipShape(.rect(cornerRadius: 10))
            .padding(.horizontal,24)
    }
}


extension View {
    func threadsTextField() -> some View {
        modifier(ThreadsTextFieldModifier())
    }
}
