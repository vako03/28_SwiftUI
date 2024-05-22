//
//  ContentView.swift
//  28_SwiftUI
//
//  Created by valeri mekhashishvili on 22.05.24.
//
import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ContentViewModel()
    let imageName: String = "image"
    
    @State private var isSecondButtonClicked = false
    @State private var isFirstButtonClicked = false
    @State private var isReplyButtonPressed = false
    
    var body: some View {
        ZStack {
            Color(backgroundColor: "#19252B")
                .edgesIgnoringSafeArea(.all)
            
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
                                    Image("guitar")
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 82, height: 182)
                                        .padding(.bottom, 16)
                                }
                            }
                                .padding(.leading)
                        )
                        .overlay(
                            Text(isFirstButtonClicked ? "We hate property wrappers and closures" : "We love property wrappers and closures")
                                .foregroundColor(.white)
                                .font(.system(size: 17))
                                .fontWeight(.bold)
                                .multilineTextAlignment(.leading)
                                .padding(40),
                            alignment: .bottom
                        )
                        .overlay(
                            VStack(alignment: .leading, spacing: 6) {
                                Image("mic")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 32, height: 32)
                                Text("ჯუზონები და რამე")
                                    .foregroundColor(.white)
                                    .font(.system(size: 9))
                                    .multilineTextAlignment(.leading)
                            }
                                .padding(16)
                                .frame(maxWidth: .infinity, alignment: .topLeading)
                                .padding(6),
                            alignment: .topLeading
                        )
                        .onTapGesture {
                            isFirstButtonClicked.toggle()
                        }
                    
                    VStack(spacing: 16) {
                        Rectangle()
                            .frame(width: 165, height: 110)
                            .cornerRadius(18)
                            .foregroundColor(isSecondButtonClicked ? Color.green : Color(backgroundColor: "#FF844B"))
                            .overlay(
                                VStack(alignment: .trailing) {
                                    Spacer()
                                    HStack {
                                        Spacer()
                                        Image("message")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 97, height: 93)
                                            .padding(.trailing, -25.5)
                                            .padding(.bottom, 8)
                                    }
                                }
                                    .padding(.trailing)
                            )
                            .overlay(
                                Button(action: {
                                    isSecondButtonClicked.toggle()
                                }) {
                                    VStack(alignment: .leading, spacing: 6) {
                                        Image("sms")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 32, height: 32)
                                        Text("ჩატაობა")
                                            .foregroundColor(.white)
                                            .font(.system(size: 9))
                                            .multilineTextAlignment(.leading)
                                    }
                                    .padding(6)
                                }
                                    .frame(maxWidth: .infinity, alignment: .topLeading)
                                    .padding(6),
                                alignment: .topLeading
                            )
                        
                        Rectangle()
                            .frame(width: 165, height: 110)
                            .cornerRadius(18)
                            .foregroundColor(Color(backgroundColor: "#7F36F7"))
                            .overlay(
                                VStack(alignment: .leading) {
                                    Spacer()
                                    HStack {
                                        Spacer()
                                        Image("speaker")
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(width: 66, height: 86)
                                            .padding(.bottom, 1)
                                    }
                                }
                                    .padding(.leading)
                            )
                            .overlay(
                                Button(action: {
                                }) {
                                    VStack(alignment: .leading, spacing: 6) {
                                        Image("profile")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 32, height: 32)
                                        Text("ცეცხლოვანი\nსიახლეები")
                                            .foregroundColor(.white)
                                            .font(.system(size: 9))
                                            .multilineTextAlignment(.leading)
                                    }
                                    .padding(6)
                                }
                                    .frame(maxWidth: .infinity, alignment: .topLeading)
                                    .padding(6),
                                alignment: .topLeading
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
            
            Button(action: {
                isReplyButtonPressed.toggle()
            }) {
                Image(isReplyButtonPressed ? "recovery" : "reply")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50, height: 50)
                    .padding()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomTrailing)
            .padding(5)
            .cornerRadius(25)
            .shadow(radius: isReplyButtonPressed ? 5 : 0)
        }
    }
}

