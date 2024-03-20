import SwiftUI

struct InputFieldView<Content>: View where Content: View {
    let isRequired: Bool
    let title: String
    let hasError: Bool
    let errorMessage: String
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

                if hasError {
                    Text(errorMessage)
                        .foregroundColor(.red)
                }
            }
        }
    }
}
