import SwiftUI

protocol InputField {
    var isRequired: Bool { get }
    var title: String { get }
    var hasError: Bool { get }
    var errorMessage: String { get }
    func inputFieldContent() -> AnyView
}

struct InputFieldView<Input: InputField>: View {
    var inputField: Input
    
    var body: some View {

        VStack(alignment: .leading, spacing: 16) {

            HStack(spacing: 8) {
                if inputField.isRequired {
                    Text("必須")
                        .foregroundColor(.white)
                        .background(Color.red)
                } else {
                    Text("任意")
                        .foregroundColor(.white)
                        .background(Color.gray)
                }
                
                Text(inputField.title)
            }

            VStack(alignment: .leading, spacing: 8) {

                inputField.inputFieldContent()

                if inputField.hasError {
                    Text(inputField.errorMessage)
                        .foregroundColor(.red)
                }
            }
        }
    }
}
