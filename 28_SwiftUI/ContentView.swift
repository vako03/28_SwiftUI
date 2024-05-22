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
            Spacer()

            VStack(alignment: .leading, spacing: 16) {
                HStack {

                    Text("svibti iuai eksersaisi")
                        .font(.system(size: 34))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                
                 


                }
                .padding(.top, 20)
                
                HStack(spacing: 16) {
                    Rectangle()
                        .frame(width: 165, height: 232)
                        .cornerRadius(18)
                        .foregroundColor(Color(backgroundColor: "F7BB36"))
                        .overlay(
                            VStack(alignment: .leading) {
                                Spacer()
                                HStack {
                                    Spacer()
                                    // Pushing the image to the right
                                    Image("guitar")
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 82, height: 182) // Adjusted size for guitar image
                                        .padding(.bottom, 16) // Moving the image downwards
                                }
                            }
                                .padding(.leading)
                        )
                    
                    VStack(spacing: 16) {
                        Rectangle()
                            .frame(width: 165, height: 110)
                            .cornerRadius(18)
                            .foregroundColor(Color(backgroundColor: "#FF844B"))
                            .overlay(
                                VStack(alignment: .trailing) {
                                    Spacer()
                                    HStack {
                                        Spacer()
                                        Image("message")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 97, height: 93) // Adjusted size for message image
                                            .padding(.trailing, -25.5) // Moving the image towards the top
                                            .padding(.bottom, 8) // Moving the image towards the top
                                    }
                                }
                                    .padding(.trailing)
                                
                            )
                        
                        Rectangle()
                            .frame(width: 165, height: 110)
                            .cornerRadius(18)
                            .foregroundColor(Color(backgroundColor: "#7F36F7"))
                            .overlay(
                                VStack(alignment: .leading) {
                                    Spacer()
                                    HStack {
                                        Spacer() // Pushing the image to the right
                                        Image("speaker")
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(width: 66, height: 86) // Adjusted size for speaker image
                                            .padding(.bottom, 1) // Moving the image downwards
                                    }
                                }
                                    .padding(.leading)
                            )
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
