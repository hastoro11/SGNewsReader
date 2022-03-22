//
//  ViewModifiers.swift
//  SGNewsReader
//
//  Created by Gabor Sornyei on 2022. 03. 22..
//

import Foundation
import SwiftUI

struct CountCaption: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(Font.subheadline.weight(.semibold))            
            .frame(minWidth: 25)
            .foregroundColor(Color.white)
            .padding(4)
            .background() {
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color(uiColor: UIColor.tertiaryLabel))
            }
    }
}

extension View {
    func countCaption() -> some View {
        self
            .modifier(CountCaption())
    }
}


struct Previews_ViewModifiers_Previews: PreviewProvider {
    static var previews: some View {
        Text("123")
            .countCaption()
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
