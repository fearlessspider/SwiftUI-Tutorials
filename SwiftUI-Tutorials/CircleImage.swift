//
//  CircleImage.swift
//  SwiftUI-Tutorials
//
//  Created by Przemyslaw Pajak on 01/04/2020.
//  Copyright © 2020 FEARLESS SPIDER. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
		Image("Image")
			.frame(width: 200.0)
		.clipShape(Circle())
			.overlay(Circle().stroke(Color.white, lineWidth: 4))
			.shadow(radius: 10)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
