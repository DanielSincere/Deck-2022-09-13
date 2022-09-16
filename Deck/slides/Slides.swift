import Foundation
import SwiftUI
import DeckUI

enum Slides {
  static var deck: Deck {
    Deck(title: "Swish & Sh", theme: .fq) {
      Slide(alignment: .center) {
        Title("Upload an app to the App Store")
      }

      Slide(alignment: .center) {
        Title("Wouldn't it be nice if we could use Swift?")
      }

      Slides.build1
      Slides.build2
      Slides.build3
      Slides.build4

      Slide(alignment: .center) {
        Title("Wouldn't it be nice?")
      }

      Slide(alignment: .center) {
        Title("Available\nToday ✨")
      }

      Slide(alignment: .center) {
        Title("https://github.com/FullQueueDeveloper/ShXcrun.git")
      }

      Slides.code

      Slide(alignment: .center) {
        Title("Thank you so much!")

        Code {"""
          🕸 FullQueueDeveloper.com
          📺 twitch.tv/FullQueueDeveloper
          🛠 github.com/FullQueueDeveloper
          💸 github.com/sponsors/FullQueueDeveloper
          """}

      }
    }
  }
}

struct SlidesProvider_Previews: PreviewProvider {
  static var previews: some View {
    Presenter(deck: Deck(title: "Preview", theme: .fq) {
      Slides.exportOptions
    })
  }
}
