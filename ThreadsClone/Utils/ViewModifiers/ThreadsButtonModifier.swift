//
//  ThreadsButtonModifier.swift
//  ThreadsClone
//
//  Created by Mukthar Amiyan on 23/03/24.
//

import SwiftUI

struct ThreadsButtonModifier : ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .fontWeight(.semibold)
            .foregroundStyle(.white)
            .frame(width: 352,height: 44)
            .background(.black)
            .clipShape(.rect(cornerRadius: 8))
    }
}


extension View {
    func threadsButton() -> some View {
        modifier(ThreadsButtonModifier())
    }
}
