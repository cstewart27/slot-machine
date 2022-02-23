//
//  ContentView.swift
//  slot-machine
//
//  Created by Christopher Stewart on 2/23/22.
//

import SwiftUI

struct ContentView: View {
    //Properties
    @State var creditCount = 1000
    @State var imageAsset1 = "apple"
    @State var imageAsset2 = "apple"
    @State var imageAsset3 = "apple"
    
    //View Code
    var body: some View {
        
        
        VStack {
            Text("SwiftUI Slots!").font(.largeTitle).padding()
            
            Spacer()
            Text("Credits: " + String(creditCount))
                .padding()
            Spacer()
            
            HStack {
                Image(imageAsset1)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width:120)
                Image(imageAsset2)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width:120)
                Image(imageAsset3)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width:120)
                    
            }
            
            
            Spacer()
            Button {
                //Generates random number to apply for image assest
                let randNum1 = Int.random(in: 1...3)
                let randNum2 = Int.random(in: 1...3)
                let randNum3 = Int.random(in: 1...3)
                
                if (randNum1 == randNum2) && (randNum1 == randNum3){
                    creditCount += 50
                }
                else{
                    creditCount -= 10
                }
                
                
                //changing imageAsset1
                if randNum1 == 1{
                    imageAsset1 = "apple"
                }
                else if randNum1 == 2{
                    imageAsset1 = "cherry"
                }
                else if randNum1 == 3{
                    imageAsset1 = "star"
                }
                //changing imageAsset2
                if randNum2 == 1{
                    imageAsset2 = "apple"
                }
                else if randNum2 == 2{
                    imageAsset2 = "cherry"
                }
                else if randNum2 == 3{
                    imageAsset2 = "star"
                }
                //changing imageAsset3
                if randNum3 == 1{
                    imageAsset3 = "apple"
                }
                else if randNum3 == 2{
                    imageAsset3 = "cherry"
                }
                else if randNum3 == 3{
                    imageAsset3 = "star"
                }
            } label: {
                Text("Spin")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.white)
                    .padding(.horizontal, 30)
                    .padding(.vertical, 10)
                    .background(Color.red)
                    .cornerRadius(30.0)
            }

            Spacer()
            
            
        }
    }
    
    
    //Methods
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
