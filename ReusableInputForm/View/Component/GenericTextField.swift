import SwiftUI

struct GenericTextField<Value>: View {
    @Binding var value: Value
    
    var body: some View {
        VStack {
            switch $value {
            case is Binding<Int>, is Binding<Double>:
                TextField("", value: $value, formatter: NumberFormatter())
                    .keyboardType(.numberPad)
                    .textFieldStyle(.roundedBorder)
            default:
                TextField("", text: $value as! Binding<String>)
                    .textFieldStyle(.roundedBorder)
            }
        }
    }
}
