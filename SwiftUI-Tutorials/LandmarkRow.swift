//
//  LandmarkRow.swift
//  SwiftUI-Tutorials
//
//  Created by Przemyslaw Pajak on 16/08/2020.
//  Copyright © 2020 FEARLESS SPIDER. All rights reserved.
//

import SwiftUI

struct LandmarkRow: View {
	var landmark: Landmark
	
    var body: some View {
		HStack {
			landmark.image(forSize: 50)
            Text(landmark.name)
            Spacer()
		}
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LandmarkRow(landmark: landmarkData[0])
                .previewLayout(.fixed(width: 300, height: 70))
            LandmarkRow(landmark: landmarkData[1])
                .previewLayout(.fixed(width: 300, height: 70))
        }
    }
}