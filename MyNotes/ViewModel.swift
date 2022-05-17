//
//  Model.swift
//  MyNotes
//
//  Created by Gabriela Bezerra on 12/04/22.
//

import Foundation

class ViewModel: ObservableObject {
    
    @Published var notes: [String] = []
    @Published var input: String = ""
    
    func save() {
        if !input.isEmpty {
            notes.append(input) 
            input = ""
        }
    }
    
}
