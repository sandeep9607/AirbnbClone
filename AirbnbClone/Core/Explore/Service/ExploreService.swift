//
//  ExploreService.swift
//  AirbnbClone
//
//  Created by Sandeep on 18/10/24.
//

import Foundation

class ExploreService {
    func fetchListings() async throws -> [Listing] {
        return DevPreview.shared.listing
    }
}
