//
//  ContentView.swift
//  tenLibrariesApp
//
//  Created by asmaa gamal  on 21/01/2024.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var almofireSwiftJson: AlamofireSwiftyJSON
    init(){
        almofireSwiftJson = AlamofireSwiftyJSON.shared
    }
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("\(almofireSwiftJson.data?.ask ?? 0)" ).padding()
            
            
            NavigationLink(destination: KingfisherSwiftUIView()){
                Text("Kingfisher").padding()
            }
            
            NavigationLink(destination:  SVProgressHUDSwiftUIView()){
                Text(" SVProgressHUD").padding()
            }
            
           
            NavigationLink(destination:  firebaseView()){
                Text(" Firebase").padding()
            }
            
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
