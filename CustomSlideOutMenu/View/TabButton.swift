//
//  TabButton.swift
//  CustomSlideOutMenu
//
//  Created by zedsbook on 28.01.2023.
//

import SwiftUI

struct TabButton: View {
    var image: String
    var title: String
    
    @Binding var selectedTab: String
    var animation: Namespace.ID
    
    var body: some View {
        
        Button {
            withAnimation(.spring()) {
                selectedTab = title
            }

        } label: {
            
            HStack(spacing: 15) {
                 
                Image(systemName: image)
                    .font(.title2)
                    .frame(width: 30)
                
                Text(title)
                    .fontWeight(.heavy)
            }
            .foregroundColor(selectedTab == title ? Color("blue") : .white)
            .padding(.vertical, 12)
            .padding(.horizontal, 10)
            .frame(maxWidth: getRect().width - 170, alignment: .leading)
            .background(
                ZStack {
                    if selectedTab == title {
                        Color.white
                            .opacity(selectedTab == title ? 1 : 0)
                            .clipShape(CustomCorners(corners: [.topRight, .bottomRight], radius: 12))
                            .matchedGeometryEffect(id: "TAB", in: animation)
                    }
                }
            )
        }

    }
}

struct TabButton_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
