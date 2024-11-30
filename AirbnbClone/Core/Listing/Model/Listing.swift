//
//  Listing.swift
//  AirbnbClone
//
//  Created by Sandeep on 18/10/24.
//

import Foundation
import SwiftUI

struct Listing: Identifiable, Codable, Hashable {
    let id: String
    let ownerUid: String
    let ownerName: String
    let ownerImageUrl: String
    let numberOfBedrooms: Int
    let numberOfBathrooms: Int
    let numberOfGuests: Int
    let numberOfBeds: Int
    var pricePerNight: Int
    let latitude: Double
    let longitude: Double
    let imageURLs: [String]
    let address: String
    let city: String
    let state: String
    let title: String
    var rating: Double
    var features: [ListingFeatures]
    var amanities: [ListingAmenities]
    var type: ListingType
}

enum ListingFeatures: Int, Codable, Identifiable, Hashable {
    case selfCheckIn
    case superHost
    
    var imageName: String{
        switch self{
        case .selfCheckIn: return "door.left.hand.open"
        case .superHost: return "medal"
        }
    }
    
    var title: String{
        switch self {
        case .selfCheckIn: return "Self Check-in"
        case .superHost: return "Superhost"
        }
    }
    
    var subtitle: String{
        switch self {
        case .selfCheckIn:
            return "Check youself in with the "
        case .superHost:
            return "Superhost abc .sdf gdsfg dfsg"
        }
    }
    
    var id: Int { return self.rawValue }
}

enum ListingAmenities: Int, Codable, Identifiable, Hashable{
    case pool
    case kitchen
    case wifi
    case laundry
    case tv
    case alarmSystem
    case office
    case balcony
    
    var title: String {
        switch self {
        case .pool: return "Pool"
        case .kitchen: return "Kitchen"
        case .wifi: return "Wifi"
        case .laundry: return "Laundy"
        case .tv: return "TV"
        case .alarmSystem: return "Alarm"
        case .office: return "Office"
        case .balcony: return "Balcony"
        }
    }
    
    var imageName: String{
        switch self {
        case .pool: return "figure.pool.swim"
        case .kitchen: return "fork.knife"
        case .wifi: return "wifi"
        case .laundry: return "washer"
        case .tv: return "tv"
        case .alarmSystem: return "checkerboard.shield"
        case .office: return "pencil.and.ruler.fill"
        case .balcony: return "building"
        }
    }
    
    var id: Int { return self.rawValue }
}

enum ListingType: Int, Codable, Identifiable, Hashable {
    case apartment
    case house
    case townHouse
    case villa
    
    var description: String{
        switch self {
        case .apartment: return "Apartment"
        case .house: return "House"
        case .townHouse: return "Town Home"
        case .villa: return "Villa"
        }
    }
    
    var id: Int { return self.rawValue }
}
