//
//  ContentView.swift
//  My grades
//
//  Created by Mac on 06/08/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var YourGrade = ""
    @State var Gradeds = ""
    
    var body: some View {
        ZStack{
            Image("22")
                .resizable()
                .ignoresSafeArea()
            
            VStack(spacing: 1 ){
                Text("[ حاسبة الدرجات ]")
                    .font(.custom("Amiri-BoldItalic", size: 48 ))
                    .foregroundColor(.white)
                    .shadow(color: .white , radius: 05 )
                    .padding()
                
                Image("50")
                    .resizable()
                    .frame(width: 200, height: 300)
                    .clipShape(RoundedRectangle(cornerRadius: 21))
                Spacer()
                
            VStack{
                
                TextField("اكتب درجتك", text : $YourGrade)
                    .textFieldStyle(.roundedBorder)
                    .padding()
                
                //إذا كانت درجة الطالب ٩٠ وفوق قم باظهار صورة امتياز ، ٨٠ وفوق قم بإظهار صورة جيدجداً ، ٧٠ وفوق قم بإظهار صورة جيّد ، ٦٠ وفوق قم بإظهار صورة مقبول، أقل من ٦٠ قم بإظهار صورة راسب. "قم بوضع أي صورة تراها مناسبة أو أي نص".
                
                Text("احسب درجتي")
                    .font(.custom("Amiri-Regular", size: 35))
                    .foregroundColor(.black)
                    .padding()
                    .shadow(color: .blue , radius: 2)
                    .background(.red)
                    .clipShape(RoundedRectangle(cornerRadius: 35))
                    .onTapGesture {
                 
                        if (Double(YourGrade) ?? 0 ) == 100
                        {
                            Gradeds = "ممتاز"
                        }
                    else if (Double(YourGrade) ?? 0 ) >= 90
                        {
                            Gradeds = "ممتاز"
                        }
                    else if (Double(YourGrade) ?? 0 ) >= 80
                        {
                            Gradeds = "جيد جداً"
                        }
                    else if (Double(YourGrade) ?? 0 ) >= 70
                        {
                            Gradeds = "جيد"
                        }
                    else if (Double(YourGrade) ?? 0 ) >= 60
                        {
                            Gradeds = "مقبول"
                        }
                    else
                        {
                            Gradeds = "رسوب"
                        }
                    }
                Spacer()
                
               
                
                    Text(Gradeds)
                        .font(.custom("Amiri-Italic", size: 100 ))
                        .foregroundColor(.white)
                    
                
                Spacer()
                
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
