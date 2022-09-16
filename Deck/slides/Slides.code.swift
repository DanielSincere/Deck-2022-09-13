import Foundation
import DeckUI
import SwiftUI

extension Slides {
  static var code: Slide {
    Slide {
      Title("Put it all together")
      Code(.swift) {
#"""
import Foundation
import Sh
import ShXcrun

try sh(.terminal, "rm -fr logs artifacts")
try sh(.terminal, "mkdir -p logs")
try sh(.terminal, "mkdir -p artifacts")

let archivePath = "artifacts/App.xcarchive"
let exportOptionsPath = "artifacts/exportOptions.plist"
let exportOptions = ExportOptions(compileBitcode: true,
                                  manageAppVersionAndBuildNumber: true,
                                  method: .appStore,
                                  teamID: "ABCD1234",
                                  uploadBitcode: true,
                                  uploadSymbols: true)
try exportOptions.write(to: exportOptionsPath)

let xcodebuild = Xcodebuild(scheme: "App",
                            sdk: "iphoneos",
                            allowProvisioningUpdates: true,
                            allowProvisioningDeviceRegistration: true)

try xcodebuild.archive(.file("logs/archive.log"), path: archivePath)
try xcodebuild.exportArchive(.file("logs/exportArchive.log"),
                             archivePath: archivePath,
                             exportPath: artifactRoot,
                             exportOptionsPlistPath: exportOptionsPath)

let altool = Altool(credential: .api(keyID: "my-api-key-id",
                                     issuerID: "my-issuer-id"))

try altool.uploadApp(.terminal,
                     file: "artifacts/App.ipa",
                     platform: .iOS)
"""#
      }
    }
  }
}
