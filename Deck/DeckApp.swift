import SwiftUI
import DeckUI

@main
struct DeckApp: App {
  var body: some Scene {
    WindowGroup {
      Presenter(deck: Slides.deck, showCamera: true)
    }
  }
}
