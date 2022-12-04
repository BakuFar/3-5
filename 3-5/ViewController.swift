//
//  ViewController.swift
//  3-5
//
//  Created by Фархат Сталбек уулу on 1/12/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var imageCollectionView: UICollectionView!
    
    var floatingButton = UIButton()
    var itemCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let layout = UICollectionViewFlowLayout()
        imageCollectionView.collectionViewLayout = layout
        layout.minimumLineSpacing = 0
        layout.minimumInteritemSpacing = 0
        
        floatingButton.setTitle("Корзина: \(itemCount) ", for: .normal)
        floatingButton.backgroundColor = .red
        floatingButton.layer.cornerRadius = 20
        
        view.addSubview(floatingButton)
       
        floatingButton.translatesAutoresizingMaskIntoConstraints = false
        floatingButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        floatingButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50).isActive = true
        floatingButton.heightAnchor.constraint(equalToConstant: 80).isActive = true
        floatingButton.widthAnchor.constraint(equalToConstant: 300).isActive = true
        
    }
}

var item: [Item] = [Item(itemImage: "folder", itemName: "folder", itemPrice: 300, itemPriceCurrency: "KGS"),Item(itemImage: "opticaldiscdrive", itemName: "opticaldiscdrive", itemPrice: 4000, itemPriceCurrency: "KGS")]

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return item.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! ImageCell
        cell.imageView.image = UIImage(systemName: item[indexPath.row].itemImage)
        cell.itemNameLabel.text = item[indexPath.row].itemName
        cell.itemPriceLabel.text = String(item[indexPath.row].itemPrice)
        cell.currencyLabel.text = item[indexPath.row].itemPriceCurrency
        cell.backgroundColor = .lightGray
        return cell
    }
    
    
}

extension ViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width / 2, height: (view.frame.width / 2) * 1.3)
    }
}

