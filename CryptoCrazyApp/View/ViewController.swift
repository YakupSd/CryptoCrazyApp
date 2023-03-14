//
//  ViewController.swift
//  CryptoCrazyApp
//
//  Created by Yakup Suda on 14.03.2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    
    @IBOutlet weak var tableView: UITableView!
    private var cryptoListViewModel : CryptoListViewModel!
    var colorArray = [UIColor]()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.delegate = self
        tableView.dataSource = self
        getData()
        self.colorArray = [
            UIColor(red: 100/255, green: 150/255, blue: 189/255, alpha: 1.0),
            UIColor(red: 110/255, green: 150/255, blue: 189/255, alpha: 1.0),
            UIColor(red: 125/255, green: 150/255, blue: 189/255, alpha: 1.0),
            UIColor(red: 130/255, green: 150/255, blue: 189/255, alpha: 1.0),
            UIColor(red: 135/255, green: 150/255, blue: 189/255, alpha: 1.0),
            UIColor(red: 140/255, green: 150/255, blue: 189/255, alpha: 1.0),
            UIColor(red: 145/255, green: 150/255, blue: 189/255, alpha: 1.0),
            UIColor(red: 150/255, green: 150/255, blue: 189/255, alpha: 1.0),
        ]
        
        let myString = "asdasdasd"
        myString.printMyName()
        
    }
    func getData(){
        
        let url = URL(string: "https://raw.githubusercontent.com/atilsamancioglu/K21-JSONDataSet/master/crypto.json")!
        webService().downloadsCurrency(url: url) { cryptos in
            if let cryptos = cryptos {
                self.cryptoListViewModel = CryptoListViewModel(cryptoCurrencyList: cryptos)
                
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            }
        }
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.cryptoListViewModel == nil ? 0 : self.cryptoListViewModel.numberOfRowsInSection()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MainCell", for: indexPath) as! CryptoTableViewCell
        
        let cryptoViewModel = self.cryptoListViewModel.cryptoAtIndex(indexPath.row)
        cell.priceLabel.text = cryptoViewModel.price
        cell.nameLabel.text = cryptoViewModel.name
        cell.backgroundColor = self.colorArray[indexPath.row % 7]
        return cell
    }
    
    

}

