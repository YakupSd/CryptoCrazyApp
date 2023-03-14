//
//  CryptoViewModel.swift
//  CryptoCrazyApp
//
//  Created by Yakup Suda on 14.03.2023.
//

import Foundation

struct CryptoListViewModel {
    let cryptoCurrencyList : [CryptoCurrency]
    
    func numberOfRowsInSection() -> Int {
        return self.cryptoCurrencyList.count
    }
    
    func cryptoAtIndex(_ index: Int) -> CryptoViewModel {
        let crypto = self.cryptoCurrencyList[index]
        return CryptoViewModel(cryproCurrency: crypto)
    }
}

extension String {
    func printMyName(){
        print("Yakup Suda")
    }
}
/*
extension String {
    func printMyName(){
        print("Yakup Suda")
    }
}

extension CryptoListViewModel {
    
    func numberOfRowsInSection() -> Int {
        return self.cryptoCurrencyList.count
    }
    
    func cryptoAtIndex(_ index: Int) -> CryptoViewModel {
        let crypto = self.cryptoCurrencyList[index]
        return CryptoViewModel(cryproCurrency: crypto)
    }
}
 */

struct CryptoViewModel {
    let cryproCurrency : CryptoCurrency
    var name : String {
        return self.cryproCurrency.currency
    }
    var price : String{
        return self.cryproCurrency.price
    }
}

