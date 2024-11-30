//
//  ExploreViewModel.swift
//  AirbnbClone
//
//  Created by Sandeep on 18/10/24.
//

import Foundation

class ExploreViewModel: ObservableObject {
    @Published var listings = [Listing]()
    @Published var listingsCopy = [Listing]()
    @Published var searchLocation = ""
    private let service: ExploreService
    
    init(service: ExploreService)  {
        self.service = service
    }
    
    func fetchListings() async {
        do{
            self.listings = try await service.fetchListings()
            listingsCopy = self.listings
        }catch{
            print("DEBUG: Filed to fetch listing with error: \(error.localizedDescription)")
        }
    }
    
    func updateListingForLocation(){
        let filteredListing = listings.filter({
            $0.city.lowercased() == searchLocation.lowercased() ||
            $0.state.lowercased() == searchLocation.lowercased()
        })
        
        self.listings = filteredListing.isEmpty ? listingsCopy : filteredListing
    }
}
