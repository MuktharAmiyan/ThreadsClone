//
//  FeedView.swift
//  ThreadsClone
//
//  Created by Mukthar Amiyan on 23/03/24.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        NavigationStack {
            ScrollView  {
                LazyVStack {
                    ForEach (0...10,id:\.self){ thread in
                        ThreadCell()
                    }
                }
            }
            .refreshable {
                print("DEBUG: Refresh thread")
            }
            .scrollIndicators(.hidden)
            .navigationTitle("Threads")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement:.topBarTrailing) {
                    Button {
                        
                    } label : {
                        Image(systemName:"arrow.counterclockwise")
                            .foregroundStyle(.black)
                    }
                }
            }
        }   
    }
}

#Preview {
    NavigationStack {
        FeedView()
    }
}
