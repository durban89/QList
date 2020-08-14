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
    var body: some View {
        NavigationView{
            List(landmarkData){ landmark in
                NavigationLink(destination: LandmarkDetail()){
                    LandmarkRow(landmark: landmark)
                }
                
            }
        }
        .navigationBarTitle("Landmarks")
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
