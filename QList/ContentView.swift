//
//  ContentView.swift
//  QList
//
//  Created by durban.zhang on 2020/7/31.
//  Copyright © 2020 durban.zhang. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var name: String = ""
    
    
    var body: some View {
        HStack(alignment: .top){
            VStack(alignment: .leading){
                HStack(){
                    Text("图标箱 ->")
                        .multilineTextAlignment(.leading)
                    Text("收件箱")
                        .multilineTextAlignment(.leading)
                }
                
                HStack{
                    Text("图标箱 ->")
                        .multilineTextAlignment(.leading)
                    Text("收件箱")
                        .multilineTextAlignment(.leading)
                }
                
                Spacer().frame(width: 200.0)
                
            }.frame(width: 200)
            
            Divider()
            
            VStack{
                TextField("添加代办事件", text: $name)
                VStack(alignment: .leading){
                    HStack(){
                        Text("name1").multilineTextAlignment(.leading)
                    }
                    
                    HStack() {
                        Text("name1").multilineTextAlignment(.leading)
                    }
                    Spacer().frame(width: 600.0)
                }
            }.frame(width: 600.0)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
