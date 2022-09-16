import DeckUI
import SwiftUI

extension Theme {

  static let fq: Theme = Theme(
    background: Color(hex: "#221d29"),
    title: Foreground(
        color: Color(hex: "#FFFFFF"),
        font: Font.custom("RetinaBold", size: 80)
    ),
    subtitle: Foreground(
        color: Color(hex: "#FFFFFF"),
        font: Font.custom("RetinaMedium", size: 60)
    ),
    body: Foreground(
        color: Color(hex: "#FFFFFF"),
        font: Font.custom("RetinaMedium", size: 22)
    ),
    code:
      CodeTheme(
      font: Font.custom("MonoLisa-Regular", size: 40),
      plainTextColor: Color(hex: "#FFFFFF"),
      backgroundColor: .clear,
      tokenColors: [
          .keyword:       Color(hex: "#ff79b3"),
          .string:        Color(hex: "#ff8170"),
          .type:          Color(hex: "#dabaff"),
          .call:          Color(hex: "#78c2b4"),
          .number:        Color(hex: "#dac87c"),
          .comment:       Color(hex: "#808b98"),
          .property:      Color(hex: "#79c2b4"),
          .dotAccess:     Color(hex: "#79c2b4"),
          .preprocessing: Color(hex: "#ffa14f")
      ]
  ),
    codeHighlighted: (Color(hex: "#000000"), Foreground(
        color: Color(hex: "#FFFFFF"),
        font: Font.custom("MonoLisa-Bold", size: 40)
    ))
  )
}
