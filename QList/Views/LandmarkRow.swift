//
//  LandmarkRow.swift
//  QList
//
//  Created by durban.zhang on 2020/8/12.
//  Copyright © 2020 durban.zhang. All rights reserved.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
            if landmark.isFavorite {
                Text("favorite")
            }
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LandmarkRow(landmark: landmarkData[0])
            LandmarkRow(landmark: landmarkData[1])
            
        }.previewLayout(.fixed(width: 300, height: 70))
    }
}
