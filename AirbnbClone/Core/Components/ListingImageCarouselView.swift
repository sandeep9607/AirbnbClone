//
//  ListingImageCarouselView.swift
//  AirbnbClone
//
//  Created by Sandeep on 10/10/24.
//

import SwiftUI

struct ListingImageCarouselView: View {
    let listing: Listing

    var body: some View {
            TabView{
                ForEach(listing.imageURLs, id: \.self){ image in
                    Image(image)
                        .resizable()
                        .scaledToFill()
                }
            }
            .tabViewStyle(.page)
        
    }
}

#Preview {
    ListingImageCarouselView(listing: DevPreview.shared.listing[0])
}
