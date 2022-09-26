//
//  ContentView.swift
//  SwiftUIAssignment
//
//  Created by ek-mac-02 on 26/09/2022.
//

import SwiftUI

struct ContentView: View {
        @State private var isDarkMode:Bool = false
    
    var body: some View {
        ZStack{
            Color.white
            LinearGradient(gradient: Gradient(colors: isDarkMode ? [.white,.black]: [.white,.blue]), startPoint: .bottomTrailing, endPoint: .topTrailing)
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                Text("Today's weather!")
                    .foregroundColor(.white)
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .padding()
                
                VStack{
                    Image(isDarkMode ? "night":"day")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                    
                    Text(isDarkMode ? "19°C" : "22°C")
//                        .foregroundColor(.white)
                        .font(.system(size: 72, weight: .medium, design: .default))
                        .foregroundColor(isDarkMode ? Color.black : Color.white)
                    
                    Text("Monday")
//                        .foregroundColor(.white)
                        .font(.system(size: 32, weight: .medium, design: .default))
                        .foregroundColor(isDarkMode ? Color.black : Color.white)
                    
                }
                Spacer()
                // button label for changing modes
                Button{
                    isDarkMode.toggle()
                } label: {
                    Text ("Change apperance")
                        .frame(width: 200, height: 250)
                        .font(.system(size: 20, weight: .bold, design: .default))
                        .foregroundColor(isDarkMode ? Color.black : Color.blue)
                    
                    
                    
                }
            }
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
