//
//  SideMenu.swift
//  CustomSlideOutMenu
//
//  Created by zedsbook on 28.01.2023.
//

import SwiftUI

struct SideMenu: View {
    
    @Binding var selectedTab: String
    @Namespace var animation
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 15) {
            
            // Profile Pic
            Image("profile")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 70, height: 70)
                .cornerRadius(10)
                .padding(.top, 50)
            
            VStack(alignment: .leading, spacing: 6) {
                
                Text("Rishat Zinatullin")
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                
                Button {
                    
                } label: {
                    Text("View Profile")
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .opacity(0.7)
                }

                
            }
            
            // Tab Buttons
            VStack(alignment: .leading ,spacing: 10) {
                
                TabButton(image: "house",
                          title: "Home",
                          selectedTab: $selectedTab,
                          animation: animation)
                
                TabButton(image: "clock.arrow.circlepath",
                          title: "History",
                          selectedTab: $selectedTab,
                          animation: animation)
                
                TabButton(image: "bell.badge",
                          title: "Notifications",
                          selectedTab: $selectedTab,
                          animation: animation)
                
                TabButton(image: "gearshape.fill",
                          title: "Settings",
                          selectedTab: $selectedTab,
                          animation: animation)
                
                TabButton(image: "questionmark.circle",
                          title: "Help",
                          selectedTab: $selectedTab,
                          animation: animation)
            }
            .padding(.leading, -15)
            .padding(.top, 50)
            
            Spacer()
            
            TabButton(image: "rectangle.righthalf.inset.fill.arrow.right",
                      title: "Log Out",
                      selectedTab: .constant(""),
                      animation: animation)
                .padding(.leading, -15)
                
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
    }
}

struct SideMenu_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
