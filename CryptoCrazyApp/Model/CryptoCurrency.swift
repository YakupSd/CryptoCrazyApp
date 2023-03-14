//
//  CryptoCurrency.swift
//  CryptoCrazyApp
//
//  Created by Yakup Suda on 14.03.2023.
//

import Foundation
/*
 Encode Nedir?
 Çoğu iOS uygulamasında verileri kaydetmemiz ve ağ üzerinden göndermemiz gerekir. Ancak bunu yapmadan önce, verileri “encoding” veya “serialization” adı verilen bir işlemle uygun bir formata dönüştürmeniz gerekir.
 
 Decode Nedir?
 Ayrıca uygulamamızda kullanmadan önce ağ üzerinden aldığımız verileri Swift kodumuzda kullanılabilir bir hale dönüştürmeniz gerekir. Bu ters işlem, “decoding” veya “deserialization” olarak adlandırılır.
 
 Biz bu sınıfta “Encodable” ve “Decodable” işlemlerini beraber yapacağımız için “Codable” protokolünü direkt uyguladık. Ancak“Codable” yerine “Encodable & Decodable” şeklinde de tanımlayabiliriz.
 */

struct CryptoCurrency : Decodable{ //çektiğimiz verileri işlemek için Decodable
    //buradaki değişken ismi ile api daki değişken ismi aynı olmak zorunda
    let currency: String
    let price: String
}

