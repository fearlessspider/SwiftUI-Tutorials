//
// Created by Przemyslaw Pajak on 27/08/2020.
// Copyright (c) 2020 FEARLESS SPIDER. All rights reserved.
//

import SwiftUI
import Combine

final class UserData: ObservableObject  {
    @Published var showFavoritesOnly = false
    @Published var landmarks = landmarkData
}