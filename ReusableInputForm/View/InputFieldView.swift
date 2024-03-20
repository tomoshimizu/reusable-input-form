import SwiftUI

protocol ValidationErrorHandling {
    var hasError: Bool { get }
    var errorMessage: String { get }
}

struct FieldValidationError: ValidationErrorHandling {
    var hasError: Bool
    var errorMessage: String
}

struct InputFieldView<Content>: View where Content: View {
    let isRequired: Bool
    let title: String
    let error: ValidationErrorHandling
    let content: () -> Content
    
    var body: some View {

        VStack(alignment: .leading, spacing: 16) {

            HStack(spacing: 8) {
                if isRequired {
                    Text("必須")
                        .foregroundColor(.white)
                        .background(Color.red)
                } else {
                    Text("任意")
                        .foregroundColor(.white)
                        .background(Color.gray)
                }
                
                Text(title)
            }

            VStack(alignment: .leading, spacing: 8) {

                content()

                if error.hasError {
                    Text(error.errorMessage)
                        .foregroundColor(.red)
                }
            }
        }
    }
}
