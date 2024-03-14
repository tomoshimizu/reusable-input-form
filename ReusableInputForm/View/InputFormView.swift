import SwiftUI

struct InputFormView: View {
    
    @State var name: String = ""
    @State var age: Int = 0
    @State var gender: Gender = .unselected
    @State var prefecture: Prefecture = .unselected
    
    var body: some View {
        
        ScrollView {
            
            VStack(alignment: .leading, spacing: 32) {
                InputFieldView(
                    inputField: TextInputField<String>(isRequired: true,
                                                       title: "名前",
                                                       value: $name,
                                                       hasError: false,
                                                       errorMessage: "入力してください"))
                InputFieldView(
                    inputField: TextInputField<Int>(isRequired: false,
                                                    title: "年齢",
                                                    value: $age,
                                                    hasError: true,
                                                    errorMessage: "入力してください"))
                InputFieldView(
                    inputField: DropdownInputField<Gender>(isRequired: true,
                                                           title: "性別",
                                                           options: Gender.allCases,
                                                           selection: $gender,
                                                           hasError: false,
                                                           errorMessage: "入力してください"))
                InputFieldView(
                    inputField: DropdownInputField<Prefecture>(isRequired: false,
                                                               title: "都道府県",
                                                               options: Prefecture.allCases,
                                                               selection: $prefecture,
                                                               hasError: true,
                                                               errorMessage: "入力してください"))
            }
            .padding(24)
            .background(Color("base"))
        }
    }
}

#Preview {
    InputFormView()
}
