//
//  ContentView.swift
//  memo
//
//  Created by Summer Rizzo on 5/29/20.
//  Copyright © 2020 Summer Rizzo. All rights reserved.
//

import SwiftUI



struct ContentView: View {
    @Environment(\.managedObjectContext) var managedObjectContext

    @FetchRequest(entity: Memo.entity(),
        sortDescriptors: [NSSortDescriptor(keyPath: \Memo.title, ascending: true)])
        var memos:  FetchedResults<Memo>
    
    
    var body: some View {
        
        VStack {
            List(memos, id: \.self) { memo in
                Text(memo.title ?? "Unknown")
            }
            
            Button(action: {
                let memo = Memo(context: self.managedObjectContext)
                memo.title = "Dawn"
                memo.content = "Hello, world!"
                do {
                    try self.managedObjectContext.save()
                } catch {
                    // handle the Core Data error
                }
            }) {
                Text("Insert example memo")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
