import SwiftUI

struct GenericDropdown<Value: CustomStringConvertible & Hashable>: View {
    var options: [Value]
    @Binding var selection: Value
    
    var body: some View {
        Menu {
            ForEach(options, id: \.self) { option in
                dropdownMenuItem(for: option)
            }
        } label: {
            dropdownButtonLabel
        }
        .padding(16)
        .overlay(
            RoundedRectangle(cornerRadius: 5)
                .stroke(Color.gray, lineWidth: 1)
        )
    }
    
    @ViewBuilder
    private func dropdownMenuItem(for option: Value) -> some View {
        Button(action: {
            selection = option
        }) {
            Text(option.description)
                .foregroundColor(.black)
        }
    }
    
    var dropdownButtonLabel: some View {
        Button(action: {}) {
            Text(selection.description)
                .foregroundColor(.black)
        }
    }
}
