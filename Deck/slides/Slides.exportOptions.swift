import Foundation
import DeckUI
import SwiftUI

extension Slides {

  static var exportOptions: Slide {
    Slide {
      Title("Wouldn't it be nice if")
      Words("we could specify the export options")
      Code(.swift) {
        """
        ExportOptions(compileBitcode: true,
                      manageAppVersionAndBuildNumber: true,
                      method: .appStore,
                      teamID: "1234ABCD",
                      uploadBitcode: true,
                      uploadSymbols: true)
        """
      }
    }
  }
}
