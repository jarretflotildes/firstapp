//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by miyabi gaming on 4/5/25.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    
    @State private var scrums = DailyScrum.sampleData
    
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: $scrums)
        }
    }
}
