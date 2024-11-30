//
//  MainTabView.swift
//  AirbnbClone
//
//  Created by Sandeep on 17/10/24.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            Tab("Explore",systemImage: "magnifyingglass"){
                ExploreView()
            }
            
            Tab("Whishlist",systemImage: "heart"){
                WishlistView()
            }
            
            Tab("Profile", systemImage: "person"){
                ProfileView()
            }
        }
    }
}

#Preview {
    MainTabView()
}
