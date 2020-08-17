//
//  LandmarkList.swift
//  QList
//
//  Created by durban.zhang on 2020/8/10.
//  Copyright © 2020 durban.zhang. All rights reserved.
//

import SwiftUI

#if os(macOS)
extension View {
    func navigationBarTitle(_ title: String) -> some View {
        self
    }
}
#endif

struct LandmarkList: View {
    @State var showFavoriteOnly = false
    
    var body: some View {
        NavigationView{
            List{
                ForEach (landmarkData){ landmark in
                    if !self.showFavoriteOnly || landmark.isFavorite {
                        NavigationLink(destination: LandmarkDetail(landmark: landmark)){
                            LandmarkRow(landmark: landmark)
                        }
                    }
                    
                }
            }
        }
        .navigationBarTitle("Landmarks")
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE", "iPhone XS MX"], id: \.self) { deviceName in
            LandmarkList()
            .previewDevice(PreviewDevice(rawValue: deviceName))
            .previewDisplayName(deviceName)
        }
    }
}
