//
//  WebService.swift
//  CryptoCrazyApp
//
//  Created by Yakup Suda on 14.03.2023.
//

import Foundation

class webService {
    //fonksiyon tamamlandıktan sonra çağrılan ve argüman yolladğımız bir fonksiyon = @escaping
    func downloadsCurrency(url : URL, completion: @escaping ([CryptoCurrency]?) -> ()) {
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print(error.localizedDescription)
                completion(nil)
            }else {
                if let data = data {
                    //json formatındaki bir veriyi işlememize yardımcı olur
                    let cryptoList = try? JSONDecoder().decode([CryptoCurrency].self, from: data)
                    
                    
                    if let cryptoList = cryptoList {
                        completion(cryptoList)
                    }
                    
                }
            }
        }.resume()
    }
    
}
