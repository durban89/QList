//
//  LandmarkDetail.swift
//  QList
//
//  Created by durban.zhang on 2020/8/10.
//  Copyright © 2020 durban.zhang. All rights reserved.
//

import SwiftUI

struct LandmarkDetail: View {
    @EnvironmentObject var userData: UserData
    
    var landmark: Landmark
    
    var landmarkIndex: Int {
        userData.landmark.firstIndex(where: { $0.id == landmark.id })!
    }
    
    
    var body: some View {
        VStack {
            MapView(coordinate: landmark.locationCoordinate)
                .edgesIgnoringSafeArea(.top)
                .frame(height: 300)
            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            VStack(alignment: .leading){
                HStack{
                    Text(landmark.name)
                    .font(.title)
                    
                    Button(action: {
                        self.userData.landmark[self.landmarkIndex].isFavorite.toggle()
                    }){
                        if self.userData.landmark[self.landmarkIndex].isFavorite {
                            Text("On").foregroundColor(Color.yellow)
                        } else {
                            Text("Off").foregroundColor(Color.gray)
                        }
                    }
                }
                
                HStack{
                    Text(landmark.park)
                        .font(.subheadline)
                    Spacer()
                    Text(landmark.state)
                        .font(.subheadline)
                }
            }
            .padding()
            
            Spacer()
        }
        .navigationBarTitle(landmark.name)
    }
}


struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarkData[0])
    }
}
