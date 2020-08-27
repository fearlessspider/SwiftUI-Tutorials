//
//  LandmarkList.swift
//  SwiftUI-Tutorials
//
//  Created by Przemyslaw Pajak on 16/08/2020.
//  Copyright © 2020 FEARLESS SPIDER. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject var userData: UserData

    var body: some View {
		NavigationView {
			List(landmarkData) { landmark in
                Toggle(isOn: self.$userData.showFavoritesOnly) {
                    Text("Favorites only")
                }

                ForEach(self.userData.landmarks) { landmark in
                    if !self.userData.showFavoritesOnly || landmark.isFavorite {
                        NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                            LandmarkRow(landmark: landmark)
                        }
                    }
                }
			}
			.navigationBarTitle(Text("Landmarks"))
		}
	}
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE", "iPhone XS Max"], id: \.self) { deviceName in
            LandmarkList()
                    .environmentObject(UserData())
                .previewDevice(PreviewDevice(rawValue: deviceName))
        }
    }
}
