//
//  DevPreview.swift
//  AirbnbClone
//
//  Created by Sandeep on 18/10/24.
//

import Foundation

class DevPreview {
    static let shared = DevPreview()
    
    var listing: [Listing] = [
        .init(id: UUID().uuidString,
              ownerUid: UUID().uuidString,
              ownerName: "John smith",
              ownerImageUrl: "male-profile-photo",
              numberOfBedrooms: 4,
              numberOfBathrooms: 3,
              numberOfGuests: 4,
              numberOfBeds: 4,
              pricePerNight: 567,
              latitude: 25.7850,
              longitude: -80.1936,
              imageURLs: ["listing-2","listing-1","listing-3","listing-4"],
              address: "124 Main St",
              city: "Los Angels",
              state: "Florida",
              title: "",
              rating: 4.86,
              features: [.selfCheckIn, .superHost],
              amanities: [.wifi, .alarmSystem, .balcony, .laundry, .tv],
              type: .villa
             ),
        .init(id: UUID().uuidString,
              ownerUid: UUID().uuidString,
              ownerName: "John smith",
              ownerImageUrl: "male-profile-photo",
              numberOfBedrooms: 4,
              numberOfBathrooms: 3,
              numberOfGuests: 4,
              numberOfBeds: 4,
              pricePerNight: 567,
              latitude: 25.7850,
              longitude: -80.1936,
              imageURLs: ["listing-2","listing-1","listing-3","listing-4"],
              address: "124 Main St",
              city: "Los Angels",
              state: "Florida",
              title: "",
              rating: 4.86,
              features: [.selfCheckIn, .superHost],
              amanities: [.wifi, .alarmSystem, .balcony, .laundry, .tv],
              type: .villa
             ),
        .init(id: UUID().uuidString,
              ownerUid: UUID().uuidString,
              ownerName: "John Sina",
              ownerImageUrl: "male-profile-photo",
              numberOfBedrooms: 4,
              numberOfBathrooms: 3,
              numberOfGuests: 4,
              numberOfBeds: 4,
              pricePerNight: 567,
              latitude: 25.7850,
              longitude: -80.1936,
              imageURLs: ["listing-2","listing-1","listing-3","listing-4"],
              address: "124 Main St",
              city: "Miami",
              state: "Florida",
              title: "",
              rating: 4.86,
              features: [.selfCheckIn, .superHost],
              amanities: [.wifi, .alarmSystem, .balcony, .laundry, .tv],
              type: .villa
             ),
    ]
}
