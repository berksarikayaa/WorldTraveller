//
//  ContentView.swift
//  WorldTraveller
//
//  Created by Berk Sarikaya on 19.01.2025.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    @State var fahrenheitValue: String = ""
    @State var isVisible = false
    
    let numberFormatter : NumberFormatter = {
       
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        numberFormatter.minimumFractionDigits = 0
        numberFormatter.maximumFractionDigits = 2
        return numberFormatter
        
    }()
    
    func convertToCelsius() -> String {

        if let value = Double(fahrenheitValue) {
            
            let fahrenheit =
            Measurement<UnitTemperature>(value :
                        value, unit: .fahrenheit)
            
            let celsiusValue = fahrenheit.converted(to:.celsius)
            
            return numberFormatter.string(from: NSNumber(value: celsiusValue.value)) ?? "???"
            
        }else{
            return "???"
        }
        
    }
        
    var body: some View{
        VStack{
            TextField("CONVERSION_TEXT_FIELD_PLACEHOLDER", text: $fahrenheitValue)
                .keyboardType(.decimalPad)
                .font(Font.system(size:64.0))
                .multilineTextAlignment(.center)
            Text("CONVERSION_FAHRENHEIT")
            Text("CONVERSION_IS_ACTUALLY")
                .foregroundColor(.gray)
            Text(convertToCelsius())
                .font(Font.system(size:64.0))
            Text("CONVERSION_DEGREES_CELSIUS")
            Spacer()
        }
        .foregroundStyle(.orange)
        .font(.title)
        .opacity(isVisible ? 1 : 0)
        .offset(x:0, y: isVisible ? 0 :20)
        .animation(.easeIn(duration: 1.0))
        .onAppear{self.isVisible = true}
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
