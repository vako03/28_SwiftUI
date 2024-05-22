//
//  ContentView.swift
//  28_SwiftUI
//
//  Created by valeri mekhashishvili on 22.05.24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ContentViewModel()
    let imageName: String = "image" // Assuming "image" is the common image name

    var body: some View {
        ZStack {
            Color(backgroundColor: "#19252B")
                .edgesIgnoringSafeArea(.all)
            
            VStack(alignment: .leading, spacing: 16) {
                HStack {
                    Spacer()
                    Text("svibti iuai eksersaisi")
                        .font(.system(size: 34))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    Spacer()
                    Spacer()
                    Spacer()
                }
                .padding(.top, 20)
                
                HStack(spacing: 16) {
                    Rectangle()
                        .frame(width: 165, height: 232)
                        .cornerRadius(18)
                        .foregroundColor(Color(backgroundColor: "F7BB36"))
                    
                    VStack {
                        Rectangle()
                            .frame(width: 165, height: 110)
                            .cornerRadius(18)
                            .foregroundColor(Color(backgroundColor: "#FF844B"))

                        Rectangle()
                            .frame(width: 165, height: 110)
                            .cornerRadius(18)
                            .foregroundColor(Color(backgroundColor: "#7F36F7"))
                    }
                    Spacer()
                }
                
                Spacer()
                
                ScrollView {
                    VStack(alignment: .leading, spacing: 16) {
                        ForEach(viewModel.contentInfos.indices, id: \.self) { index in
                            CellView(contentInfo: viewModel.contentInfos[index], imageName: imageName)
                            if index != viewModel.contentInfos.count - 1 {
                                Divider().background(Color.gray)
                                    .frame(height: 1)
                            }
                        }
                    }
                    .padding()

                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
