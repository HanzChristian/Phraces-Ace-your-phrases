//
//  CardView.swift
//  NC2
//
//  Created by Hanz Christian on 22/07/22.
//

import SwiftUI
import Speech

struct SpellingView: View {
    @Environment(\.presentationMode) var presentation
    
    @StateObject var content: CardViewModel = CardViewModel()
    
    @EnvironmentObject var swiftUISpeech:SwiftUISpeech
    
    @AppStorage("toogle") var record:Bool = false
    
    @State var index:Int = 0
    //    var Content:Content
    
    @State var arrayIndex:Int = 0
    
    var body: some View {
        
        VStack{
            Rectangle()
                .frame(height: 0)
                .background(Color(hex: "5C929D"))
            Spacer()
            
            GeometryReader{reader in
                VStack{
                    
                    if(index == 0){
                        Text("Type : \(content.productContents[arrayIndex].type)")
                            .font(.system(size: 20).weight(.bold))
                            .frame(width: 300,height: 40)
                            .foregroundColor(Color(hex: "476F78"))
                        
                        ZStack{
                            VStack(){
                                ZStack{
                                    if(record == false){
                                        Rectangle()
                                            .frame(width: 277, height: 56)
                                            .foregroundColor(Color(hex: "5C929D"))
                                            .cornerRadius(20)
                                        
                                        Text("Try to speak it!").font(.system(size: 24))
                                            .foregroundColor(.white)
                                    }
                                    
                                    if(record == true){
                                        if(swiftUISpeech.outputText == content.productContents[arrayIndex].words){
                                            
                                            Rectangle()
                                                .frame(width: 277, height: 56)
                                                .foregroundColor(Color(hex: "3390E7"))
                                                .cornerRadius(20)
                                            
                                            Text("You are Correct!").font(.system(size: 24))
                                                .foregroundColor(.white)
                                        }
                                        else if(swiftUISpeech.outputText != content.productContents[arrayIndex].words){
                                            
                                            Rectangle()
                                                .frame(width: 277, height: 56)
                                                .foregroundColor(Color(hex: "D95959"))
                                                .cornerRadius(20)
                                            
                                            Text("Try again!").font(.system(size: 24))
                                                .foregroundColor(.white)
                                            
                                        }
                                    }
                                    
                                }
                                
                                Text("\(content.productContents[arrayIndex].words)").font(.system(size: 20).weight(.bold))
                                    .foregroundColor(Color(hex: "476F78"))
                                    .padding(.leading,20)
                                    .padding(.trailing,20)
                                    .frame(height:150)
                            }
                            .padding(.bottom,90)
                        }
                        .frame(width: 315, height: 334)
                        .background(Color(hex: "DAE5D0"))
                        .cornerRadius(20)
                        .padding(.leading,20)
                        .padding(.bottom,30)
                        .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 5)
                    }
                    
                    if(index == 1){
                        Text("Type : \(content.decisionContents[arrayIndex].type)")
                            .font(.system(size: 20).weight(.bold))
                            .frame(width: 300,height: 40)
                            .foregroundColor(Color(hex: "476F78"))
                        
                        ZStack{
                            VStack(){
                                ZStack{
                                    if(record == false){
                                        Rectangle()
                                            .frame(width: 277, height: 56)
                                            .foregroundColor(Color(hex: "5C929D"))
                                            .cornerRadius(20)
                                        
                                        Text("Try to speak it!").font(.system(size: 24))
                                            .foregroundColor(.white)
                                    }
                                    
                                    if(record == true){
                                        if(swiftUISpeech.outputText == content.decisionContents[arrayIndex].words){
                                            
                                            Rectangle()
                                                .frame(width: 277, height: 56)
                                                .foregroundColor(Color(hex: "3390E7"))
                                                .cornerRadius(20)
                                            
                                            Text("You are Correct!").font(.system(size: 24))
                                                .foregroundColor(.white)
                                        }
                                        else if(swiftUISpeech.outputText != content.decisionContents[arrayIndex].words){
                                            
                                            Rectangle()
                                                .frame(width: 277, height: 56)
                                                .foregroundColor(Color(hex: "D95959"))
                                                .cornerRadius(20)
                                            
                                            Text("Try again!").font(.system(size: 24))
                                                .foregroundColor(.white)
                                            
                                        }
                                    }
                                    
                                }
                                
                                Text("\(content.decisionContents[arrayIndex].words)").font(.system(size: 20).weight(.bold))
                                    .foregroundColor(Color(hex: "476F78"))
                                    .padding(.leading,20)
                                    .padding(.trailing,20)
                                    .frame(height:150)
                            }
                            .padding(.bottom,90)
                        }
                        .frame(width: 315, height: 334)
                        .background(Color(hex: "DAE5D0"))
                        .cornerRadius(20)
                        .padding(.leading,20)
                        .padding(.bottom,30)
                        .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 5)
                    }
                    
                    if(index == 2){
                        Text("Type : \(content.motivationalContents[arrayIndex].type)")
                            .font(.system(size: 20).weight(.bold))
                            .frame(width: 300,height: 40)
                            .foregroundColor(Color(hex: "476F78"))
                        
                        ZStack{
                            VStack(){
                                ZStack{
                                    if(record == false){
                                        Rectangle()
                                            .frame(width: 277, height: 56)
                                            .foregroundColor(Color(hex: "5C929D"))
                                            .cornerRadius(20)
                                        
                                        Text("Try to speak it!").font(.system(size: 24))
                                            .foregroundColor(.white)
                                    }
                                    
                                    if(record == true){
                                        if(swiftUISpeech.outputText == content.motivationalContents[arrayIndex].words){
                                            
                                            Rectangle()
                                                .frame(width: 277, height: 56)
                                                .foregroundColor(Color(hex: "3390E7"))
                                                .cornerRadius(20)
                                            
                                            Text("You are Correct!").font(.system(size: 24))
                                                .foregroundColor(.white)
                                        }
                                        else if(swiftUISpeech.outputText != content.motivationalContents[arrayIndex].words){
                                            
                                            Rectangle()
                                                .frame(width: 277, height: 56)
                                                .foregroundColor(Color(hex: "D95959"))
                                                .cornerRadius(20)
                                            
                                            Text("Try again!").font(.system(size: 24))
                                                .foregroundColor(.white)
                                            
                                        }
                                    }
                                    
                                }
                                
                                Text("\(content.motivationalContents[arrayIndex].words)").font(.system(size: 20).weight(.bold))
                                    .foregroundColor(Color(hex: "476F78"))
                                    .padding(.leading,20)
                                    .padding(.trailing,20)
                                    .frame(height:150)
                            }
                            .padding(.bottom,90)
                        }
                        .frame(width: 315, height: 334)
                        .background(Color(hex: "DAE5D0"))
                        .cornerRadius(20)
                        .padding(.leading,20)
                        .padding(.bottom,30)
                        .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 5)
                    }
                    
                    swiftUISpeech.getButton()
                        .padding(.leading,20)
                        .padding(.top,-87)
                    
                    
                    HStack{
                        if(arrayIndex != 0){
                            Button(action:{
                                record = false
                                arrayIndex -= 1
                            }){
                                Text("Previous").font(.system(size: 24).weight(.bold))
                                    .foregroundColor(Color(hex: "476F78"))
                            }
                            .frame(width: 150, height: 50)
                            .background(Color(hex: "DAE5D0"))
                            .cornerRadius(10)
                            .shadow(color: Color.black.opacity(0.4), radius: 5, x: 0, y: 5)
                            .offset(y: 30)
                        }
                        
                        Button(action: {
                            arrayIndex += 1
                            record = false
                        }) {
                            if(index == 0 && arrayIndex == content.productContents.count - 1 || index == 1 && arrayIndex == content.decisionContents.count - 1 || index == 2 && arrayIndex == content.motivationalContents.count - 1){
                                Text("Finish").font(.system(size: 24).weight(.bold))
                                    .foregroundColor(Color(hex: "476F78"))
                                    .onTapGesture {
                                        // code to dismiss the view
                                        self.presentation.wrappedValue.dismiss()
                                    }
                            }
                            else{
                                Text("Next").font(.system(size: 24).weight(.bold))
                                    .foregroundColor(Color(hex: "476F78"))
                            }
                        }
                        .frame(width: 150, height: 50)
                        .background(Color(hex: "DAE5D0"))
                        .cornerRadius(10)
                        .shadow(color: Color.black.opacity(0.4), radius: 5, x: 0, y: 5)
                        .offset(x:10,y: 30)
                        
                        //                        Text("\(swiftUISpeech.outputText)")
                        //                            .font(.title)
                        //                            .bold()
                        //                            .frame(width: 100, height: 100)
                        
                        //                        print("\(swiftUISpeech.outputText)")
                    }
                }
                .padding()
            }
        }
        .navigationBarTitle(Text("Spelling Practice")).navigationBarHidden(false)
        .background(Color(hex: "FEFBE7"))
        .accentColor(.white)
        //Changes to back button color
        .navigationBarBackButtonHidden(true)
        .toolbar(content: {
            ToolbarItem (placement: .navigation)  {
                Text("Back")
                    .foregroundColor(.white)
                    .onTapGesture {
                        // code to dismiss the view
                        self.presentation.wrappedValue.dismiss()
                    }
                
            }
        })
        
    }
}

struct SpellingView_Previews: PreviewProvider {
    static var previews: some View {
        SpellingView().environmentObject(SwiftUISpeech())
    }
}
