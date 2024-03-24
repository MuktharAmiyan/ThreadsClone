//
//  ThreadsTabView.swift
//  ThreadsClone
//
//  Created by Mukthar Amiyan on 23/03/24.
//

import SwiftUI

struct ThreadsTabView: View {
    @State private var selectedTab = 0
    @State private var showCreateThreadView = false
    var body: some View {
        TabView(selection: $selectedTab) {
            FeedView()
                .tabItem {
                    Image(systemName:"house")
                        .environment(\.symbolVariants, selectedTab == 0 ? .fill : .none )
                }.tag(0)
            
            ExploreView()
                .tabItem {
                    Image(systemName:"magnifyingglass")
                }.tag(1)
            
            Spacer()
                .tabItem {
                    Image(systemName:"plus")
                }.tag(2)
            
            ActivityView()
                .tabItem {
                    Image(systemName:"heart")
                        .environment(\.symbolVariants, selectedTab == 3 ? .fill : .none )
                }.tag(3)
            
            ProfileView()
                .tabItem {
                    Image(systemName:"person")
                        .environment(\.symbolVariants, selectedTab == 4 ? .fill : .none )
                }.tag(4)
        }
        .onChange(of: selectedTab) {
            showCreateThreadView = selectedTab == 2
        }
        .sheet(isPresented: $showCreateThreadView , onDismiss: {
            selectedTab = 0
        }){
            ThreadCreationView()
        }
        .tint(.black)
    }
}

#Preview {
    ThreadsTabView()
}
