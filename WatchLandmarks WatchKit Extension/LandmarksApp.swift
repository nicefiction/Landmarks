//
//  LandmarksApp.swift
//  WatchLandmarks WatchKit Extension
//
//  Created by Olivier Van hamme on 06/05/2022.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
