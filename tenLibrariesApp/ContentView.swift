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
            Text("\(almofireSwiftJson.data?.ask ?? 0)" )
            NavigationLink(destination: KingfisherSwiftUIView()){
                Text("Kingfisher")
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
