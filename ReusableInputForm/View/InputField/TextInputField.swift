import SwiftUI

struct TextInputField<Value: TextInputConvertible>: InputField {
    var isRequired: Bool
    var title: String
    var value: Binding<Value>
    var hasError: Bool
    var errorMessage: String
    
    func inputFieldContent() -> AnyView {
        return AnyView(
            GenericTextField(value: value)
        )
    }
}
