//
//  CellView.swift
//  28_SwiftUI
//
//  Created by valeri mekhashishvili on 22.05.24.
//

import SwiftUI

struct CellView: View {
    var contentInfo: ContentInfo
    var imageName: String
    
    var body: some View {
        HStack {
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            
            VStack(alignment: .leading, spacing: 8) {
                Text(contentInfo.title)
                    .font(.system(size: 14))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
                Text(contentInfo.description)
                    .font(.system(size: 10)) 
                    .foregroundColor(.white)
            }
            .padding(.leading, 8)
        }
    }
}
