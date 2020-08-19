//
//  UserData.swift
//  QList
//
//  Created by durban.zhang on 2020/8/19.
//  Copyright © 2020 durban.zhang. All rights reserved.
//

import SwiftUI
import Combine

final class UserData: ObservableObject {
    @Published var showFavoritesOnly = false
    @Published var landmark = landmarkData
    
    
}
