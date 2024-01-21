//
//  SVProgressHUDSwiftUIView.swift
//  tenLibrariesApp
//
//  Created by asmaa gamal  on 21/01/2024.
//

import SwiftUI

struct SVProgressHUDSwiftUIView: View {
    @State private var showingProgressHUD = false
      @State private var progressHUDView = SVProgressHUDView()

      var body: some View {
          VStack {
              Button("Show HUD") {
                  showingProgressHUD = true
                  progressHUDView.show()
              }
              .padding()

              progressHUDView
                  .onDisappear {
                      progressHUDView.dismiss()
                  }
          }
      }
  }

#Preview {
    SVProgressHUDSwiftUIView()
}
