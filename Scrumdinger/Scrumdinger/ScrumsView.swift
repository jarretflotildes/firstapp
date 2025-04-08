//
//  ScrumsView.swift
//  Scrumdinger
//
import SwiftUI

struct ScrumsView: View{
    let scrums: [DailyScrum]
    
    var body: some View{
        NavigationStack{
            List(scrums){ scrum in
                NavigationLink(destination: DetailView(scrum: scrum)){
                    CardView(scrum: scrum)
                        
                }
                .listRowBackground(scrum.theme.mainColor)
            
                
            }
            .navigationTitle("DailyScrums")
            .toolbar {
                Button(action:{}){
                    Image(systemName:"plus")
                }
                .accessibilityLabel("New Scrum")
            }
        }
    }
}

#Preview {
    ScrumsView(scrums: DailyScrum.sampleData)
}
