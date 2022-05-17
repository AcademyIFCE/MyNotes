//
//  InputView.swift
//  MyNotes
//
//  Created by Gabriela Bezerra on 11/04/22.
//

import SwiftUI

struct InputView: View {
    
    @Binding var input: String
    @FocusState var textFieldEnabled: Bool
    let saveHandler: () -> Void
    
    var body: some View {
        HStack(spacing: 20) { 
            customTextField
            saveButton
        }
        .padding()
        .background(Color.blue.opacity(0.1))
    }
    
    var customTextField: some View {
        VStack {
            TextField(
                "Insira uma anotação curta", 
                text: $input
            )
            .focused($textFieldEnabled)
            
            Divider()
                .frame(height: 1.5)
                .background(Color.blue)
        }
    }
    
    var saveButton: some View {
        Button(
            action: {
                textFieldEnabled = false
                saveHandler()
            },
            label: { 
                Image(systemName: "doc.fill.badge.plus")
                    .padding()
                    .foregroundColor(.white)
                    .background(.blue)
                    .clipShape(Circle())
            }
        )
    }
    
}
