//
//  ListingItemView.swift
//  AirbnbClone
//
//  Created by Sandeep on 07/10/24.
//

import SwiftUI

struct ListingItemView: View {
    let listing: Listing

    var body: some View {
        VStack(spacing: 8) {
            //images
            ListingImageCarouselView(listing: listing)
                .frame(height: 320)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            //details
            HStack(alignment: .top) {
                //details
                VStack(alignment: .leading) {
                    Text(listing.state)
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)
                    Text("12 mi away")
                        .foregroundStyle(Color.gray)
                    Text("Nov 3 - 10")
                        .foregroundStyle(Color.gray)
                    HStack {
                        Text("$\(listing.pricePerNight)")
                            .fontWeight(.semibold)
                        Text("night")
                    }
                    .foregroundStyle(.black)
                }
                Spacer()
                //raiting
                HStack(spacing: 2) {
                    Image(systemName: "star.fill")
                    Text("\(listing.rating)")
                }
                .foregroundStyle(.black)
            }
            .font(.footnote)
        }
    }
}

#Preview {
    ListingItemView(listing: DevPreview.shared.listing[0])
}
