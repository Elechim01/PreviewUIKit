//
//  CustomCollection.swift
//  
//
//  Created by Michele Manniello on 24/05/23.
//

import SwiftUI
import UIKit

@available(iOS 13.0, *)
struct PreviewCollectionInternal: UIViewRepresentable {
    
    let cellRegister: UICollectionViewCell.Type
    var collection: (UICollectionViewCell) -> UICollectionViewCell
    
     public func makeUIView(context: Context) -> UICollectionView {
        
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
        collectionView.register(cellRegister.self, forCellWithReuseIdentifier: "myCell")
        collectionView.dataSource = context.coordinator
        return collectionView
    }
    
   public func updateUIView(_ uiView: UICollectionView, context: Context) {
    }
    
   public typealias UIViewType = UICollectionView
    
   public func makeCoordinator() -> Coordinator {
        Coordinator(collection: collection)
    }
    
    public class Coordinator: NSObject, UICollectionViewDataSource {
        
        var collection: (UICollectionViewCell) -> UICollectionViewCell
        
        init(collection: @escaping (UICollectionViewCell) -> UICollectionViewCell) {
            self.collection = collection
        }
        
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            return CGSize(width: 300, height: 200)
        }
        
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            1
        }
        
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            
             let collectionView = collectionView.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath)
            return collection(collectionView)
        }
    }
}

@available(iOS 13.0, *)
public func PreviewCollection(cellRegister: UICollectionViewCell.Type,collection: @escaping (UICollectionViewCell) -> UICollectionViewCell ) -> AnyView {
    return AnyView(PreviewCollectionInternal(cellRegister: cellRegister, collection: collection))
}
