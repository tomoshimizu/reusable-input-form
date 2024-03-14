import Foundation
import SwiftUI

struct GenericDropdown<Value: CustomStringConvertible & Hashable>: View {
    var options: [Value]
    @Binding var selection: Value

    var body: some View {
        Menu {
            optionsMenu
        } label: {
            dropdownButtonLabel
        }
        .padding(16)
        .overlay(
            RoundedRectangle(cornerRadius: 5)
                .stroke(Color.gray, lineWidth: 1)
        )
    }

    var optionsMenu: some View {
        ForEach(options, id: \.self) { option in
            Button(action: {
                self.selection = option
            }) {
                Text(option.description)
                    .foregroundColor(.black)
            }
            .buttonStyle(.plain)
        }
    }

    var dropdownButtonLabel: some View {
        Button(action: {
        }) {
            Text(selection.description)
                .foregroundColor(.black)
        }
        .buttonStyle(.plain)
    }
}
