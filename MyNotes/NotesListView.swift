//
//  NotesListView.swift
//  MyNotes
//
//  Created by Gabriela Bezerra on 11/04/22.
//

import SwiftUI

struct NotesListView: View {
    
    @Binding var notes: [String]
    
    var body: some View {
        ScrollView {
            VStack(alignment: .trailing) {
                ForEach(notes, id: \.self) { note in
                    HStack {
                        Text(note)
                            .padding()
                            .foregroundColor(.white)
                            .background(.blue.opacity(0.75))
                            .cornerRadius(10)
                    }
                    .padding(.horizontal)
                }
            }
        }
    }
    
}
