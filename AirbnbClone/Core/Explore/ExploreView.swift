//
//  ExploreView.swift
//  AirbnbClone
//
//  Created by Sandeep on 07/10/24.
//

import SwiftUI


struct ExploreView: View {
    @State private var showDestinationSearchView = false
    @StateObject var viewModel = ExploreViewModel(service: ExploreService())
    
    var body: some View {
        NavigationStack {
            if showDestinationSearchView{
                DestinationSearchView(show: $showDestinationSearchView, viewModel: viewModel)
//                    .environmentObject(viewModel)
            }else{
                ScrollView {
                    SearchAndFilterBar()
                        .onTapGesture {
                            withAnimation(.snappy) {
                                showDestinationSearchView.toggle()
                            }
                        }
                    LazyVStack(spacing: 30){
                        ForEach(viewModel.listings) { listing in
                            NavigationLink(value: listing) {
                                ListingItemView(listing: listing)
                                    .frame(height: 410)
                                    .clipShape(RoundedRectangle(cornerRadius: 10))
                            }
                        }
                    }
                    .padding()
                }
                .
                navigationDestination(for: Listing.self) { listing in
                    ListingDetailView(listing: listing)
                        .toolbarVisibility(.hidden, for: .navigationBar)
                }
            }
        }
        .task {
            await viewModel.fetchListings()
        }
    }
}

#Preview {
    ExploreView()
}
