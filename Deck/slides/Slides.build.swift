import Foundation
import DeckUI
import SwiftUI

extension Slides {

  static var build1: Slide {
    Slide {
      Title("Specify our scheme?")
      Code(.swift) {
        """
        let xcodebuild = Xcodebuild(scheme: "App",
                                    sdk: "iphoneos",
                                    allowProvisioningUpdates: true,
                                    allowProvisioningDeviceRegistration: true)
        """
      }
    }
  }

  static var build2: Slide {
    Slide {
      Title("Archive our scheme?")
      Code(.swift) {
        #"""
        try xcodebuild.archive(.file("logs/archive.log"),
                               path: "artifacts/App.xcarchive")
        """#
      }
    }
  }

  static var build3: Slide {
    Slide {
      Title("Export our archive?")

      Code(.swift) {
        #"""
        try xcodebuild.exportArchive(.file("logs/exportArchive.log"),
                                     archivePath: "artifacts/App.xcarchive",
                                     exportPath: "artifacts",
                                     exportOptionsPlistPath: exportOptionsPath)
        """#
      }
    }
  }

  static var build4: Slide {
    Slide {
      Title("Upload our .ipa?")
      Code(.swift) {
        #"""
        let altool = Altool(credential: .api(keyID: "my-key-id",
                                             issuerID: "my-issuer-id"))

        try altool.uploadApp(.terminal,
          file: "artifacts/App.ipa",
          platform: .iOS)
        """#
      }
    }
  }
}


