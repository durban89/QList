//
//  ContentView.swift
//  QList
//
//  Created by durban.zhang on 2020/7/31.
//  Copyright © 2020 durban.zhang. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            List(landmarkData){ landmark in
                NavigationLink(destination: LandmarkDetail(landmark: landmark)){
                    LandmarkRow(landmark: landmark)
                }
                
            }
        }
        .navigationBarTitle("Landmarks")
    }
}

//struct ContentView: View {
//    @State var name: String = ""
//    @State var keywords: String = ""
//    @State var name1: String = ""
//    @State var name2: String = ""
//
//    var body: some View {
//        HStack{
//            VStack {
//                TextField("Input Your Name", text: $name)
//                List(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
//                    Text("输入框位置")
//                        .edgesIgnoringSafeArea(.top)
//                        .frame(height: 20.0)
//                }
//
//                Spacer()
//            }
//            .frame(width: 200.0)
//
//            Divider()
//
//            VStack {
//                TextField("Input Your Keywords", text: $keywords)
//
//                List(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
//                    Text(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/)
//                        .edgesIgnoringSafeArea(.top)
//                }
//
//                Spacer()
//            }
//            .frame(width: 600.0)
//
//        }
//    }
//}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
