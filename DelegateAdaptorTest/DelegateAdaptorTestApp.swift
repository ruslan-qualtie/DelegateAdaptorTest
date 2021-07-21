import SwiftUI

@main
struct DelegateAdaptorTestApp: App {
    @NSApplicationDelegateAdaptor(AppDelegate.self) var adapter
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

class AppDelegate: NSObject {}

extension AppDelegate: NSApplicationDelegate {
    public func applicationDidFinishLaunching(_ notification: Notification) {
            print("applicationDidFinishLaunching")
        }

    public func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool {
        true
    }
}
