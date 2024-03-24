//
//  ExploreView.swift
//  ThreadsClone
//
//  Created by Mukthar Amiyan on 23/03/24.
//

import SwiftUI

struct ExploreView: View {
    
    @State private var searchText = ""
    
    
    
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack  {
                    ForEach(1...10, id: \.self) { count in
                        VStack {
                            UserCell()

                            Divider()
                        }
                        .padding(.vertical,4)
                    }
                }
            }
            .navigationTitle("Search")
            .searchable(text: $searchText , prompt: "Search")
        }
    }
}

#Preview {
    ExploreView()
}
