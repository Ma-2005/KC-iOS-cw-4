//
//  ContentView.swift
//  dev
//
//  Created by Mac on 07/08/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var Tracks = Image("K-C")
    
    var body: some View {
        ZStack{
            Image("88")
                .resizable()
                .ignoresSafeArea()
            
            VStack{
                HStack{
                    Image(systemName: "arrow.backward.square.fill")
                        .foregroundColor(.white)
                        .font(.title)
                        .padding()
                    Spacer()
                    
                    Text("(Best track)")
                        .font(.custom("Amiri-BoldItalic", size: 38))
                        .foregroundColor(.white)
                        .shadow(color: .green, radius: 4)
                        .padding()
                        .onLongPressGesture{
                            Tracks = Image("K-C")
                        }
                    Spacer()
                        
                    Text("next")
                        .foregroundColor(.white)
                        .font(.title)
                        .padding()
                    
                }
                Spacer()
                
                ZStack{
                    
                    Tracks
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(.white)
                        .frame(width: 200, height: 200)
                        .padding()
                }
                Spacer()
                
                ZStack{
                    Color.orange.opacity(0.8)
                        .frame(width: 175, height: 70)
                        .clipShape(RoundedRectangle(cornerRadius: 15))
                    
                    Text("iOS")
                        .font(.custom("Amiri-Italic", size: 40))
                        .foregroundColor(.white.opacity(0.9))
                        .frame(width: 146, height: 40)
                        .padding()
                        .onTapGesture {
                            Tracks = Image("apple")
                        }
                        .onLongPressGesture{
                            Tracks = Image(systemName: "questionmark")
                        }
                }
                
                ZStack{
                    Color.green.opacity(0.8)
                        .frame(width: 175, height: 70)
                        .clipShape(RoundedRectangle(cornerRadius: 15))
                    
                    Text("Android")
                        .font(.custom("Amiri-Italic", size: 40))
                        .foregroundColor(.white.opacity(0.9))
                        .frame(width: 146, height: 40)
                        .padding()
                        .onTapGesture {
                          Tracks = Image("android")
                        }
                        .onLongPressGesture{
                            Tracks = Image(systemName: "questionmark")
                        }
                }
                
                ZStack{
                    Color.blue.opacity(0.8)
                        .frame(width: 175, height: 70)
                        .clipShape(RoundedRectangle(cornerRadius: 15))
                    
                    Text("Web")
                        .font(.custom("Amiri-Italic", size: 40))
                        .foregroundColor(.white.opacity(0.9))
                        .frame(width: 146, height: 40)
                        .padding()
                        .onTapGesture {
                           Tracks = Image("web")
                        }
                        .onLongPressGesture{
                            Tracks = Image(systemName: "questionmark")
                        }
                }
                
                ZStack{
                    Color.purple.opacity(0.8)
                        .frame(width: 175, height: 70)
                        .clipShape(RoundedRectangle(cornerRadius: 15))
                    
                    Text("Game")
                        .font(.custom("Amiri-Italic", size: 40))
                        .foregroundColor(.white.opacity(0.9))
                        .frame(width: 146, height: 40)
                        .padding()
                        .onTapGesture {
                            Tracks = Image("unity")
                                               }
                        .onLongPressGesture{
                            Tracks = Image(systemName: "questionmark")
                        }
                       
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
