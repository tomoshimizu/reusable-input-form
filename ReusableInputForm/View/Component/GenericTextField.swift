import Foundation
import SwiftUI
import UIKit

protocol TextInputConvertible {
    init?(fromString string: String)
    var toString: String { get }
}

extension String: TextInputConvertible {
    
    init?(fromString string: String) {
        self = string
    }
    
    var toString: String { self }
}

extension Int: TextInputConvertible {
    
    init?(fromString string: String) {
        guard let value = Int(string) else { return nil }
        self = value
    }
    
    var toString: String { "\(self)" }
}

extension Double: TextInputConvertible {
    
    init?(fromString string: String) {
        guard let value = Double(string) else { return nil }
        self = value
    }
    
    var toString: String { "\(self)" }
}

struct GenericTextField<Value: TextInputConvertible>: View {
    var value: Binding<Value>
    
    @State private var stringValue: String = ""
    
    var body: some View {
        TextField("", text: $stringValue)
            .textFieldStyle(.roundedBorder)
            .onAppear {
                stringValue = value.wrappedValue.toString
            }
    }
}
