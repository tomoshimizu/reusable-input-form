import SwiftUI

struct InputFormView: View {
    
    @State var name: String = ""
    @State var age: Int = 0
    @State var gender: Gender = .unselected
    @State var prefecture: Prefecture = .unselected
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 32) {
                InputFieldView(isRequired: true,
                               title: "名前",
                               hasError: true,
                               errorMessage: "入力してください",
                               content: {
                    GenericTextField(value: $name)
                })
                InputFieldView(isRequired: true,
                               title: "年齢",
                               hasError: true,
                               errorMessage: "入力してください",
                               content: {
                    GenericTextField(value: $age)
                })
                InputFieldView(isRequired: true,
                               title: "性別",
                               hasError: false,
                               errorMessage: "入力してください",
                               content: {
                    GenericDropdown(options: Gender.allCases,
                                    selection: $gender)
                })
                InputFieldView(isRequired: true,
                               title: "都道府県",
                               hasError: false,
                               errorMessage: "入力してください",
                               content: {
                    GenericDropdown(options: Prefecture.allCases,
                                    selection: $prefecture)
                })
            }
            .padding(24)
            .background(Color("base"))
        }
    }
}

#Preview {
    InputFormView()
}
