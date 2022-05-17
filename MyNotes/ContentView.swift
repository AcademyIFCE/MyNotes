//
//  ContentView.swift
//  MyNotes
//
//  Created by Gabriela Bezerra on 05/04/22.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - Intro
    //var body: some View {
    //    Text("Hello, world!")
    //        .padding()
    //}
    
    // MARK: - Usando State com Button
    //@State var count: Int = 0
    //
    //var body: some View {
    //    Button(
    //        action: {
    //            count += 1
    //        }, 
    //        label: {
    //            Text("Botao pressionado \(count) vezes")
    //        }
    //    )
    //}
    
    // MARK: - Usando State com TextField
    //@State var input: String = ""
    //
    //var body: some View {
    //    TextField(
    //        text: $input, 
    //        label: {
    //            Text("Insira aqui seu input")
    //        }
    //    )
    //    .padding()
    //}
    
    // MARK: - App completo sem usar componentizacao
    //@State var notes: [String] = []
    //@State var input: String = ""
    //@FocusState private var textFieldIsFocused: Bool
    //
    //var body: some View {
    //    VStack(alignment: .trailing, spacing: 0) {
    //        // 2. Componente que lista Notas
    //        ScrollView {
    //            VStack(alignment: .trailing) {
    //                ForEach(notes, id: \.self) { note in
    //                    HStack {
    //                        Text(note)
    //                            .padding()
    //                            .foregroundColor(.white)
    //                            .background(.blue.opacity(0.75))
    //                            .cornerRadius(10)
    //                    }
    //                    .padding(.horizontal)
    //                }
    //            }
    //        }
    //        
    //        // 1. Componente que adiciona notas
    //        HStack(spacing: 20) {
    //            VStack {
    //                TextField("Insira aqui uma anotação curta", text: $input)
    //                    .focused($textFieldIsFocused)
    //                
    //                Divider()
    //                    .frame(height: 1.5)
    //                    .background(.blue)
    //            }
    //            
    //            //Button(
    //            //    action: {
    //            //        guard !input.isEmpty else { return }
    //            //        notes.append(input)
    //            //        input = ""
    //            //        textFieldIsFocused = false
    //            //    }, 
    //            //    label: {
    //            //        Image(systemName: "doc.fill.badge.plus")
    //            //            .padding()
    //            //            .foregroundColor(Color.white)
    //            //            .background(Color.blue)
    //            //            .clipShape(Circle())
    //            //    }
    //            //)
    //            
    //            Button(action: save) {
    //                Image(systemName: "doc.fill.badge.plus")
    //                    .padding()
    //                    .foregroundColor(Color.white)
    //                    .background(Color.blue)
    //                    .clipShape(Circle())
    //            }
    //            
    //        }
    //        .padding()
    //        .background(Color.blue.opacity(0.1))
    //    }
    //}
    //
    //func save() {
    //    guard !input.isEmpty else { return }
    //    notes.append(input)
    //    input = ""
    //    textFieldIsFocused = false 
    //}
    
    // MARK: - App completo usando componentizacao
    //@State var notes: [String] = []
    //@State var input: String = ""
    //@FocusState var textFieldEnabled: Bool
    //
    //var body: some View {
    //    VStack(alignment: .trailing, spacing: 0) {
    //        notesList()
    //        inputView()
    //    }
    //}
    //
    //// Notes List
    //func notesList() -> some View {
    //    ScrollView {
    //        VStack(alignment: .trailing) {
    //            ForEach(notes, id: \.self) { note in
    //                HStack {
    //                    Text(note)
    //                        .padding()
    //                        .foregroundColor(.white)
    //                        .background(.blue.opacity(0.75))
    //                        .cornerRadius(10)
    //                }
    //                .padding(.horizontal)
    //            }
    //        }
    //    }
    //}
    //
    //
    //// Input View
    //func inputView() -> some View {
    //    HStack(spacing: 20) { 
    //        customTextField()
    //        saveButton()
    //    }
    //    .padding()
    //    .background(Color.blue.opacity(0.1))
    //}
    //
    //func customTextField() -> some View {
    //    VStack {
    //        TextField(
    //            "Insira uma anotação curta", 
    //            text: $input
    //        )
    //        .focused($textFieldEnabled)
    //        
    //        Divider()
    //            .frame(height: 1.5)
    //            .background(Color.blue)
    //    }
    //}
    //
    //func saveButton() -> some View {
    //    Button(action: save) { 
    //        Image(systemName: "doc.fill.badge.plus")
    //            .padding()
    //            .foregroundColor(.white)
    //            .background(.blue)
    //            .clipShape(Circle())
    //    }
    //}
    //
    //func save() {
    //    if !input.isEmpty {
    //        notes.append(input) 
    //        input = ""
    //        textFieldEnabled = false
    //    }
    //}
    
    // MARK: - App completo usando outras Views como Componentes
    //@State var notes: [String] = []
    //@State var input: String = ""
    //
    //var body: some View {
    //    VStack(alignment: .trailing, spacing: 0) {
    //        NotesListView(notes: $notes)
    //        InputView(input: $input, saveHandler: save)
    //    }
    //}
    //
    //func save() {
    //    if !input.isEmpty {
    //        notes.append(input) 
    //        input = ""
    //    }
    //}
    
    // MARK: - Usando ViewModel 
    @ObservedObject var viewModel = ViewModel()
    
    var body: some View {
        VStack(alignment: .trailing, spacing: 0) {
            NotesListView(notes: $viewModel.notes)
            InputView(
                input: $viewModel.input, 
                saveHandler: viewModel.save
            )
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
