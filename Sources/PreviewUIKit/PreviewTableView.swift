//
//  CustomTableView.swift
//  
//
//  Created by Michele Manniello on 24/05/23.
//

import UIKit
import SwiftUI

@available(iOS 13.0, *)
struct PreviewTableViewInternal: UIViewRepresentable {
    
    var cellToRegister: UITableViewCell.Type
    var numberOfRow: Int
    var createCell: (IndexPath) -> UITableViewCell
    
    func makeCoordinator() -> Coordinator {
        
        Coordinator(numberOfRow: numberOfRow, cell: createCell)
    }
    
    func makeUIView(context: Context) -> UITableView {
        let tableView = UITableView(frame: .zero, style: .plain)
        tableView.register(cellToRegister.self, forCellReuseIdentifier: "cell")
        tableView.dataSource = context.coordinator
        return tableView
    }
    
    func updateUIView(_ uiView: UITableView, context: Context) {
    }
    
    typealias UIViewType = UITableView
    
    class Coordinator: NSObject, UITableViewDataSource {
        
        var numberOfRow: Int
        var cella: (IndexPath) -> UITableViewCell
       
        init(numberOfRow: Int, cell: @escaping (IndexPath) -> UITableViewCell) {
            self.numberOfRow = numberOfRow
            self.cella = cell
        }
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            numberOfRow
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            return cella(indexPath)
        }
    }
}

@available(iOS 13.0,*)
public func PreviewTableView(cellToRegister: UITableViewCell.Type, numberOfRow: Int, createCell: @escaping(IndexPath) -> UITableViewCell) -> AnyView {
    return AnyView(PreviewTableViewInternal(cellToRegister: cellToRegister, numberOfRow: numberOfRow, createCell: createCell))
}

