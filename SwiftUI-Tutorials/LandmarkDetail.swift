//
//  ContentView.swift
//  SwiftUI-Tutorials
//
//  Created by Przemyslaw Pajak on 01/04/2020.
//  Copyright © 2020 FEARLESS SPIDER. All rights reserved.
//

import SwiftUI

struct LandmarkDetail: View {
	var landmark: Landmark
	
    var body: some View {
		VStack {
			MapView(coordinate: landmark.locationCoordinate)
                .edgesIgnoringSafeArea(.top)
                .frame(height: 300)

            CircleImage(image: landmark.image(forSize: 250))
                .offset(y: -130)
                .padding(.bottom, -130)

            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)

                HStack(alignment: .top) {
                    Text(landmark.park)
                        .font(.subheadline)
                    Spacer()
                    Text(landmark.state)
                        .font(.subheadline)
                }
			}.padding()
			Spacer()
		}
		.navigationBarTitle(Text(landmark.name), displayMode: .inline)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarkData[0])
    }
}
