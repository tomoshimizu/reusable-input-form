import SwiftUI

struct DropdownInputField<Value: CustomStringConvertible & Hashable>: InputField {
    var isRequired: Bool
    var title: String
    var options: [Value]
    var selection: Binding<Value>
    var hasError: Bool
    var errorMessage: String
    
    func inputFieldContent() -> AnyView {
        return AnyView(
            GenericDropdown(options: options,
                            selection: selection)
        )
    }
}
