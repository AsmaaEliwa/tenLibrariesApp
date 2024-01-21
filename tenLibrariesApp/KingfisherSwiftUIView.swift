//
//  KingfisherSwiftUIView.swift
//  tenLibrariesApp
//
//  Created by asmaa gamal  on 21/01/2024.
//

import SwiftUI
import Kingfisher
struct KingfisherSwiftUIView: View {
    var imageURL = URL(string:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkAhvc-YjdwsimlEYdOknxcvbgNOVSHWjkWQ&usqp=CAU")
    var body: some View {
        VStack{
            KFImage(imageURL) .resizable()  // Make the image resizable
                .scaledToFit() // Scale the image to fit the view
                .frame(width: 200, height: 200) // Set a fixed size for the image view
                .cornerRadius(10) // Apply corner radius if needed
        }
    }
}

#Preview {
    KingfisherSwiftUIView()
}
